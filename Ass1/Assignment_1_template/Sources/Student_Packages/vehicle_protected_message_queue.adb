pragma Ada_2012;
package body Vehicle_Protected_Message_Queue is

   ---------------------
   -- Protected_Queue --
   ---------------------

   protected body Protected_Queue is

      -------------
      -- Enqueue --
      -------------

      entry Enqueue (Item : Inter_Vehicle_Messages) when not Is_Full is
      begin
         Queue.Elements (Queue.Free) := Item;
         Queue.Free := Queue_Size'Succ (Queue.Free);
         Queue.Is_Empty := False;
      end Enqueue;

      -------------
      -- Dequeue --
      -------------

      entry Dequeue (Item : out Inter_Vehicle_Messages) when Is_Empty is
      begin
         Item := Queue.Elements (Queue.Top);
         Queue.Top := Queue_Size'Succ (Queue.Top);
         Queue.Is_Empty := Queue.Top = Queue.Free;
      end Dequeue;

      ---------------------
      -- Empty_The_Queue --
      ---------------------

      procedure Empty_The_Queue is
      begin
         Queue.Top := Queue_Size'First;
         Queue.Free := Queue_Size'First;
         Queue.Is_Empty := True;
      end Empty_The_Queue;

      --------------
      -- Is_Empty --
      --------------

      function Is_Empty return Boolean is
      begin
         return Queue.Is_Empty;
      end Is_Empty;

      -------------
      -- Is_Full --
      -------------

      function Is_Full return Boolean is
      begin
         return (not Queue.Is_Empty and then Queue.Top = Queue.Free);
      end Is_Full;

   end Protected_Queue;

end Vehicle_Protected_Message_Queue;
