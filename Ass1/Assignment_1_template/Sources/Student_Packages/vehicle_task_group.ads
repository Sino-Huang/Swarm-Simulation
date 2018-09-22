with Vehicle_Message_Type; use Vehicle_Message_Type;
with Vehicle_Protected_Message_Queue; use Vehicle_Protected_Message_Queue;
with Vehicle_Behaviour; use Vehicle_Behaviour;

package Vehicle_Task_Group is

   task type Receive_And_Enqueue is
      entry Wake_Up (Input : Inter_Vehicle_Messages; Queue : in out Protected_Queue);
   end Receive_And_Enqueue;

   task type Dequeue_And_Update is
      entry Wake_Up (Queue : in out Protected_Queue; Local_Storage : in out Inter_Vehicle_Messages);
   end Dequeue_And_Update;

   task type Movement is
      entry ChangeMovement (Behaviour : in out Vehicle_Behaviour_Type; Globe : Known_Globes_Type; GS : Integer);
   end Movement;

end Vehicle_Task_Group;
