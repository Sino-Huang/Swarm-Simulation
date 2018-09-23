pragma Ada_95;
pragma Warnings (Off);
pragma Source_File_Name (ada_main, Spec_File_Name => "b__swarm.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__swarm.adb");
pragma Suppress (Overflow_Check);

with System.Restrictions;
with Ada.Exceptions;

package body ada_main is

   E011 : Short_Integer; pragma Import (Ada, E011, "system__soft_links_E");
   E021 : Short_Integer; pragma Import (Ada, E021, "system__exception_table_E");
   E023 : Short_Integer; pragma Import (Ada, E023, "system__exceptions_E");
   E015 : Short_Integer; pragma Import (Ada, E015, "system__secondary_stack_E");
   E173 : Short_Integer; pragma Import (Ada, E173, "ada__containers_E");
   E128 : Short_Integer; pragma Import (Ada, E128, "ada__io_exceptions_E");
   E147 : Short_Integer; pragma Import (Ada, E147, "ada__numerics_E");
   E169 : Short_Integer; pragma Import (Ada, E169, "ada__strings_E");
   E058 : Short_Integer; pragma Import (Ada, E058, "interfaces__c_E");
   E162 : Short_Integer; pragma Import (Ada, E162, "interfaces__c__strings_E");
   E140 : Short_Integer; pragma Import (Ada, E140, "system__os_lib_E");
   E073 : Short_Integer; pragma Import (Ada, E073, "system__task_info_E");
   E090 : Short_Integer; pragma Import (Ada, E090, "ada__tags_E");
   E127 : Short_Integer; pragma Import (Ada, E127, "ada__streams_E");
   E143 : Short_Integer; pragma Import (Ada, E143, "system__file_control_block_E");
   E130 : Short_Integer; pragma Import (Ada, E130, "system__finalization_root_E");
   E125 : Short_Integer; pragma Import (Ada, E125, "ada__finalization_E");
   E138 : Short_Integer; pragma Import (Ada, E138, "system__file_io_E");
   E245 : Short_Integer; pragma Import (Ada, E245, "ada__streams__stream_io_E");
   E192 : Short_Integer; pragma Import (Ada, E192, "system__storage_pools_E");
   E196 : Short_Integer; pragma Import (Ada, E196, "system__finalization_masters_E");
   E194 : Short_Integer; pragma Import (Ada, E194, "system__storage_pools__subpools_E");
   E280 : Short_Integer; pragma Import (Ada, E280, "ada__calendar_E");
   E304 : Short_Integer; pragma Import (Ada, E304, "ada__calendar__delays_E");
   E134 : Short_Integer; pragma Import (Ada, E134, "ada__text_io_E");
   E153 : Short_Integer; pragma Import (Ada, E153, "system__assertions_E");
   E171 : Short_Integer; pragma Import (Ada, E171, "ada__strings__maps_E");
   E172 : Short_Integer; pragma Import (Ada, E172, "ada__strings__maps__constants_E");
   E212 : Short_Integer; pragma Import (Ada, E212, "ada__strings__unbounded_E");
   E051 : Short_Integer; pragma Import (Ada, E051, "ada__real_time_E");
   E188 : Short_Integer; pragma Import (Ada, E188, "system__pool_global_E");
   E338 : Short_Integer; pragma Import (Ada, E338, "system__random_seed_E");
   E108 : Short_Integer; pragma Import (Ada, E108, "system__tasking__initialization_E");
   E118 : Short_Integer; pragma Import (Ada, E118, "system__tasking__protected_objects_E");
   E122 : Short_Integer; pragma Import (Ada, E122, "system__tasking__protected_objects__entries_E");
   E116 : Short_Integer; pragma Import (Ada, E116, "system__tasking__queuing_E");
   E394 : Short_Integer; pragma Import (Ada, E394, "system__tasking__stages_E");
   E405 : Short_Integer; pragma Import (Ada, E405, "system__interrupt_management__operations_E");
   E403 : Short_Integer; pragma Import (Ada, E403, "system__tasking__async_delays_E");
   E380 : Short_Integer; pragma Import (Ada, E380, "barrier_type_E");
   E270 : Short_Integer; pragma Import (Ada, E270, "bzip2_E");
   E102 : Short_Integer; pragma Import (Ada, E102, "exceptions_E");
   E367 : Short_Integer; pragma Import (Ada, E367, "generic_protected_E");
   E159 : Short_Integer; pragma Import (Ada, E159, "gl_E");
   E202 : Short_Integer; pragma Import (Ada, E202, "gl__buffer_E");
   E241 : Short_Integer; pragma Import (Ada, E241, "gl__io_E");
   E249 : Short_Integer; pragma Import (Ada, E249, "gl__materials_E");
   E220 : Short_Integer; pragma Import (Ada, E220, "gl__math_E");
   E210 : Short_Integer; pragma Import (Ada, E210, "gl__geometry_E");
   E292 : Short_Integer; pragma Import (Ada, E292, "gl__frustums_E");
   E181 : Short_Integer; pragma Import (Ada, E181, "glu_E");
   E179 : Short_Integer; pragma Import (Ada, E179, "gl__errors_E");
   E239 : Short_Integer; pragma Import (Ada, E239, "gl__textures_E");
   E206 : Short_Integer; pragma Import (Ada, E206, "gl__buffer__texture_coords_E");
   E185 : Short_Integer; pragma Import (Ada, E185, "gl__skins_E");
   E294 : Short_Integer; pragma Import (Ada, E294, "gl__skinned_geometry_E");
   E298 : Short_Integer; pragma Import (Ada, E298, "glut_E");
   E296 : Short_Integer; pragma Import (Ada, E296, "glut_2d_E");
   E145 : Short_Integer; pragma Import (Ada, E145, "generic_sliding_statistics_E");
   E302 : Short_Integer; pragma Import (Ada, E302, "graphics_framerates_E");
   E309 : Short_Integer; pragma Import (Ada, E309, "matrices_E");
   E311 : Short_Integer; pragma Import (Ada, E311, "quaternions_E");
   E360 : Short_Integer; pragma Import (Ada, E360, "screenshots_E");
   E313 : Short_Integer; pragma Import (Ada, E313, "vectors_3d_E");
   E407 : Short_Integer; pragma Import (Ada, E407, "vectors_3d_lf_E");
   E409 : Short_Integer; pragma Import (Ada, E409, "vectors_conversions_E");
   E278 : Short_Integer; pragma Import (Ada, E278, "zip_streams_E");
   E274 : Short_Integer; pragma Import (Ada, E274, "zip_E");
   E276 : Short_Integer; pragma Import (Ada, E276, "zip__headers_E");
   E282 : Short_Integer; pragma Import (Ada, E282, "zip__crc_E");
   E266 : Short_Integer; pragma Import (Ada, E266, "unzip_E");
   E268 : Short_Integer; pragma Import (Ada, E268, "unzip__decompress_E");
   E272 : Short_Integer; pragma Import (Ada, E272, "unzip__decompress__huffman_E");
   E284 : Short_Integer; pragma Import (Ada, E284, "unzip__streams_E");
   E164 : Short_Integer; pragma Import (Ada, E164, "globe_3d_E");
   E257 : Short_Integer; pragma Import (Ada, E257, "globe_3d__textures_E");
   E255 : Short_Integer; pragma Import (Ada, E255, "globe_3d__portals_E");
   E253 : Short_Integer; pragma Import (Ada, E253, "globe_3d__options_E");
   E251 : Short_Integer; pragma Import (Ada, E251, "globe_3d__math_E");
   E356 : Short_Integer; pragma Import (Ada, E356, "globe_3d__software_anti_aliasing_E");
   E348 : Short_Integer; pragma Import (Ada, E348, "glut__devices_E");
   E354 : Short_Integer; pragma Import (Ada, E354, "game_control_E");
   E352 : Short_Integer; pragma Import (Ada, E352, "actors_E");
   E350 : Short_Integer; pragma Import (Ada, E350, "glut__windows_E");
   E305 : Short_Integer; pragma Import (Ada, E305, "graphics_structures_E");
   E157 : Short_Integer; pragma Import (Ada, E157, "graphics_configuration_E");
   E358 : Short_Integer; pragma Import (Ada, E358, "keyboard_E");
   E327 : Short_Integer; pragma Import (Ada, E327, "spaceship_p_E");
   E329 : Short_Integer; pragma Import (Ada, E329, "sphere_p_E");
   E325 : Short_Integer; pragma Import (Ada, E325, "models_E");
   E323 : Short_Integer; pragma Import (Ada, E323, "graphics_data_E");
   E344 : Short_Integer; pragma Import (Ada, E344, "graphics_setup_E");
   E332 : Short_Integer; pragma Import (Ada, E332, "graphics_opengl_E");
   E365 : Short_Integer; pragma Import (Ada, E365, "swarm_structures_base_E");
   E364 : Short_Integer; pragma Import (Ada, E364, "swarm_configurations_E");
   E362 : Short_Integer; pragma Import (Ada, E362, "swarm_configuration_E");
   E384 : Short_Integer; pragma Import (Ada, E384, "vehicle_message_type_E");
   E401 : Short_Integer; pragma Import (Ada, E401, "vehicle_protected_message_queue_E");
   E387 : Short_Integer; pragma Import (Ada, E387, "vehicle_task_type_E");
   E378 : Short_Integer; pragma Import (Ada, E378, "swarm_structures_E");
   E399 : Short_Integer; pragma Import (Ada, E399, "vehicle_interface_E");
   E376 : Short_Integer; pragma Import (Ada, E376, "swarm_data_E");
   E375 : Short_Integer; pragma Import (Ada, E375, "swarm_control_E");
   E414 : Short_Integer; pragma Import (Ada, E414, "swarm_control_concurrent_generic_E");
   E049 : Short_Integer; pragma Import (Ada, E049, "callback_procedures_E");

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      E399 := E399 - 1;
      E375 := E375 - 1;
      declare
         procedure F1;
         pragma Import (Ada, F1, "swarm_control__finalize_spec");
      begin
         F1;
      end;
      declare
         procedure F2;
         pragma Import (Ada, F2, "swarm_data__finalize_spec");
      begin
         E376 := E376 - 1;
         F2;
      end;
      declare
         procedure F3;
         pragma Import (Ada, F3, "vehicle_interface__finalize_spec");
      begin
         F3;
      end;
      E378 := E378 - 1;
      declare
         procedure F4;
         pragma Import (Ada, F4, "swarm_structures__finalize_spec");
      begin
         F4;
      end;
      E401 := E401 - 1;
      declare
         procedure F5;
         pragma Import (Ada, F5, "vehicle_protected_message_queue__finalize_spec");
      begin
         F5;
      end;
      declare
         procedure F6;
         pragma Import (Ada, F6, "swarm_structures_base__finalize_spec");
      begin
         E365 := E365 - 1;
         F6;
      end;
      declare
         procedure F7;
         pragma Import (Ada, F7, "graphics_structures__finalize_spec");
      begin
         E305 := E305 - 1;
         F7;
      end;
      E350 := E350 - 1;
      declare
         procedure F8;
         pragma Import (Ada, F8, "glut__windows__finalize_spec");
      begin
         F8;
      end;
      E164 := E164 - 1;
      declare
         procedure F9;
         pragma Import (Ada, F9, "globe_3d__textures__finalize_body");
      begin
         E257 := E257 - 1;
         F9;
      end;
      declare
         procedure F10;
         pragma Import (Ada, F10, "globe_3d__finalize_spec");
      begin
         F10;
      end;
      E284 := E284 - 1;
      declare
         procedure F11;
         pragma Import (Ada, F11, "unzip__streams__finalize_spec");
      begin
         F11;
      end;
      E278 := E278 - 1;
      declare
         procedure F12;
         pragma Import (Ada, F12, "zip_streams__finalize_spec");
      begin
         F12;
      end;
      declare
         procedure F13;
         pragma Import (Ada, F13, "glut__finalize_body");
      begin
         E298 := E298 - 1;
         F13;
      end;
      E185 := E185 - 1;
      declare
         procedure F14;
         pragma Import (Ada, F14, "gl__skins__finalize_spec");
      begin
         F14;
      end;
      E239 := E239 - 1;
      declare
         procedure F15;
         pragma Import (Ada, F15, "gl__textures__finalize_spec");
      begin
         F15;
      end;
      E210 := E210 - 1;
      declare
         procedure F16;
         pragma Import (Ada, F16, "gl__geometry__finalize_spec");
      begin
         F16;
      end;
      E202 := E202 - 1;
      declare
         procedure F17;
         pragma Import (Ada, F17, "gl__buffer__finalize_spec");
      begin
         F17;
      end;
      E380 := E380 - 1;
      declare
         procedure F18;
         pragma Import (Ada, F18, "barrier_type__finalize_spec");
      begin
         F18;
      end;
      E122 := E122 - 1;
      declare
         procedure F19;
         pragma Import (Ada, F19, "system__tasking__protected_objects__entries__finalize_spec");
      begin
         F19;
      end;
      E188 := E188 - 1;
      declare
         procedure F20;
         pragma Import (Ada, F20, "system__pool_global__finalize_spec");
      begin
         F20;
      end;
      E212 := E212 - 1;
      declare
         procedure F21;
         pragma Import (Ada, F21, "ada__strings__unbounded__finalize_spec");
      begin
         F21;
      end;
      E134 := E134 - 1;
      declare
         procedure F22;
         pragma Import (Ada, F22, "ada__text_io__finalize_spec");
      begin
         F22;
      end;
      E194 := E194 - 1;
      declare
         procedure F23;
         pragma Import (Ada, F23, "system__storage_pools__subpools__finalize_spec");
      begin
         F23;
      end;
      E196 := E196 - 1;
      declare
         procedure F24;
         pragma Import (Ada, F24, "system__finalization_masters__finalize_spec");
      begin
         F24;
      end;
      E245 := E245 - 1;
      declare
         procedure F25;
         pragma Import (Ada, F25, "ada__streams__stream_io__finalize_spec");
      begin
         F25;
      end;
      declare
         procedure F26;
         pragma Import (Ada, F26, "system__file_io__finalize_body");
      begin
         E138 := E138 - 1;
         F26;
      end;
      declare
         procedure Reraise_Library_Exception_If_Any;
            pragma Import (Ada, Reraise_Library_Exception_If_Any, "__gnat_reraise_library_exception_if_any");
      begin
         Reraise_Library_Exception_If_Any;
      end;
   end finalize_library;

   procedure adafinal is
      procedure s_stalib_adafinal;
      pragma Import (C, s_stalib_adafinal, "system__standard_library__adafinal");

      procedure Runtime_Finalize;
      pragma Import (C, Runtime_Finalize, "__gnat_runtime_finalize");

   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      Runtime_Finalize;
      s_stalib_adafinal;
   end adafinal;

   type No_Param_Proc is access procedure;

   procedure adainit is
      Main_Priority : Integer;
      pragma Import (C, Main_Priority, "__gl_main_priority");
      Time_Slice_Value : Integer;
      pragma Import (C, Time_Slice_Value, "__gl_time_slice_val");
      WC_Encoding : Character;
      pragma Import (C, WC_Encoding, "__gl_wc_encoding");
      Locking_Policy : Character;
      pragma Import (C, Locking_Policy, "__gl_locking_policy");
      Queuing_Policy : Character;
      pragma Import (C, Queuing_Policy, "__gl_queuing_policy");
      Task_Dispatching_Policy : Character;
      pragma Import (C, Task_Dispatching_Policy, "__gl_task_dispatching_policy");
      Priority_Specific_Dispatching : System.Address;
      pragma Import (C, Priority_Specific_Dispatching, "__gl_priority_specific_dispatching");
      Num_Specific_Dispatching : Integer;
      pragma Import (C, Num_Specific_Dispatching, "__gl_num_specific_dispatching");
      Main_CPU : Integer;
      pragma Import (C, Main_CPU, "__gl_main_cpu");
      Interrupt_States : System.Address;
      pragma Import (C, Interrupt_States, "__gl_interrupt_states");
      Num_Interrupt_States : Integer;
      pragma Import (C, Num_Interrupt_States, "__gl_num_interrupt_states");
      Unreserve_All_Interrupts : Integer;
      pragma Import (C, Unreserve_All_Interrupts, "__gl_unreserve_all_interrupts");
      Exception_Tracebacks : Integer;
      pragma Import (C, Exception_Tracebacks, "__gl_exception_tracebacks");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Leap_Seconds_Support : Integer;
      pragma Import (C, Leap_Seconds_Support, "__gl_leap_seconds_support");
      Bind_Env_Addr : System.Address;
      pragma Import (C, Bind_Env_Addr, "__gl_bind_env_addr");

      procedure Runtime_Initialize (Install_Handler : Integer);
      pragma Import (C, Runtime_Initialize, "__gnat_runtime_initialize");

      Finalize_Library_Objects : No_Param_Proc;
      pragma Import (C, Finalize_Library_Objects, "__gnat_finalize_library_objects");
   begin
      if Is_Elaborated then
         return;
      end if;
      Is_Elaborated := True;
      Main_Priority := -1;
      Time_Slice_Value := -1;
      WC_Encoding := 'b';
      Locking_Policy := ' ';
      Queuing_Policy := ' ';
      Task_Dispatching_Policy := ' ';
      System.Restrictions.Run_Time_Restrictions :=
        (Set =>
          (False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, True, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False),
         Value => (0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
         Violated =>
          (True, False, False, True, True, False, False, True, 
           False, False, True, True, True, True, False, False, 
           True, False, False, True, True, False, True, True, 
           False, True, True, True, True, False, True, True, 
           False, True, True, False, True, True, False, True, 
           True, True, True, False, True, True, True, True, 
           False, False, True, False, True, True, False, True, 
           True, False, True, True, True, True, True, False, 
           False, True, False, True, True, True, False, True, 
           True, False, True, True, True, True, False, True, 
           True, False, False, False, True, True, True, True, 
           True, True, False),
         Count => (0, 0, 0, 2, 5, 1, 4, 2, 7, 0),
         Unknown => (False, False, False, False, False, False, True, True, True, False));
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
      Exception_Tracebacks := 1;
      Detect_Blocking := 0;
      Default_Stack_Size := -1;
      Leap_Seconds_Support := 0;

      Runtime_Initialize (1);

      Finalize_Library_Objects := finalize_library'access;

      System.Soft_Links'Elab_Spec;
      System.Exception_Table'Elab_Body;
      E021 := E021 + 1;
      System.Exceptions'Elab_Spec;
      E023 := E023 + 1;
      System.Soft_Links'Elab_Body;
      E011 := E011 + 1;
      System.Secondary_Stack'Elab_Body;
      E015 := E015 + 1;
      Ada.Containers'Elab_Spec;
      E173 := E173 + 1;
      Ada.Io_Exceptions'Elab_Spec;
      E128 := E128 + 1;
      Ada.Numerics'Elab_Spec;
      E147 := E147 + 1;
      Ada.Strings'Elab_Spec;
      E169 := E169 + 1;
      Interfaces.C'Elab_Spec;
      E058 := E058 + 1;
      Interfaces.C.Strings'Elab_Spec;
      E162 := E162 + 1;
      System.Os_Lib'Elab_Body;
      E140 := E140 + 1;
      System.Task_Info'Elab_Spec;
      E073 := E073 + 1;
      Ada.Tags'Elab_Spec;
      Ada.Tags'Elab_Body;
      E090 := E090 + 1;
      Ada.Streams'Elab_Spec;
      E127 := E127 + 1;
      System.File_Control_Block'Elab_Spec;
      E143 := E143 + 1;
      System.Finalization_Root'Elab_Spec;
      E130 := E130 + 1;
      Ada.Finalization'Elab_Spec;
      E125 := E125 + 1;
      System.File_Io'Elab_Body;
      E138 := E138 + 1;
      Ada.Streams.Stream_Io'Elab_Spec;
      E245 := E245 + 1;
      System.Storage_Pools'Elab_Spec;
      E192 := E192 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Finalization_Masters'Elab_Body;
      E196 := E196 + 1;
      System.Storage_Pools.Subpools'Elab_Spec;
      E194 := E194 + 1;
      Ada.Calendar'Elab_Spec;
      Ada.Calendar'Elab_Body;
      E280 := E280 + 1;
      Ada.Calendar.Delays'Elab_Body;
      E304 := E304 + 1;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E134 := E134 + 1;
      System.Assertions'Elab_Spec;
      E153 := E153 + 1;
      Ada.Strings.Maps'Elab_Spec;
      E171 := E171 + 1;
      Ada.Strings.Maps.Constants'Elab_Spec;
      E172 := E172 + 1;
      Ada.Strings.Unbounded'Elab_Spec;
      E212 := E212 + 1;
      Ada.Real_Time'Elab_Spec;
      Ada.Real_Time'Elab_Body;
      E051 := E051 + 1;
      System.Pool_Global'Elab_Spec;
      E188 := E188 + 1;
      System.Random_Seed'Elab_Body;
      E338 := E338 + 1;
      System.Tasking.Initialization'Elab_Body;
      E108 := E108 + 1;
      System.Tasking.Protected_Objects'Elab_Body;
      E118 := E118 + 1;
      System.Tasking.Protected_Objects.Entries'Elab_Spec;
      E122 := E122 + 1;
      System.Tasking.Queuing'Elab_Body;
      E116 := E116 + 1;
      System.Tasking.Stages'Elab_Body;
      E394 := E394 + 1;
      System.Interrupt_Management.Operations'Elab_Body;
      E405 := E405 + 1;
      System.Tasking.Async_Delays'Elab_Body;
      E403 := E403 + 1;
      Barrier_Type'Elab_Spec;
      E380 := E380 + 1;
      E270 := E270 + 1;
      E102 := E102 + 1;
      E367 := E367 + 1;
      E159 := E159 + 1;
      GL.BUFFER'ELAB_SPEC;
      E202 := E202 + 1;
      GL.IO'ELAB_SPEC;
      GL.IO'ELAB_BODY;
      E241 := E241 + 1;
      E249 := E249 + 1;
      GL.MATH'ELAB_BODY;
      E220 := E220 + 1;
      GL.GEOMETRY'ELAB_SPEC;
      E210 := E210 + 1;
      E292 := E292 + 1;
      E181 := E181 + 1;
      GL.ERRORS'ELAB_SPEC;
      E179 := E179 + 1;
      GL.TEXTURES'ELAB_SPEC;
      GL.TEXTURES'ELAB_BODY;
      E239 := E239 + 1;
      GL.BUFFER.TEXTURE_COORDS'ELAB_SPEC;
      E206 := E206 + 1;
      GL.SKINS'ELAB_SPEC;
      E185 := E185 + 1;
      E294 := E294 + 1;
      GLUT'ELAB_BODY;
      E298 := E298 + 1;
      E296 := E296 + 1;
      E145 := E145 + 1;
      Graphics_Framerates'Elab_Body;
      E302 := E302 + 1;
      E309 := E309 + 1;
      E311 := E311 + 1;
      E360 := E360 + 1;
      E313 := E313 + 1;
      E407 := E407 + 1;
      E409 := E409 + 1;
      Zip_Streams'Elab_Spec;
      Zip'Elab_Spec;
      E278 := E278 + 1;
      Zip.Headers'Elab_Spec;
      E276 := E276 + 1;
      E274 := E274 + 1;
      E282 := E282 + 1;
      Unzip'Elab_Spec;
      Unzip.Decompress.Huffman'Elab_Spec;
      E272 := E272 + 1;
      E266 := E266 + 1;
      E268 := E268 + 1;
      Unzip.Streams'Elab_Spec;
      E284 := E284 + 1;
      GLOBE_3D'ELAB_SPEC;
      GLOBE_3D.TEXTURES'ELAB_SPEC;
      E253 := E253 + 1;
      GLOBE_3D.MATH'ELAB_BODY;
      E251 := E251 + 1;
      GLOBE_3D.TEXTURES'ELAB_BODY;
      E257 := E257 + 1;
      GLOBE_3D'ELAB_BODY;
      E164 := E164 + 1;
      E255 := E255 + 1;
      E356 := E356 + 1;
      GLUT.DEVICES'ELAB_SPEC;
      Game_Control'Elab_Spec;
      E354 := E354 + 1;
      E352 := E352 + 1;
      GLUT.WINDOWS'ELAB_SPEC;
      GLUT.WINDOWS'ELAB_BODY;
      E350 := E350 + 1;
      E348 := E348 + 1;
      Graphics_Structures'Elab_Spec;
      E305 := E305 + 1;
      Graphics_Configuration'Elab_Spec;
      E157 := E157 + 1;
      Keyboard'Elab_Spec;
      E358 := E358 + 1;
      E327 := E327 + 1;
      E329 := E329 + 1;
      Models'Elab_Spec;
      Models'Elab_Body;
      E325 := E325 + 1;
      Graphics_Data'Elab_Spec;
      E323 := E323 + 1;
      E344 := E344 + 1;
      Graphics_Opengl'Elab_Body;
      E332 := E332 + 1;
      Swarm_Structures_Base'Elab_Spec;
      E365 := E365 + 1;
      Swarm_Configurations'Elab_Spec;
      E364 := E364 + 1;
      Swarm_Configuration'Elab_Spec;
      E362 := E362 + 1;
      E384 := E384 + 1;
      Vehicle_Protected_Message_Queue'Elab_Spec;
      E401 := E401 + 1;
      Swarm_Structures'Elab_Spec;
      E378 := E378 + 1;
      Vehicle_Interface'Elab_Spec;
      Swarm_Data'Elab_Spec;
      E376 := E376 + 1;
      Swarm_Control'Elab_Spec;
      E375 := E375 + 1;
      Vehicle_Task_Type'Elab_Body;
      E387 := E387 + 1;
      E399 := E399 + 1;
      E414 := E414 + 1;
      Callback_Procedures'Elab_Body;
      E049 := E049 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_swarm");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer
   is
      procedure Initialize (Addr : System.Address);
      pragma Import (C, Initialize, "__gnat_initialize");

      procedure Finalize;
      pragma Import (C, Finalize, "__gnat_finalize");
      SEH : aliased array (1 .. 2) of Integer;

      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      gnat_argc := argc;
      gnat_argv := argv;
      gnat_envp := envp;

      Initialize (SEH'Address);
      adainit;
      Ada_Main_Program;
      adafinal;
      Finalize;
      return (gnat_exit_status);
   end;

--  BEGIN Object file/option list
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/barrier_type.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/bzip2.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/exceptions.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/generic_protected.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/generic_realtime_buffer.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/gl-extended.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/gl.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/gl-buffer.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/gl-io.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/gl-materials.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/gl-math.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/gl-geometry.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/gl-frustums.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/glu.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/gl-errors.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/gl-buffer-general.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/gl-textures.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/gl-buffer-texture_coords.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/gl-skins.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/gl-skinned_geometry.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/glut.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/glut_2d.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/real_type.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/generic_sliding_statistics.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/graphics_framerates.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/matrices.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/quaternions.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/screenshots.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/vectors_xd.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/vectors_2d.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/vectors_3d.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/rotations.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/vectors_3d_lf.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/vectors_4d.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/vectors_xd_i.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/vectors_2d_i.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/vectors_2d_n.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/vectors_2d_p.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/vectors_conversions.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/zip_streams.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/zip-headers.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/zip.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/zip-crc.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/unzip-decompress-huffman.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/unzip.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/unzip-decompress.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/unzip-streams.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/globe_3d-options.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/globe_3d-math.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/globe_3d-textures.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/globe_3d.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/globe_3d-portals.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/globe_3d-software_anti_aliasing.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/globe_3d-stars_sky.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/game_control.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/actors.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/glut-windows.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/glut-devices.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/graphics_structures.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/graphics_configuration.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/keyboard.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/spaceship_p.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/sphere_p.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/models.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/graphics_data.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/graphics_setup.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/graphics_opengl.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/swarm_structures_base.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/shared_message_structure.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/swarm_configurations.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/swarm_configuration.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/vehicle_message_type.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/vehicle_protected_message_queue.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/swarm_structures.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/swarm_data.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/swarm_control.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/vehicle_task_type.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/vehicle_interface.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/swarm_control_concurrent_generic.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/callback_procedures.o
   --   /media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/swarm.o
   --   -L/media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/
   --   -L/media/sukai/C2E6270DE62700F1/Users/huang/Documents/ANU YEAR 2/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/
   --   -L/usr/lib/gcc/x86_64-linux-gnu/7/adalib/
   --   -shared
   --   -lgnarl-7
   --   -lgnat-7
   --   -lpthread
   --   -lrt
--  END Object file/option list   

end ada_main;
