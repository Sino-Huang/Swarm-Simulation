-- Suggestions for packages which might be useful:
with Shared_Message_Structure; use Shared_Message_Structure;
with Swarm_Structures_Base; use Swarm_Structures_Base;
--  with Ada.Real_Time;         use Ada.Real_Time;
--  with Vectors_3D;            use Vectors_3D;

package Vehicle_Message_Type is

   Index_Max : constant Integer := 100;

   -- Replace this record definition by what your vehicles need to communicate.
   type Known_Vehicles_Type is array (Integer range 1 .. Index_Max) of Vehicle_Info_Record;
   type Known_Globes_Type is array (Integer range 1 .. Index_Max) of Globe_Info_Record;
   type Inter_Vehicle_Messages is record
         Globes_Size : Integer;
         Vehicles_Size : Integer;
         Known_Globes : Known_Globes_Type;
         Known_Vehicles : Known_Vehicles_Type;
   end record;

   procedure Add_Vehicle (VS : Integer; Vehicles : Known_Vehicles_Type; Local : access Inter_Vehicle_Messages);
   procedure Add_Globe (GS : Integer; Globes : Known_Globes_Type; Local : access Inter_Vehicle_Messages);
   function Init_Vehicle (Vehicle_ID : Positive) return Known_Vehicles_Type;
   function Init_Globe (Globe : Energy_Globes) return Known_Globes_Type;
   function Read_Vehicles_Record (Records : Inter_Vehicle_Messages) return Known_Vehicles_Type;
   function Read_Globes_Record (Records : Inter_Vehicle_Messages) return Known_Globes_Type;
   function Read_Vehicles_Size (Records : Inter_Vehicle_Messages) return Integer;
   function Read_Globes_Size (Records : Inter_Vehicle_Messages) return Integer;
   function IsVehicleIn (Vehicle : Vehicle_Info_Record; Local : access Inter_Vehicle_Messages) return Boolean;

end Vehicle_Message_Type;
