-- Suggestions for packages which might be useful:
with Shared_Message_Structure; use Shared_Message_Structure;
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

   protected type Local_Vehicle_Messages is
      procedure Update_Record (Vehicles : Known_Vehicles_Type; Globes : Known_Globes_Type; VSize : Integer; GSize : Integer);
      procedure Init_Vehicle (Vehicle : Known_Vehicles_Type);
      procedure Init_Globe (Globe : Known_Globes_Type);
      function Read_Vehicles_Record return Known_Vehicles_Type;
      function Read_Globes_Record return Known_Globes_Type;
      function Read_Vehicles_Size return Positive;
      function Read_Globes_Size return Positive;
   private
      Globes_Size : Integer := 0;
      Vehicles_Size : Integer := 0;
         Known_Globes : Known_Globes_Type;
         Known_Vehicles : Known_Vehicles_Type;
   end Local_Vehicle_Messages;

end Vehicle_Message_Type;
