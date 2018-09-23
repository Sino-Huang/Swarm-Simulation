-- Suggestions for packages which might be useful:
with Swarm_Structures_Base; use Swarm_Structures_Base;
with Ada.Calendar; use Ada.Calendar;
with Maybe_Type;
--  with Ada.Real_Time;         use Ada.Real_Time;
--  with Vectors_3D;            use Vectors_3D;

package Vehicle_Message_Type is
   package Maybe_Positive is new Maybe_Type (Element => Positive);
   package Maybe_Position is new Maybe_Type (Element => Positions);

   type Globe_Record is record
      Globe_Position : Positions;
      Globe_Velocity : Velocities;
      Globe_ID : Positive;
      LastUpdateTime : Time;
   end record;

   type Vehicle_Record is record
      Vehicle_ID : Positive;
      Vehicle_Charge : Vehicle_Charges;
      Vehicle_Position : Positions;
      Vehicle_Velocity : Velocities;
      Vehicle_Destination : Maybe_Position.Maybe := Maybe_Position.Invalid_Value;
      LastUpdateTime : Time;
   end record;

   package Maybe_Vehicle_Record is new Maybe_Type (Element => Vehicle_Record);
   package Maybe_Globe_Record is new Maybe_Type (Element => Globe_Record);

   type Vehicles_Array is array (1 .. 64) of Maybe_Vehicle_Record.Maybe;
   type Globes_Array is array (1 .. 2) of Maybe_Globe_Record.Maybe;
   type WhoAlive_Array is array (1 .. 42) of Maybe_Positive.Maybe;
   type WhoFeed_Array is array (1 .. 8) of Maybe_Positive.Maybe;

   type Inter_Vehicle_Messages is record
      Vehicles : Vehicles_Array := (others => Maybe_Vehicle_Record.Invalid_Value);
      Globes : Globes_Array := (others => Maybe_Globe_Record.Invalid_Value);
      Sender_ID : Positive;
      Message_Time : Time;
      ------------- Concensus Part -----------
      --- this loop concensus mechanism need
      -- 1. Double Direction Feedback
      -- 2. Passing Mechanism
      -- 3. Skip entry mechanism (some entry may missing)
      ConcensusFlag : Boolean := False;
      FeedbackFlag : Boolean := False;
      ConcensusTaskConfirm : Boolean := False;
      SkipFlag : Boolean := False;
      SkipIndex : Positive := 1;

      -----------------
      WhoAlive : WhoAlive_Array := (others => Maybe_Positive.Invalid_Value);
      WhoFeed : WhoFeed_Array := (others => Maybe_Positive.Invalid_Value);
   end record;

   protected type Local_Storage is
      function Read return Inter_Vehicle_Messages;
      function NeedPassing return Boolean;
      procedure Change (Val : Inter_Vehicle_Messages);
      procedure Update (Val : Inter_Vehicle_Messages);
      entry ShutPassingFlag;

   private
      PassingFlag : Boolean := False;
      Local : Inter_Vehicle_Messages;
      Passing : Inter_Vehicle_Messages; -- support passing mechanism

   end Local_Storage;

end Vehicle_Message_Type;
