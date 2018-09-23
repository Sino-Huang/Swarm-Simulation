-- Suggestions for packages which might be useful:
with Shared_Message_Structure; use Shared_Message_Structure;
with Swarm_Structures_Base; use Swarm_Structures_Base;
with Ada.Calendar; use Ada.Calendar;
--  with Ada.Real_Time;         use Ada.Real_Time;
--  with Vectors_3D;            use Vectors_3D;

package Vehicle_Message_Type is

   Index_Max : constant Integer := 100;

   -- Replace this record definition by what your vehicles need to communicate.
   type Known_Vehicles_Type is array (Integer range 1 .. Index_Max) of Vehicle_Info_Record;
   type Known_Globes_Type is array (Integer range 1 .. Index_Max) of Globe_Info_Record;
   type Inter_Vehicle_Messages is record
         Globes_Size : Integer := 0;
         Vehicles_Size : Integer := 1;
         Known_Globes : Known_Globes_Type;
      Known_Vehicles : Known_Vehicles_Type;
      Last_Edit_Time : Time := Clock;
   end record;

   type Inter_Vehicle_Messages_Pr is access all Inter_Vehicle_Messages;

   procedure Update_Message (Remote : Inter_Vehicle_Messages; Local : in out Inter_Vehicle_Messages);
   function Init_Vehicle (Vehicle_ID : Positive) return Known_Vehicles_Type;
   function Update_Globe (Globe : Energy_Globes) return Known_Globes_Type;
   procedure Add_Globe (GS : Integer; Globes : Known_Globes_Type; Local : in out Inter_Vehicle_Messages);

private
   procedure Add_Vehicle (VS : Integer; Vehicles : Known_Vehicles_Type; Local : in out Inter_Vehicle_Messages);
   function Read_Vehicles_Record (Records : Inter_Vehicle_Messages) return Known_Vehicles_Type;
   function Read_Globes_Record (Records : Inter_Vehicle_Messages) return Known_Globes_Type;
   function Read_Vehicles_Size (Records : Inter_Vehicle_Messages) return Integer;
   function Read_Globes_Size (Records : Inter_Vehicle_Messages) return Integer;
   function IsVehicleIn (Vehicle : Vehicle_Info_Record; Local : Inter_Vehicle_Messages) return Boolean;
end Vehicle_Message_Type;
