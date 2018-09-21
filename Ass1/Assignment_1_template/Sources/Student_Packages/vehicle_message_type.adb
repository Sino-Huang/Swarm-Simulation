with Ada.Calendar;          use Ada.Calendar;
package body Vehicle_Message_Type is

   -----------------
   -- Add_Vehicle --
   -----------------

   procedure Add_Vehicle (VS : Integer; Vehicles : Known_Vehicles_Type; Local : access Inter_Vehicle_Messages) is
      Index : Integer := 1;
   begin
      --  Generated stub: replace with real body!
      for v of Vehicles loop
         if not IsVehicleIn (Vehicle => v, Local => Local) then
            Local.all.Vehicles_Size := Local.all.Vehicles_Size + 1;
            Local.all.Known_Vehicles (Local.all.Vehicles_Size) := v;
         end if;
         exit when Index = VS;
         Index := Index + 1;
      end loop;
   end Add_Vehicle;

   ---------------
   -- Add_Globe --
   ---------------

   procedure Add_Globe (GS : Integer; Globes : Known_Globes_Type; Local : access Inter_Vehicle_Messages) is
      Index : Integer := 1;
   begin
      --  Generated stub: replace with real body!
      for g of Globes loop
         Local.all.Globes_Size := Local.all.Globes_Size + 1;
         Local.all.Known_Globes (Local.all.Globes_Size) := g;
         exit when Index = GS;
         Index := Index + 1;
      end loop;
   end Add_Globe;

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

   function Init_Globe (Globe : Energy_Globes) return Known_Globes_Type is
      TheTime : constant Time := Clock;
      Globes : Known_Globes_Type;

   begin
      --  Generated stub: replace with real body!
      Globes (1).Globe := Globe;
      Globes (1).LastUpdateTime := TheTime;
      return Globes;
   end Init_Globe;

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

   function IsVehicleIn (Vehicle : Vehicle_Info_Record; Local : access Inter_Vehicle_Messages) return Boolean is
   begin
      --  Generated stub: replace with real body!
      for v of Local.all.Known_Vehicles loop
         if v.Vehicle_ID = Vehicle.Vehicle_ID then
            return True;
         end if;
      end loop;
      return False;
   end IsVehicleIn;

end Vehicle_Message_Type;
