-- Suggestions for packages which might be useful:
with Real_Type; use Real_Type;
with Vehicle_Protected_Message_Queue; use Vehicle_Protected_Message_Queue;
--  with Ada.Real_Time;
with Ada.Calendar;               use Ada.Calendar;
--  with Ada.Text_IO;                use Ada.Text_IO;
with Exceptions;                 use Exceptions;
--  with Real_Type;                  use Real_Type;
--  with Generic_Sliding_Statistics;
--  with Rotations;                  use Rotations;
with Vectors_3D;                 use Vectors_3D;
with Vehicle_Interface;          use Vehicle_Interface;
with Swarm_Structures;           use Swarm_Structures;
--  with Ada.Text_IO; use Ada.Text_IO;
with GNAT.IO; use GNAT.IO;
with Swarm_Structures_Base; use Swarm_Structures_Base;
with Vehicle_Message_Type; use Vehicle_Message_Type;
with Text_IO;

package body Vehicle_Task_Type is
   type Vehicle_Behaviour_Type is (Idle, Patrol_Out, Patrol_Back, Dying, To_Globe); -- set up several vehicle type
   package Behaviour_Type_IO is new Text_IO.Enumeration_IO (Vehicle_Behaviour_Type);
   use Behaviour_Type_IO;
   protected type Vehicle_Attributes is
      function ReadPosition return Positions;
      function ReadVelocity return Velocities;
      function ReadAccelearation return Accelerations;
      function ReadThrottle return Throttle_T;
      function ReadDestination return Vector_3D;
      function ReadCharge return Vehicle_Charges;
      procedure WritePosition (Val : Positions);
      procedure WriteVelocity (Val : Velocities);
      procedure WriteAccelearation (Val : Accelerations);
      procedure WriteThrottle  (Val : Throttle_T);
      procedure WriteDestination  (Val : Vector_3D);
      procedure WriteCharge (Val : Vehicle_Charges);

   private
      Vehicle_Position_Val : Positions;
      Vehicle_Velocity_Val : Velocities;
      Vehicle_Acceleartion_Val : Accelerations;
      Vehicle_Throttle_Val : Throttle_T;
      Vehicle_Destination_Val : Vector_3D;
      Vehicle_Charge_Val : Vehicle_Charges;

   end Vehicle_Attributes;

   protected body Vehicle_Attributes is
      function ReadPosition return Positions is (Vehicle_Position_Val);
      function ReadVelocity return Velocities is (Vehicle_Velocity_Val);
      function ReadAccelearation return Accelerations is (Vehicle_Acceleartion_Val);
      function ReadThrottle return Throttle_T is (Vehicle_Throttle_Val);
      function ReadDestination return Vector_3D is (Vehicle_Destination_Val);
      function ReadCharge return Vehicle_Charges is (Vehicle_Charge_Val);
      procedure WritePosition (Val : Positions) is
      begin
         Vehicle_Position_Val := Val;
      end WritePosition;

      procedure WriteVelocity (Val : Velocities) is
      begin
         Vehicle_Velocity_Val := Val;
      end WriteVelocity;

      procedure WriteAccelearation (Val : Accelerations) is
      begin
         Vehicle_Acceleartion_Val := Val;
      end WriteAccelearation;
      procedure WriteThrottle  (Val : Throttle_T) is
      begin
         Vehicle_Throttle_Val := Val;
      end WriteThrottle;

      procedure WriteDestination  (Val : Vector_3D) is
      begin
         Vehicle_Destination_Val := Val;
      end WriteDestination;

      procedure WriteCharge (Val : Vehicle_Charges) is
      begin
         Vehicle_Charge_Val := Val;
      end WriteCharge;

   end Vehicle_Attributes;

   task body Vehicle_Task is

      Vehicle_No : Positive; -- pragma Unreferenced (Vehicle_No);
      -- You will want to take the pragma out, once you use the "Vehicle_No"
      Local_Storage : Inter_Vehicle_Messages; -- Store the communication content
      Local_Message_Queue : Protected_Queue;
      Vehicle_Behaviour : Vehicle_Behaviour_Type := Idle; -- state and init the vehicle behaviour
      Whether_Change_Movement : Boolean := False;
      Pioneer : Boolean := False; -- Indicate he finds the globe by himself
      Vehicle_Attribute : Vehicle_Attributes;

      task type ChangeMovement is
         entry Idle_Movement;
         entry Patrol_Out_Movement;
         entry Patrol_Back_Movement;
         entry Dying_Movement;
         entry To_Globe_Movement;
      end ChangeMovement;

      task body ChangeMovement is

      begin
         loop
            select
               when True => accept Idle_Movement  do
                     if abs (Vehicle_Charges (Real (1.0)) - Vehicle_Attribute.ReadCharge) > Vehicle_Charges (Real (0.15)) then -- switch to find globe state
                        Vehicle_Behaviour := To_Globe;
                     end if;
               end Idle_Movement;
            or
               when True => accept Patrol_Out_Movement  do

                     if Vehicle_Attribute.ReadCharge < Vehicle_Charges (Real (0.55)) then
                        Vehicle_Behaviour := Patrol_Back;
                     end if;

               end Patrol_Out_Movement;
            or
               when True => accept Patrol_Back_Movement  do
                     if abs (Vehicle_Charges (Real (1.0)) - Vehicle_Attribute.ReadCharge) < Vehicle_Charges (Real (0.001)) then
                        Vehicle_Behaviour := Patrol_Out;
                     else
                        Vehicle_Attribute.WriteThrottle (0.8);
                        Vehicle_Attribute.WriteDestination (Local_Storage.Known_Globes (Local_Storage.Globes_Size).Globe_Position +
                                                              Real (Long_Float (Clock - Local_Storage.Known_Globes (Local_Storage.Globes_Size).LastUpdateTime))
                                                            * Local_Storage.Known_Globes (Local_Storage.Globes_Size).Globe_Velocity);
                        Whether_Change_Movement := True;
                     end if;

               end Patrol_Back_Movement;
            or
               when True => accept Dying_Movement  do
                     Vehicle_Attribute.WriteThrottle (1.0);
                     Vehicle_Attribute.WriteDestination (Local_Storage.Known_Globes (1).Globe_Position +
                                                           Real (Long_Float (Clock - Local_Storage.Known_Globes (1).LastUpdateTime))
                                                         * Local_Storage.Known_Globes (1).Globe_Velocity);
                     Whether_Change_Movement := True;
               end Dying_Movement;
            or
               accept To_Globe_Movement  do

                  if abs (Vehicle_Charges (Real (1.0)) - Vehicle_Attribute.ReadCharge) < Vehicle_Charges (Real (0.001)) then -- means it reaches the globe
                     if Pioneer then
                        Vehicle_Behaviour := Patrol_Out;
                     else
                        Vehicle_Behaviour := Idle;
                        Vehicle_Attribute.WriteThrottle (0.0);
                        Whether_Change_Movement := True;
                     end if;

                  else
                     Vehicle_Attribute.WriteThrottle (0.5); -- do not require high speed
                     Vehicle_Attribute.WriteDestination (Local_Storage.Known_Globes (Local_Storage.Globes_Size).Globe_Position +
                                                           Real (Long_Float (Clock - Local_Storage.Known_Globes (Local_Storage.Globes_Size).LastUpdateTime))
                                                         * Local_Storage.Known_Globes (Local_Storage.Globes_Size).Globe_Velocity);
                     Whether_Change_Movement := True;
                  end if;
                     -- Whether_Change_Movement := False; -- Close the guard
               end To_Globe_Movement;
            end select;

         end loop;
      end ChangeMovement;

      Movement_Task : ChangeMovement;
 ----------------------------
 -- Dequeue and update task--
 ----------------------------
      task type Dequeue_And_Update;
      task body Dequeue_And_Update is
      begin
         loop
            declare
               Temp_Message : Inter_Vehicle_Messages;
               -- Movement_Task : constant ChangeMovement_Pr := new ChangeMovement;
            begin
               Local_Message_Queue.Dequeue (Temp_Message);
               Update_Message (Remote => Temp_Message,
                               Local  => Local_Storage);
               if Local_Storage.Globes_Size > 0 then
                  if Vehicle_Behaviour = Idle then
                     Movement_Task.Idle_Movement;
                  elsif Vehicle_Behaviour = Patrol_Out then
                     Movement_Task.Patrol_Out_Movement;
                  elsif Vehicle_Behaviour = Patrol_Back then
                     Movement_Task.Patrol_Back_Movement;
                  elsif Vehicle_Behaviour = Dying then
                     Movement_Task.Dying_Movement;
                  elsif Vehicle_Behaviour = To_Globe then
                     Movement_Task.To_Globe_Movement;
                  end if;
               end if;
            end;
         end loop;
      end Dequeue_And_Update;

      Dequeue_Task : Dequeue_And_Update; -- set Dequeue and update as another concurrent task so that it wont block the sending and receiving action

   begin

      -- You need to react to this call and provide your task_id.
      -- You can e.g. employ the assigned vehicle number (Vehicle_No)
      -- in communications with other vehicles.

      accept Identify (Set_Vehicle_No : Positive; Local_Task_Id : out Task_Id) do
         declare
         begin
            Vehicle_No     := Set_Vehicle_No;
            Local_Task_Id  := Current_Task;
            -- initiate Local_Storage in this section
            Local_Storage.Known_Vehicles := Init_Vehicle (Vehicle_ID => Vehicle_No);
            -- init queue
            Local_Message_Queue.Empty_The_Queue;

         end;
      end Identify;

      -- Replace the rest of this task with your own code.
      -- Maybe synchronizing on an external event clock like "Wait_For_Next_Physics_Update",
      -- yet you can synchronize on e.g. the real-time clock as well.

      -- Without control this vehicle will go for its natural swarming instinct.

      select

         Flight_Termination.Stop;

      then abort

         Outer_task_loop : loop

            Wait_For_Next_Physics_Update;

            -- Your vehicle should respond to the world here: sense, listen, talk, act?

            -- movement settle
            if Whether_Change_Movement then
               Set_Throttle (Vehicle_Attribute.ReadThrottle);
               Set_Destination (Vehicle_Attribute.ReadDestination);
               Whether_Change_Movement := False; -- close the guard
            end if;

            -- Update current Attributes
            Vehicle_Attribute.WriteCharge (Val => Current_Charge);
            Vehicle_Attribute.WriteVelocity (Velocity);
            Vehicle_Attribute.WritePosition (Position);
            Vehicle_Attribute.WriteAccelearation (Acceleration);

            declare
               Temp_Receive : Inter_Vehicle_Messages;
               Globe : constant Energy_Globes := Energy_Globes_Around; -- everytime check globes
            begin
               Put_Line (Positive'Image (Vehicle_No) & "Know " & Integer'Image (Local_Storage.Vehicles_Size));

               if Globe'Length > 0 then
                  if Local_Storage.Globes_Size = 0 then
                     Put_Line ("Pioneer " & Positive'Image (Vehicle_No) & " Find Globe");
                     Pioneer := True;
                  end if;
                  Temp_Receive.Globes_Size := Globe'Length;
                  Temp_Receive.Vehicles_Size := 0;
                  Temp_Receive.Known_Globes := Update_Globe (Globe);
                  Local_Message_Queue.Enqueue (Item => Temp_Receive);

               end if;
               Send (Message => Local_Storage); -- send message

               if Messages_Waiting then -- receive message
                  Receive (Temp_Receive);
                  select
                     Local_Message_Queue.Enqueue (Item => Temp_Receive); -- Enqueue the message in select block so we do not block the loop
                  else
                     null;
                  end select;

               end if;
            end;

         end loop Outer_task_loop;
      end select;

   exception
      when E : others => Show_Exception (E);

   end Vehicle_Task;

end Vehicle_Task_Type;
