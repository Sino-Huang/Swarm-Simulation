pragma Ada_2012;
with Vehicle_Interface; use Vehicle_Interface;
with Real_Type; use Real_Type;
with Swarm_Structures_Base; use Swarm_Structures_Base;
package body Vehicle_Task_Group is

   -------------------------
   -- Receive_And_Enqueue --
   -------------------------

   task body Receive_And_Enqueue is
   begin
      accept Wake_Up (Input : Inter_Vehicle_Messages; Queue : in out Protected_Queue) do
         Queue.Enqueue (Input);
      end Wake_Up;
   end Receive_And_Enqueue;

   ------------------------
   -- Dequeue_And_Update --
   ------------------------

   task body Dequeue_And_Update is
      Temp_Message : Inter_Vehicle_Messages;
   begin
      accept Wake_Up (Queue : in out Protected_Queue; Local_Storage : in out Inter_Vehicle_Messages) do
         Queue.Dequeue (Temp_Message);
         Update_Message (Remote => Temp_Message,
                        Local  => Local_Storage);

      end Wake_Up;
   end Dequeue_And_Update;

   --------------
   -- Movement --
   --------------

   task body Movement is
   begin
      accept ChangeMovement (Behaviour : in out Vehicle_Behaviour_Type; Globe : in Known_Globes_Type; GS : Integer) do
         if Current_Charge < Vehicle_Charges (Real (0.55)) then
            Behaviour := To_Globe; -- if the charge is below 0.55/1, then let the vehichle go back to get charge
         elsif Behaviour = Idle then
            if abs (Vehicle_Charges (Real (1.0)) - Current_Charge) > Vehicle_Charges (Real (0.001)) then
               Behaviour := To_Globe;
            end if;
         elsif Behaviour = Patrol_Out then
            null;
         elsif Behaviour = Patrol_Back then
            null;
         elsif Behaviour = Dying then
            Set_Throttle (T => 0.0);
         elsif Behaviour = To_Globe then
            if abs (Vehicle_Charges (Real (1.0)) - Current_Charge) < Vehicle_Charges (Real (0.001)) then
               Behaviour := Idle;
               Set_Throttle (T => 0.0);
            else

            end if;
         end if;
      end ChangeMovement;
   end Movement;

end Vehicle_Task_Group;
