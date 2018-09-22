pragma Initialize_Scalars;
with Vehicle_Message_Type; use Vehicle_Message_Type;
package Vehicle_Protected_Message_Queue is
   type Queue_Size   is mod 10;

   type Queue_Type is limited private;

   protected type Protected_Queue is

      entry Enqueue (Item :     Inter_Vehicle_Messages);
      entry Dequeue (Item : out Inter_Vehicle_Messages);

      procedure Empty_The_Queue;

      function Is_Empty return Boolean;
      function Is_Full  return Boolean;

   private
      Queue : Queue_Type;

   end Protected_Queue;

private
   type List is array (Queue_Size) of Inter_Vehicle_Messages;
   type Queue_Type is record
      Top, Free : Queue_Size   := Queue_Size'First;
      Is_Empty  : Boolean := True;
      Elements  : List;
   end record;

end Vehicle_Protected_Message_Queue;
