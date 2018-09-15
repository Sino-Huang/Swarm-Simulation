with Swarm_Structures_Base;      use Swarm_Structures_Base;
with Ada.Real_Time;              use Ada.Real_Time;
package Shared_Message_Structure is

   type Globe_Info_Record is record
      Globe_Position : Positions;
      Globe_Velocity : Velocities;
      Globe_ID : Positive; -- the Globe ID will follows the array index of the Energy_Globes array
      LastUpdateTime : Time;
   end record;

   type Vehicle_Info_Record is record
      Vehicle_ID : Positive;
      LastMetTime : Time;
   end record;
end Shared_Message_Structure;
