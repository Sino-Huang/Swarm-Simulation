pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__swarm.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__swarm.adb");
pragma Suppress (Overflow_Check);

with System.Restrictions;
with Ada.Exceptions;

package body ada_main is

   E068 : Short_Integer; pragma Import (Ada, E068, "system__os_lib_E");
   E011 : Short_Integer; pragma Import (Ada, E011, "system__soft_links_E");
   E021 : Short_Integer; pragma Import (Ada, E021, "system__exception_table_E");
   E064 : Short_Integer; pragma Import (Ada, E064, "ada__io_exceptions_E");
   E048 : Short_Integer; pragma Import (Ada, E048, "ada__strings_E");
   E036 : Short_Integer; pragma Import (Ada, E036, "ada__containers_E");
   E023 : Short_Integer; pragma Import (Ada, E023, "system__exceptions_E");
   E015 : Short_Integer; pragma Import (Ada, E015, "system__secondary_stack_E");
   E074 : Short_Integer; pragma Import (Ada, E074, "interfaces__c_E");
   E050 : Short_Integer; pragma Import (Ada, E050, "ada__strings__maps_E");
   E054 : Short_Integer; pragma Import (Ada, E054, "ada__strings__maps__constants_E");
   E076 : Short_Integer; pragma Import (Ada, E076, "system__object_reader_E");
   E043 : Short_Integer; pragma Import (Ada, E043, "system__dwarf_lines_E");
   E035 : Short_Integer; pragma Import (Ada, E035, "system__traceback__symbolic_E");
   E178 : Short_Integer; pragma Import (Ada, E178, "ada__numerics_E");
   E103 : Short_Integer; pragma Import (Ada, E103, "interfaces__c__strings_E");
   E118 : Short_Integer; pragma Import (Ada, E118, "system__task_info_E");
   E130 : Short_Integer; pragma Import (Ada, E130, "ada__tags_E");
   E163 : Short_Integer; pragma Import (Ada, E163, "ada__streams_E");
   E174 : Short_Integer; pragma Import (Ada, E174, "system__file_control_block_E");
   E165 : Short_Integer; pragma Import (Ada, E165, "system__finalization_root_E");
   E161 : Short_Integer; pragma Import (Ada, E161, "ada__finalization_E");
   E173 : Short_Integer; pragma Import (Ada, E173, "system__file_io_E");
   E261 : Short_Integer; pragma Import (Ada, E261, "ada__streams__stream_io_E");
   E212 : Short_Integer; pragma Import (Ada, E212, "system__storage_pools_E");
   E216 : Short_Integer; pragma Import (Ada, E216, "system__finalization_masters_E");
   E214 : Short_Integer; pragma Import (Ada, E214, "system__storage_pools__subpools_E");
   E232 : Short_Integer; pragma Import (Ada, E232, "ada__strings__unbounded_E");
   E296 : Short_Integer; pragma Import (Ada, E296, "ada__calendar_E");
   E320 : Short_Integer; pragma Import (Ada, E320, "ada__calendar__delays_E");
   E097 : Short_Integer; pragma Import (Ada, E097, "ada__real_time_E");
   E169 : Short_Integer; pragma Import (Ada, E169, "ada__text_io_E");
   E184 : Short_Integer; pragma Import (Ada, E184, "system__assertions_E");
   E208 : Short_Integer; pragma Import (Ada, E208, "system__pool_global_E");
   E354 : Short_Integer; pragma Import (Ada, E354, "system__random_seed_E");
   E144 : Short_Integer; pragma Import (Ada, E144, "system__tasking__initialization_E");
   E154 : Short_Integer; pragma Import (Ada, E154, "system__tasking__protected_objects_E");
   E158 : Short_Integer; pragma Import (Ada, E158, "system__tasking__protected_objects__entries_E");
   E152 : Short_Integer; pragma Import (Ada, E152, "system__tasking__queuing_E");
   E408 : Short_Integer; pragma Import (Ada, E408, "system__tasking__stages_E");
   E417 : Short_Integer; pragma Import (Ada, E417, "system__tasking__async_delays_E");
   E394 : Short_Integer; pragma Import (Ada, E394, "barrier_type_E");
   E286 : Short_Integer; pragma Import (Ada, E286, "bzip2_E");
   E138 : Short_Integer; pragma Import (Ada, E138, "exceptions_E");
   E381 : Short_Integer; pragma Import (Ada, E381, "generic_protected_E");
   E190 : Short_Integer; pragma Import (Ada, E190, "gl_E");
   E222 : Short_Integer; pragma Import (Ada, E222, "gl__buffer_E");
   E257 : Short_Integer; pragma Import (Ada, E257, "gl__io_E");
   E265 : Short_Integer; pragma Import (Ada, E265, "gl__materials_E");
   E240 : Short_Integer; pragma Import (Ada, E240, "gl__math_E");
   E230 : Short_Integer; pragma Import (Ada, E230, "gl__geometry_E");
   E308 : Short_Integer; pragma Import (Ada, E308, "gl__frustums_E");
   E201 : Short_Integer; pragma Import (Ada, E201, "glu_E");
   E199 : Short_Integer; pragma Import (Ada, E199, "gl__errors_E");
   E255 : Short_Integer; pragma Import (Ada, E255, "gl__textures_E");
   E226 : Short_Integer; pragma Import (Ada, E226, "gl__buffer__texture_coords_E");
   E205 : Short_Integer; pragma Import (Ada, E205, "gl__skins_E");
   E310 : Short_Integer; pragma Import (Ada, E310, "gl__skinned_geometry_E");
   E314 : Short_Integer; pragma Import (Ada, E314, "glut_E");
   E312 : Short_Integer; pragma Import (Ada, E312, "glut_2d_E");
   E176 : Short_Integer; pragma Import (Ada, E176, "generic_sliding_statistics_E");
   E318 : Short_Integer; pragma Import (Ada, E318, "graphics_framerates_E");
   E325 : Short_Integer; pragma Import (Ada, E325, "matrices_E");
   E327 : Short_Integer; pragma Import (Ada, E327, "quaternions_E");
   E374 : Short_Integer; pragma Import (Ada, E374, "screenshots_E");
   E329 : Short_Integer; pragma Import (Ada, E329, "vectors_3d_E");
   E421 : Short_Integer; pragma Import (Ada, E421, "vectors_3d_lf_E");
   E423 : Short_Integer; pragma Import (Ada, E423, "vectors_conversions_E");
   E294 : Short_Integer; pragma Import (Ada, E294, "zip_streams_E");
   E290 : Short_Integer; pragma Import (Ada, E290, "zip_E");
   E292 : Short_Integer; pragma Import (Ada, E292, "zip__headers_E");
   E298 : Short_Integer; pragma Import (Ada, E298, "zip__crc_E");
   E282 : Short_Integer; pragma Import (Ada, E282, "unzip_E");
   E284 : Short_Integer; pragma Import (Ada, E284, "unzip__decompress_E");
   E288 : Short_Integer; pragma Import (Ada, E288, "unzip__decompress__huffman_E");
   E300 : Short_Integer; pragma Import (Ada, E300, "unzip__streams_E");
   E193 : Short_Integer; pragma Import (Ada, E193, "globe_3d_E");
   E273 : Short_Integer; pragma Import (Ada, E273, "globe_3d__textures_E");
   E271 : Short_Integer; pragma Import (Ada, E271, "globe_3d__portals_E");
   E269 : Short_Integer; pragma Import (Ada, E269, "globe_3d__options_E");
   E267 : Short_Integer; pragma Import (Ada, E267, "globe_3d__math_E");
   E370 : Short_Integer; pragma Import (Ada, E370, "globe_3d__software_anti_aliasing_E");
   E362 : Short_Integer; pragma Import (Ada, E362, "glut__devices_E");
   E368 : Short_Integer; pragma Import (Ada, E368, "game_control_E");
   E366 : Short_Integer; pragma Import (Ada, E366, "actors_E");
   E364 : Short_Integer; pragma Import (Ada, E364, "glut__windows_E");
   E321 : Short_Integer; pragma Import (Ada, E321, "graphics_structures_E");
   E188 : Short_Integer; pragma Import (Ada, E188, "graphics_configuration_E");
   E372 : Short_Integer; pragma Import (Ada, E372, "keyboard_E");
   E343 : Short_Integer; pragma Import (Ada, E343, "spaceship_p_E");
   E345 : Short_Integer; pragma Import (Ada, E345, "sphere_p_E");
   E341 : Short_Integer; pragma Import (Ada, E341, "models_E");
   E339 : Short_Integer; pragma Import (Ada, E339, "graphics_data_E");
   E358 : Short_Integer; pragma Import (Ada, E358, "graphics_setup_E");
   E348 : Short_Integer; pragma Import (Ada, E348, "graphics_opengl_E");
   E379 : Short_Integer; pragma Import (Ada, E379, "swarm_structures_base_E");
   E378 : Short_Integer; pragma Import (Ada, E378, "swarm_configurations_E");
   E376 : Short_Integer; pragma Import (Ada, E376, "swarm_configuration_E");
   E398 : Short_Integer; pragma Import (Ada, E398, "vehicle_message_type_E");
   E415 : Short_Integer; pragma Import (Ada, E415, "vehicle_protected_message_queue_E");
   E401 : Short_Integer; pragma Import (Ada, E401, "vehicle_task_type_E");
   E392 : Short_Integer; pragma Import (Ada, E392, "swarm_structures_E");
   E413 : Short_Integer; pragma Import (Ada, E413, "vehicle_interface_E");
   E390 : Short_Integer; pragma Import (Ada, E390, "swarm_data_E");
   E389 : Short_Integer; pragma Import (Ada, E389, "swarm_control_E");
   E428 : Short_Integer; pragma Import (Ada, E428, "swarm_control_concurrent_generic_E");
   E095 : Short_Integer; pragma Import (Ada, E095, "callback_procedures_E");

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      E413 := E413 - 1;
      E389 := E389 - 1;
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
         E390 := E390 - 1;
         F2;
      end;
      declare
         procedure F3;
         pragma Import (Ada, F3, "vehicle_interface__finalize_spec");
      begin
         F3;
      end;
      E392 := E392 - 1;
      declare
         procedure F4;
         pragma Import (Ada, F4, "swarm_structures__finalize_spec");
      begin
         F4;
      end;
      E415 := E415 - 1;
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
         E379 := E379 - 1;
         F6;
      end;
      declare
         procedure F7;
         pragma Import (Ada, F7, "graphics_structures__finalize_spec");
      begin
         E321 := E321 - 1;
         F7;
      end;
      E364 := E364 - 1;
      declare
         procedure F8;
         pragma Import (Ada, F8, "glut__windows__finalize_spec");
      begin
         F8;
      end;
      E193 := E193 - 1;
      declare
         procedure F9;
         pragma Import (Ada, F9, "globe_3d__textures__finalize_body");
      begin
         E273 := E273 - 1;
         F9;
      end;
      declare
         procedure F10;
         pragma Import (Ada, F10, "globe_3d__finalize_spec");
      begin
         F10;
      end;
      E300 := E300 - 1;
      declare
         procedure F11;
         pragma Import (Ada, F11, "unzip__streams__finalize_spec");
      begin
         F11;
      end;
      E294 := E294 - 1;
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
         E314 := E314 - 1;
         F13;
      end;
      E205 := E205 - 1;
      declare
         procedure F14;
         pragma Import (Ada, F14, "gl__skins__finalize_spec");
      begin
         F14;
      end;
      E255 := E255 - 1;
      declare
         procedure F15;
         pragma Import (Ada, F15, "gl__textures__finalize_spec");
      begin
         F15;
      end;
      E230 := E230 - 1;
      declare
         procedure F16;
         pragma Import (Ada, F16, "gl__geometry__finalize_spec");
      begin
         F16;
      end;
      E222 := E222 - 1;
      declare
         procedure F17;
         pragma Import (Ada, F17, "gl__buffer__finalize_spec");
      begin
         F17;
      end;
      E394 := E394 - 1;
      declare
         procedure F18;
         pragma Import (Ada, F18, "barrier_type__finalize_spec");
      begin
         F18;
      end;
      E158 := E158 - 1;
      declare
         procedure F19;
         pragma Import (Ada, F19, "system__tasking__protected_objects__entries__finalize_spec");
      begin
         F19;
      end;
      E208 := E208 - 1;
      declare
         procedure F20;
         pragma Import (Ada, F20, "system__pool_global__finalize_spec");
      begin
         F20;
      end;
      E169 := E169 - 1;
      declare
         procedure F21;
         pragma Import (Ada, F21, "ada__text_io__finalize_spec");
      begin
         F21;
      end;
      E232 := E232 - 1;
      declare
         procedure F22;
         pragma Import (Ada, F22, "ada__strings__unbounded__finalize_spec");
      begin
         F22;
      end;
      E214 := E214 - 1;
      declare
         procedure F23;
         pragma Import (Ada, F23, "system__storage_pools__subpools__finalize_spec");
      begin
         F23;
      end;
      E216 := E216 - 1;
      declare
         procedure F24;
         pragma Import (Ada, F24, "system__finalization_masters__finalize_spec");
      begin
         F24;
      end;
      E261 := E261 - 1;
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
         E173 := E173 - 1;
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
      Ada.Io_Exceptions'Elab_Spec;
      E064 := E064 + 1;
      Ada.Strings'Elab_Spec;
      E048 := E048 + 1;
      Ada.Containers'Elab_Spec;
      E036 := E036 + 1;
      System.Exceptions'Elab_Spec;
      E023 := E023 + 1;
      System.Soft_Links'Elab_Body;
      E011 := E011 + 1;
      Interfaces.C'Elab_Spec;
      System.Os_Lib'Elab_Body;
      E068 := E068 + 1;
      Ada.Strings.Maps'Elab_Spec;
      Ada.Strings.Maps.Constants'Elab_Spec;
      E054 := E054 + 1;
      System.Secondary_Stack'Elab_Body;
      E015 := E015 + 1;
      System.Object_Reader'Elab_Spec;
      System.Dwarf_Lines'Elab_Spec;
      E043 := E043 + 1;
      E074 := E074 + 1;
      E050 := E050 + 1;
      System.Traceback.Symbolic'Elab_Body;
      E035 := E035 + 1;
      E076 := E076 + 1;
      Ada.Numerics'Elab_Spec;
      E178 := E178 + 1;
      Interfaces.C.Strings'Elab_Spec;
      E103 := E103 + 1;
      System.Task_Info'Elab_Spec;
      E118 := E118 + 1;
      Ada.Tags'Elab_Spec;
      Ada.Tags'Elab_Body;
      E130 := E130 + 1;
      Ada.Streams'Elab_Spec;
      E163 := E163 + 1;
      System.File_Control_Block'Elab_Spec;
      E174 := E174 + 1;
      System.Finalization_Root'Elab_Spec;
      E165 := E165 + 1;
      Ada.Finalization'Elab_Spec;
      E161 := E161 + 1;
      System.File_Io'Elab_Body;
      E173 := E173 + 1;
      Ada.Streams.Stream_Io'Elab_Spec;
      E261 := E261 + 1;
      System.Storage_Pools'Elab_Spec;
      E212 := E212 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Finalization_Masters'Elab_Body;
      E216 := E216 + 1;
      System.Storage_Pools.Subpools'Elab_Spec;
      E214 := E214 + 1;
      Ada.Strings.Unbounded'Elab_Spec;
      E232 := E232 + 1;
      Ada.Calendar'Elab_Spec;
      Ada.Calendar'Elab_Body;
      E296 := E296 + 1;
      Ada.Calendar.Delays'Elab_Body;
      E320 := E320 + 1;
      Ada.Real_Time'Elab_Spec;
      Ada.Real_Time'Elab_Body;
      E097 := E097 + 1;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E169 := E169 + 1;
      System.Assertions'Elab_Spec;
      E184 := E184 + 1;
      System.Pool_Global'Elab_Spec;
      E208 := E208 + 1;
      System.Random_Seed'Elab_Body;
      E354 := E354 + 1;
      System.Tasking.Initialization'Elab_Body;
      E144 := E144 + 1;
      System.Tasking.Protected_Objects'Elab_Body;
      E154 := E154 + 1;
      System.Tasking.Protected_Objects.Entries'Elab_Spec;
      E158 := E158 + 1;
      System.Tasking.Queuing'Elab_Body;
      E152 := E152 + 1;
      System.Tasking.Stages'Elab_Body;
      E408 := E408 + 1;
      System.Tasking.Async_Delays'Elab_Body;
      E417 := E417 + 1;
      Barrier_Type'Elab_Spec;
      E394 := E394 + 1;
      E286 := E286 + 1;
      E138 := E138 + 1;
      E381 := E381 + 1;
      E190 := E190 + 1;
      GL.BUFFER'ELAB_SPEC;
      E222 := E222 + 1;
      GL.IO'ELAB_SPEC;
      GL.IO'ELAB_BODY;
      E257 := E257 + 1;
      E265 := E265 + 1;
      GL.MATH'ELAB_BODY;
      E240 := E240 + 1;
      GL.GEOMETRY'ELAB_SPEC;
      E230 := E230 + 1;
      E308 := E308 + 1;
      E201 := E201 + 1;
      GL.ERRORS'ELAB_SPEC;
      E199 := E199 + 1;
      GL.TEXTURES'ELAB_SPEC;
      GL.TEXTURES'ELAB_BODY;
      E255 := E255 + 1;
      GL.BUFFER.TEXTURE_COORDS'ELAB_SPEC;
      E226 := E226 + 1;
      GL.SKINS'ELAB_SPEC;
      GL.SKINS'ELAB_BODY;
      E205 := E205 + 1;
      E310 := E310 + 1;
      GLUT'ELAB_BODY;
      E314 := E314 + 1;
      E312 := E312 + 1;
      E176 := E176 + 1;
      Graphics_Framerates'Elab_Body;
      E318 := E318 + 1;
      E325 := E325 + 1;
      E327 := E327 + 1;
      E374 := E374 + 1;
      E329 := E329 + 1;
      E421 := E421 + 1;
      E423 := E423 + 1;
      Zip_Streams'Elab_Spec;
      Zip'Elab_Spec;
      Zip_Streams'Elab_Body;
      E294 := E294 + 1;
      Zip.Headers'Elab_Spec;
      E292 := E292 + 1;
      E290 := E290 + 1;
      E298 := E298 + 1;
      Unzip'Elab_Spec;
      Unzip.Decompress.Huffman'Elab_Spec;
      E288 := E288 + 1;
      E282 := E282 + 1;
      E284 := E284 + 1;
      Unzip.Streams'Elab_Spec;
      Unzip.Streams'Elab_Body;
      E300 := E300 + 1;
      GLOBE_3D'ELAB_SPEC;
      GLOBE_3D.TEXTURES'ELAB_SPEC;
      E269 := E269 + 1;
      GLOBE_3D.MATH'ELAB_BODY;
      E267 := E267 + 1;
      GLOBE_3D.TEXTURES'ELAB_BODY;
      E273 := E273 + 1;
      GLOBE_3D'ELAB_BODY;
      E193 := E193 + 1;
      E271 := E271 + 1;
      E370 := E370 + 1;
      GLUT.DEVICES'ELAB_SPEC;
      Game_Control'Elab_Spec;
      E368 := E368 + 1;
      E366 := E366 + 1;
      GLUT.WINDOWS'ELAB_SPEC;
      GLUT.WINDOWS'ELAB_BODY;
      E364 := E364 + 1;
      E362 := E362 + 1;
      Graphics_Structures'Elab_Spec;
      E321 := E321 + 1;
      Graphics_Configuration'Elab_Spec;
      E188 := E188 + 1;
      Keyboard'Elab_Spec;
      E372 := E372 + 1;
      E343 := E343 + 1;
      E345 := E345 + 1;
      Models'Elab_Spec;
      Models'Elab_Body;
      E341 := E341 + 1;
      Graphics_Data'Elab_Spec;
      E339 := E339 + 1;
      E358 := E358 + 1;
      Graphics_Opengl'Elab_Body;
      E348 := E348 + 1;
      Swarm_Structures_Base'Elab_Spec;
      E379 := E379 + 1;
      Swarm_Configurations'Elab_Spec;
      E378 := E378 + 1;
      Swarm_Configuration'Elab_Spec;
      E376 := E376 + 1;
      E398 := E398 + 1;
      Vehicle_Protected_Message_Queue'Elab_Spec;
      E415 := E415 + 1;
      Swarm_Structures'Elab_Spec;
      E392 := E392 + 1;
      Vehicle_Interface'Elab_Spec;
      Swarm_Data'Elab_Spec;
      E390 := E390 + 1;
      Swarm_Control'Elab_Spec;
      E389 := E389 + 1;
      Vehicle_Task_Type'Elab_Body;
      E401 := E401 + 1;
      E413 := E413 + 1;
      E428 := E428 + 1;
      Callback_Procedures'Elab_Body;
      E095 := E095 + 1;
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
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\barrier_type.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\bzip2.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\exceptions.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\generic_protected.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\generic_realtime_buffer.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\gl-extended.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\gl.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\gl-buffer.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\gl-io.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\gl-materials.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\gl-math.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\gl-geometry.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\gl-frustums.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\glu.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\gl-errors.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\gl-buffer-general.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\gl-textures.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\gl-buffer-texture_coords.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\gl-skins.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\gl-skinned_geometry.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\glut.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\glut_2d.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\real_type.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\generic_sliding_statistics.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\graphics_framerates.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\matrices.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\quaternions.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\screenshots.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\vectors_xd.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\vectors_2d.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\vectors_3d.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\rotations.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\vectors_3d_lf.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\vectors_4d.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\vectors_xd_i.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\vectors_2d_i.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\vectors_2d_n.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\vectors_2d_p.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\vectors_conversions.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\zip_streams.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\zip-headers.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\zip.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\zip-crc.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\unzip-decompress-huffman.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\unzip.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\unzip-decompress.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\unzip-streams.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\globe_3d-options.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\globe_3d-math.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\globe_3d-textures.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\globe_3d.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\globe_3d-portals.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\globe_3d-software_anti_aliasing.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\globe_3d-stars_sky.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\game_control.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\actors.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\glut-windows.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\glut-devices.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\graphics_structures.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\graphics_configuration.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\keyboard.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\spaceship_p.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\sphere_p.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\models.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\graphics_data.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\graphics_setup.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\graphics_opengl.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\swarm_structures_base.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\shared_message_structure.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\swarm_configurations.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\swarm_configuration.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\vehicle_message_type.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\vehicle_protected_message_queue.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\swarm_structures.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\swarm_data.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\swarm_control.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\vehicle_task_type.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\vehicle_interface.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\swarm_control_concurrent_generic.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\callback_procedures.o
   --   C:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\swarm.o
   --   -LC:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\
   --   -LC:\Users\huang\Documents\ANU YEAR 2\COMP2310\COMP2310_Ass1\Ass1\Assignment_1_template\Build\for_development\
   --   -LC:/gnat/2017_32/lib/gcc/i686-pc-mingw32/6.3.1/adalib/
   --   -static
   --   -lgnarl
   --   -lgnat
   --   -Xlinker
   --   --stack=0x200000,0x1000
   --   -mthreads
   --   -Wl,--stack=0x2000000
--  END Object file/option list   

end ada_main;
