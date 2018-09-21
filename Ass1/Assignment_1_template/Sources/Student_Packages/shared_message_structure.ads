with Swarm_Structures_Base;     use Swarm_Structures_Base;
with Ada.Calendar;              use Ada.Calendar;
package Shared_Message_Structure is
   --subtype Completed_Energy_Globes is Energy_Globes (1 .. 10);

   type Globe_Info_Record is record
      Globe_Position : Positions;
      Globe_Velocity : Velocities;
      LastUpdateTime : Time;
   end record;

   type Vehicle_Info_Record is record
      Vehicle_ID : Positive;
      LastMetTime : Time;
   end record;
end Shared_Message_Structure;
