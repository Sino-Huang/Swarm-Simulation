-- Suggestions for packages which might be useful:

--  with Ada.Real_Time;
with Ada.Calendar;               use Ada.Calendar;
--  with Ada.Text_IO;                use Ada.Text_IO;
with Exceptions;                 use Exceptions;
--  with Real_Type;                  use Real_Type;
--  with Generic_Sliding_Statistics;
--  with Rotations;                  use Rotations;
--  with Vectors_3D;                 use Vectors_3D;
with Vehicle_Interface;          use Vehicle_Interface;
with Swarm_Structures;           use Swarm_Structures;
--  with Ada.Text_IO; use Ada.Text_IO;
with GNAT.IO; use GNAT.IO;
with Swarm_Structures_Base; use Swarm_Structures_Base;
with Vehicle_Message_Type; use Vehicle_Message_Type;
with Vehicle_Behaviour; use Vehicle_Behaviour;

package body Vehicle_Task_Type is

   task body Vehicle_Task is

      Vehicle_No : Positive; -- pragma Unreferenced (Vehicle_No);
      -- You will want to take the pragma out, once you use the "Vehicle_No"
      Local_Storage : Local_Vehicle_Messages; -- Store the communication content
      Vehicle_Behaviour : Vehicle_Behaviour_Type := Idle; -- state and init the vehicle behaviour
      Start_Up_Time : constant Time := Clock;

      -- define receive task

      -- define send task


   begin

      -- You need to react to this call and provide your task_id.
      -- You can e.g. employ the assigned vehicle number (Vehicle_No)
      -- in communications with other vehicles.

      accept Identify (Set_Vehicle_No : Positive; Local_Task_Id : out Task_Id) do
         declare
            Init_Vehicle_Info : Known_Vehicles_Type;
         begin
            Vehicle_No     := Set_Vehicle_No;
            Local_Task_Id  := Current_Task;
            -- initiate Local_Storage in this section
            Init_Vehicle_Info (1).Vehicle_ID := Vehicle_No;
            Init_Vehicle_Info(1).LastMetTime := Start_Up_Time;
            Local_Storage.Init_Vehicle (Vehicle => Init_Vehicle_Info);

            declare
            -- start send task using access task type to extend the life of the task

            -- start receive task
            begin
               null;
            end;
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

         end loop Outer_task_loop;
      end select;

   exception
      when E : others => Show_Exception (E);

   end Vehicle_Task;

end Vehicle_Task_Type;
