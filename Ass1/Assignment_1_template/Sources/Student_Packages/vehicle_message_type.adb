package body Vehicle_Message_Type is

   -----------------
   -- Add_Vehicle --
   -----------------

   procedure Add_Vehicle (VS : Integer; Vehicles : Known_Vehicles_Type; Local : in out Inter_Vehicle_Messages) is
      Index : Integer := 1;
   begin
      if VS > 0 then -- if Vehicle size = 0 then do not modify the Storage
         --  Generated stub: replace with real body!
         for v of Vehicles loop
            if Index = 1 then -- the first vehicle is the sender, thus we need to update its LastMetTime
               if IsVehicleIn (Vehicle => v, Local   => Local) then
                  for vl of Local.Known_Vehicles loop
                     if v.Vehicle_ID = vl.Vehicle_ID then
                        vl.LastMetTime := Clock;
                        exit;
                     end if;
                  end loop;
               else
                  Local.Vehicles_Size := Local.Vehicles_Size + 1;
                  Local.Known_Vehicles (Local.Vehicles_Size) := v;
               end if;
            else
               declare
                  Flag : Boolean := True;
               begin
                  for vl of Local.Known_Vehicles loop
                     if v.Vehicle_ID = vl.Vehicle_ID then
                        Flag := False;
                        if vl.LastMetTime < v.LastMetTime then
                           vl.LastMetTime := v.LastMetTime;
                        end if;
                        exit;
                     end if;
                  end loop;
                  if Flag then -- if there is no vehicle found in the local storage, we add it
                     Local.Vehicles_Size := Local.Vehicles_Size + 1;
                     Local.Known_Vehicles (Local.Vehicles_Size) := v;
                  end if;
               end;
            end if;
            exit when Index = VS;
            Index := Index + 1;
         end loop;
      end if;
   end Add_Vehicle;

   ---------------
   -- Add_Globe --
   ---------------

   procedure Add_Globe (GS : Integer; Globes : Known_Globes_Type; Local : in out Inter_Vehicle_Messages) is
      Index : Integer := 1;
   begin
      if GS > 0 then -- if Globe_Size = 0 then do not update the Globe..
         for g of Globes loop
            Local.Globes_Size := Local.Globes_Size + 1;
            Local.Known_Globes (Local.Globes_Size) := g;
         -- only the Globe will have the overflow issue, in that case we need to clean up the earlier data in the array
            if Local.Globes_Size = 100 then
               Local.Globes_Size := 6;
               Local.Known_Globes := RefreshGlobes (Globe => Local.Known_Globes);
            end if;
            exit when Index = GS;
            Index := Index + 1;
         end loop;
      end if;

   end Add_Globe;

   --------------------
   -- Update_Message --
   --------------------
   -- In this Update_Message, Both Add_Globe and Add_Vehicle have automated Refresh mechanism.

   procedure Update_Message (Remote : Inter_Vehicle_Messages; Local : in out Inter_Vehicle_Messages) is
   begin
      Add_Globe (GS     => Remote.Globes_Size,
                Globes => Remote.Known_Globes,
                Local  => Local);
      Add_Vehicle (VS       => Remote.Vehicles_Size,
                  Vehicles => Remote.Known_Vehicles,
                   Local    => Local);
      Local.Last_Edit_Time := Clock; -- update the last edit time

   end Update_Message;

   ------------------
   -- Init_Vehicle --
   ------------------

   function Init_Vehicle (Vehicle_ID : Positive) return Known_Vehicles_Type is
      TheTime : constant Time := Clock;
      Vehicles : Known_Vehicles_Type;
   begin
      --  Generated stub: replace with real body!
      Vehicles (1).Vehicle_ID := Vehicle_ID;
      Vehicles (1).LastMetTime := TheTime;
      return Vehicles;
   end Init_Vehicle;

   ----------------
   -- Init_Globe --
   ----------------

   function Update_Globe (Globe : Energy_Globes) return Known_Globes_Type is
      TheTime : constant Time := Clock;
      Globes : Known_Globes_Type;
      Index : Integer := 1;

   begin
      --  Generated stub: replace with real body!
      for g of Globe loop
         Globes (Index).LastUpdateTime := TheTime;
         Globes (Index).Globe_Velocity := g.Velocity;
         Globes (Index).Globe_Position := g.Position;
         Index := Index + 1;
      end loop;
      return Globes;
   end Update_Globe;

   --------------------------
   -- Read_Vehicles_Record --
   --------------------------

   function Read_Vehicles_Record
     (Records : Inter_Vehicle_Messages)
      return Known_Vehicles_Type
   is
   begin
      --  Generated stub: replace with real body!
      return Records.Known_Vehicles;
   end Read_Vehicles_Record;

   ------------------------
   -- Read_Globes_Record --
   ------------------------

   function Read_Globes_Record
     (Records : Inter_Vehicle_Messages)
      return Known_Globes_Type
   is
   begin
      --  Generated stub: replace with real body!
      return Records.Known_Globes;
   end Read_Globes_Record;

   ------------------------
   -- Read_Vehicles_Size --
   ------------------------

   function Read_Vehicles_Size
     (Records : Inter_Vehicle_Messages)
      return Integer
   is
   begin
      --  Generated stub: replace with real body!
      return Records.Vehicles_Size;
   end Read_Vehicles_Size;

   ----------------------
   -- Read_Globes_Size --
   ----------------------

   function Read_Globes_Size
     (Records : Inter_Vehicle_Messages)
      return Integer
   is
   begin
      --  Generated stub: replace with real body!

      return Records.Globes_Size;
   end Read_Globes_Size;

   function IsVehicleIn (Vehicle : Vehicle_Info_Record; Local : Inter_Vehicle_Messages) return Boolean is
   begin
      --  Generated stub: replace with real body!
      for v of Local.Known_Vehicles loop
         if v.Vehicle_ID = Vehicle.Vehicle_ID then
            return True;
         end if;
      end loop;
      return False;
   end IsVehicleIn;

   function RefreshGlobes (Globe : Known_Globes_Type) return Known_Globes_Type is
      Temp : array (1 .. 6) of Globe_Info_Record;
      Current_Size : Integer := 0;
      Output : Known_Globes_Type;
   begin
      -- this function will return length 6 array
      for g of reverse Globe loop
         if Current_Size < 6 then
            Current_Size := Current_Size + 1;
            Temp (7 - Current_Size) := g; -- reversely store too
         elsif Current_Size = 6 then
            if (for some i in 1 .. 6 => Temp (i).LastUpdateTime < g.LastUpdateTime) then
               Temp (1 .. 5) := Temp (2 .. 6);
               Temp (6) := g;
            end if;
         end if;
      end loop;

      for i in 1 .. 6 loop
         Output (i) := Temp (i);
      end loop;
      return Output;
   end RefreshGlobes;

end Vehicle_Message_Type;
