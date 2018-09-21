with Ada.Calendar;              use Ada.Calendar;
package body Vehicle_Message_Type is

   ----------------------------
   -- Inter_Vehicle_Messages --
   ----------------------------

   protected body Local_Vehicle_Messages is

      procedure Init_Vehicle (Vehicle : Known_Vehicles_Type) is
      begin
         Known_Vehicles := Vehicle;
         Vehicles_Size := 1;
      end Init_Vehicle;

      procedure Init_Globe (Globe : Known_Globes_Type) is
      begin
         Known_Globes := Globe;
         Globes_Size := 1;
      end Init_Globe;

      -------------------
      -- Update_Record --
      -------------------

      procedure Update_Record            -- it will update both local Vehicles array and Globes array by receiving the array from other swarms,
        (Vehicles : Known_Vehicles_Type; -- the procedure will also delete the info of the vehicle that is no longer discovered by others
         Globes : Known_Globes_Type;
         VSize : Integer; GSize : Integer)
      is
         TempVSize : Integer := Vehicles_Size;
         TempGSize : Integer := Globes_Size;
         TempIndex : Integer := 1;
      begin
         -- Vehicles update; during the loop we will check for the time and delete outdated info

         if VSize /= 0 then
            if Vehicles_Size = 0 then
               Vehicles_Size := VSize;
               Known_Vehicles := Vehicles;
            else
               for vo of Vehicles (1 .. VSize) loop
                  TempIndex := 1;
                  for vl of Known_Vehicles (1 .. Vehicles_Size) loop
                     if vo.Vehicle_ID = vl.Vehicle_ID then
                        if vo.LastMetTime > vl.LastMetTime then
                           vl := vo;
                        end if;
                     else
                        if TempIndex = Vehicles_Size then
                           TempVSize := TempVSize + 1;
                           Known_Vehicles (TempVSize) := vo;
                        end if;
                     end if;
                     TempIndex := TempIndex + 1;
                  end loop;
               end loop;
               Vehicles_Size := TempVSize;
            end if;
         end if;

         -- Globes update
         if GSize /= 0 then
            if Globes_Size = 0 then
               Globes_Size := GSize;
               Known_Globes := Globes;
            else
               for go of Globes (1 .. GSize) loop
                  TempIndex := 1;
                  for gl of Known_Globes (1 .. Globes_Size) loop
                     if go.Globe_ID = gl.Globe_ID then
                        if go.LastUpdateTime > gl.LastUpdateTime then
                           gl := go;
                        end if;
                     else
                        if TempIndex = Globes_Size then
                           TempGSize := TempGSize + 1;
                           Known_Globes (TempGSize) := go;

                        end if;
                     end if;
                     TempIndex := TempIndex + 1;
                  end loop;
               end loop;

            end if;
         end if;

      end Update_Record;

      --------------------------
      -- Read_Vehicles_Record --
      --------------------------

      function Read_Vehicles_Record return Known_Vehicles_Type is
      begin
         return Known_Vehicles;
      end Read_Vehicles_Record;

      ------------------------
      -- Read_Globes_Record --
      ------------------------

      function Read_Globes_Record return Known_Globes_Type is
      begin
         return Known_Globes;
      end Read_Globes_Record;

      ------------------------
      -- Read_Vehicles_Size --
      ------------------------

      function Read_Vehicles_Size return Positive is
      begin
         return Vehicles_Size;
      end Read_Vehicles_Size;

      ----------------------
      -- Read_Globes_Size --
      ----------------------

      function Read_Globes_Size return Positive is
      begin
         return Globes_Size;
      end Read_Globes_Size;

   end Local_Vehicle_Messages;

end Vehicle_Message_Type;
