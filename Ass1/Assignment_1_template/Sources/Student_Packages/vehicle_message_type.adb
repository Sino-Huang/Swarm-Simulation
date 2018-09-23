package body Vehicle_Message_Type is

   -------------------
   -- Local_Storage --
   -------------------

   protected body Local_Storage is

      ----------
      -- Read --
      ----------

      function ReadLocal return Inter_Vehicle_Messages is
      begin
         return Local;
      end ReadLocal;

      function ReadPassing return Inter_Vehicle_Messages is (Passing);


      -----------------
      -- NeedPassing --
      -----------------

      function NeedPassing return Boolean is
      begin
         return PassingFlag;
      end NeedPassing;

      ------------
      -- Change --
      ------------

      procedure Change (Val : Inter_Vehicle_Messages) is
      begin
         if not (Val.Sender_ID = Local.Sender_ID) then
            raise BadChange;
         end if;
         Local := Val;
      end Change;

      ------------------------
      -- Analyze_And_Update --
      ------------------------

      procedure Analyze_And_Update (Val : Inter_Vehicle_Messages) is
      begin
         if Val.Sender_ID = Local.Sender_ID then
            raise BadUpdate;
         end if;
         -- check if it is concensus mode
         if Val.ConcensusFlag then
            null;
         else
            -- normal update
            -- update Vehicles

            null;
         end if;

      end Analyze_And_Update;

      ---------------------
      -- ShutPassingFlag --
      ---------------------

      entry ShutPassingFlag when not PassingFlag is
      begin
         PassingFlag := False;
      end ShutPassingFlag;

   end Local_Storage;

end Vehicle_Message_Type;
