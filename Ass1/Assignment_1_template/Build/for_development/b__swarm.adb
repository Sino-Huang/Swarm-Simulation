pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__swarm.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__swarm.adb");
pragma Suppress (Overflow_Check);

with System.Restrictions;
with Ada.Exceptions;

package body ada_main is

   E073 : Short_Integer; pragma Import (Ada, E073, "system__os_lib_E");
   E011 : Short_Integer; pragma Import (Ada, E011, "system__soft_links_E");
   E021 : Short_Integer; pragma Import (Ada, E021, "system__exception_table_E");
   E068 : Short_Integer; pragma Import (Ada, E068, "ada__io_exceptions_E");
   E053 : Short_Integer; pragma Import (Ada, E053, "ada__strings_E");
   E036 : Short_Integer; pragma Import (Ada, E036, "ada__containers_E");
   E023 : Short_Integer; pragma Import (Ada, E023, "system__exceptions_E");
   E015 : Short_Integer; pragma Import (Ada, E015, "system__secondary_stack_E");
   E055 : Short_Integer; pragma Import (Ada, E055, "ada__strings__maps_E");
   E059 : Short_Integer; pragma Import (Ada, E059, "ada__strings__maps__constants_E");
   E041 : Short_Integer; pragma Import (Ada, E041, "interfaces__c_E");
   E079 : Short_Integer; pragma Import (Ada, E079, "system__object_reader_E");
   E048 : Short_Integer; pragma Import (Ada, E048, "system__dwarf_lines_E");
   E035 : Short_Integer; pragma Import (Ada, E035, "system__traceback__symbolic_E");
   E176 : Short_Integer; pragma Import (Ada, E176, "ada__numerics_E");
   E130 : Short_Integer; pragma Import (Ada, E130, "ada__tags_E");
   E161 : Short_Integer; pragma Import (Ada, E161, "ada__streams_E");
   E191 : Short_Integer; pragma Import (Ada, E191, "interfaces__c__strings_E");
   E172 : Short_Integer; pragma Import (Ada, E172, "system__file_control_block_E");
   E163 : Short_Integer; pragma Import (Ada, E163, "system__finalization_root_E");
   E159 : Short_Integer; pragma Import (Ada, E159, "ada__finalization_E");
   E171 : Short_Integer; pragma Import (Ada, E171, "system__file_io_E");
   E261 : Short_Integer; pragma Import (Ada, E261, "ada__streams__stream_io_E");
   E212 : Short_Integer; pragma Import (Ada, E212, "system__storage_pools_E");
   E216 : Short_Integer; pragma Import (Ada, E216, "system__finalization_masters_E");
   E214 : Short_Integer; pragma Import (Ada, E214, "system__storage_pools__subpools_E");
   E232 : Short_Integer; pragma Import (Ada, E232, "ada__strings__unbounded_E");
   E116 : Short_Integer; pragma Import (Ada, E116, "system__task_info_E");
   E108 : Short_Integer; pragma Import (Ada, E108, "system__task_primitives__operations_E");
   E296 : Short_Integer; pragma Import (Ada, E296, "ada__calendar_E");
   E320 : Short_Integer; pragma Import (Ada, E320, "ada__calendar__delays_E");
   E099 : Short_Integer; pragma Import (Ada, E099, "ada__real_time_E");
   E167 : Short_Integer; pragma Import (Ada, E167, "ada__text_io_E");
   E182 : Short_Integer; pragma Import (Ada, E182, "system__assertions_E");
   E208 : Short_Integer; pragma Import (Ada, E208, "system__pool_global_E");
   E354 : Short_Integer; pragma Import (Ada, E354, "system__random_seed_E");
   E142 : Short_Integer; pragma Import (Ada, E142, "system__tasking__initialization_E");
   E152 : Short_Integer; pragma Import (Ada, E152, "system__tasking__protected_objects_E");
   E156 : Short_Integer; pragma Import (Ada, E156, "system__tasking__protected_objects__entries_E");
   E150 : Short_Integer; pragma Import (Ada, E150, "system__tasking__queuing_E");
   E408 : Short_Integer; pragma Import (Ada, E408, "system__tasking__stages_E");
   E415 : Short_Integer; pragma Import (Ada, E415, "system__interrupt_management__operations_E");
   E413 : Short_Integer; pragma Import (Ada, E413, "system__tasking__async_delays_E");
   E396 : Short_Integer; pragma Import (Ada, E396, "barrier_type_E");
   E286 : Short_Integer; pragma Import (Ada, E286, "bzip2_E");
   E136 : Short_Integer; pragma Import (Ada, E136, "exceptions_E");
   E383 : Short_Integer; pragma Import (Ada, E383, "generic_protected_E");
   E188 : Short_Integer; pragma Import (Ada, E188, "gl_E");
   E222 : Short_Integer; pragma Import (Ada, E222, "gl__buffer_E");
   E257 : Short_Integer; pragma Import (Ada, E257, "gl__io_E");
   E265 : Short_Integer; pragma Import (Ada, E265, "gl__materials_E");
   E238 : Short_Integer; pragma Import (Ada, E238, "gl__math_E");
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
   E174 : Short_Integer; pragma Import (Ada, E174, "generic_sliding_statistics_E");
   E318 : Short_Integer; pragma Import (Ada, E318, "graphics_framerates_E");
   E325 : Short_Integer; pragma Import (Ada, E325, "matrices_E");
   E327 : Short_Integer; pragma Import (Ada, E327, "quaternions_E");
   E376 : Short_Integer; pragma Import (Ada, E376, "screenshots_E");
   E329 : Short_Integer; pragma Import (Ada, E329, "vectors_3d_E");
   E417 : Short_Integer; pragma Import (Ada, E417, "vectors_3d_lf_E");
   E419 : Short_Integer; pragma Import (Ada, E419, "vectors_conversions_E");
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
   E372 : Short_Integer; pragma Import (Ada, E372, "globe_3d__software_anti_aliasing_E");
   E364 : Short_Integer; pragma Import (Ada, E364, "glut__devices_E");
   E370 : Short_Integer; pragma Import (Ada, E370, "game_control_E");
   E368 : Short_Integer; pragma Import (Ada, E368, "actors_E");
   E366 : Short_Integer; pragma Import (Ada, E366, "glut__windows_E");
   E321 : Short_Integer; pragma Import (Ada, E321, "graphics_structures_E");
   E186 : Short_Integer; pragma Import (Ada, E186, "graphics_configuration_E");
   E374 : Short_Integer; pragma Import (Ada, E374, "keyboard_E");
   E343 : Short_Integer; pragma Import (Ada, E343, "spaceship_p_E");
   E345 : Short_Integer; pragma Import (Ada, E345, "sphere_p_E");
   E341 : Short_Integer; pragma Import (Ada, E341, "models_E");
   E339 : Short_Integer; pragma Import (Ada, E339, "graphics_data_E");
   E360 : Short_Integer; pragma Import (Ada, E360, "graphics_setup_E");
   E348 : Short_Integer; pragma Import (Ada, E348, "graphics_opengl_E");
   E381 : Short_Integer; pragma Import (Ada, E381, "swarm_structures_base_E");
   E380 : Short_Integer; pragma Import (Ada, E380, "swarm_configurations_E");
   E378 : Short_Integer; pragma Import (Ada, E378, "swarm_configuration_E");
   E400 : Short_Integer; pragma Import (Ada, E400, "vehicle_message_type_E");
   E403 : Short_Integer; pragma Import (Ada, E403, "vehicle_task_type_E");
   E411 : Short_Integer; pragma Import (Ada, E411, "vehicle_interface_E");
   E394 : Short_Integer; pragma Import (Ada, E394, "swarm_structures_E");
   E392 : Short_Integer; pragma Import (Ada, E392, "swarm_data_E");
   E391 : Short_Integer; pragma Import (Ada, E391, "swarm_control_E");
   E424 : Short_Integer; pragma Import (Ada, E424, "swarm_control_concurrent_generic_E");
   E097 : Short_Integer; pragma Import (Ada, E097, "callback_procedures_E");

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      E411 := E411 - 1;
      E391 := E391 - 1;
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
         E392 := E392 - 1;
         F2;
      end;
      E394 := E394 - 1;
      declare
         procedure F3;
         pragma Import (Ada, F3, "swarm_structures__finalize_spec");
      begin
         F3;
      end;
      declare
         procedure F4;
         pragma Import (Ada, F4, "vehicle_interface__finalize_spec");
      begin
         F4;
      end;
      declare
         procedure F5;
         pragma Import (Ada, F5, "swarm_structures_base__finalize_spec");
      begin
         E381 := E381 - 1;
         F5;
      end;
      declare
         procedure F6;
         pragma Import (Ada, F6, "graphics_structures__finalize_spec");
      begin
         E321 := E321 - 1;
         F6;
      end;
      E366 := E366 - 1;
      declare
         procedure F7;
         pragma Import (Ada, F7, "glut__windows__finalize_spec");
      begin
         F7;
      end;
      E193 := E193 - 1;
      declare
         procedure F8;
         pragma Import (Ada, F8, "globe_3d__textures__finalize_body");
      begin
         E273 := E273 - 1;
         F8;
      end;
      declare
         procedure F9;
         pragma Import (Ada, F9, "globe_3d__finalize_spec");
      begin
         F9;
      end;
      E300 := E300 - 1;
      declare
         procedure F10;
         pragma Import (Ada, F10, "unzip__streams__finalize_spec");
      begin
         F10;
      end;
      E294 := E294 - 1;
      declare
         procedure F11;
         pragma Import (Ada, F11, "zip_streams__finalize_spec");
      begin
         F11;
      end;
      declare
         procedure F12;
         pragma Import (Ada, F12, "glut__finalize_body");
      begin
         E314 := E314 - 1;
         F12;
      end;
      E205 := E205 - 1;
      declare
         procedure F13;
         pragma Import (Ada, F13, "gl__skins__finalize_spec");
      begin
         F13;
      end;
      E255 := E255 - 1;
      declare
         procedure F14;
         pragma Import (Ada, F14, "gl__textures__finalize_spec");
      begin
         F14;
      end;
      E230 := E230 - 1;
      declare
         procedure F15;
         pragma Import (Ada, F15, "gl__geometry__finalize_spec");
      begin
         F15;
      end;
      E222 := E222 - 1;
      declare
         procedure F16;
         pragma Import (Ada, F16, "gl__buffer__finalize_spec");
      begin
         F16;
      end;
      E396 := E396 - 1;
      declare
         procedure F17;
         pragma Import (Ada, F17, "barrier_type__finalize_spec");
      begin
         F17;
      end;
      E156 := E156 - 1;
      declare
         procedure F18;
         pragma Import (Ada, F18, "system__tasking__protected_objects__entries__finalize_spec");
      begin
         F18;
      end;
      E208 := E208 - 1;
      declare
         procedure F19;
         pragma Import (Ada, F19, "system__pool_global__finalize_spec");
      begin
         F19;
      end;
      E167 := E167 - 1;
      declare
         procedure F20;
         pragma Import (Ada, F20, "ada__text_io__finalize_spec");
      begin
         F20;
      end;
      E232 := E232 - 1;
      declare
         procedure F21;
         pragma Import (Ada, F21, "ada__strings__unbounded__finalize_spec");
      begin
         F21;
      end;
      E214 := E214 - 1;
      declare
         procedure F22;
         pragma Import (Ada, F22, "system__storage_pools__subpools__finalize_spec");
      begin
         F22;
      end;
      E216 := E216 - 1;
      declare
         procedure F23;
         pragma Import (Ada, F23, "system__finalization_masters__finalize_spec");
      begin
         F23;
      end;
      E261 := E261 - 1;
      declare
         procedure F24;
         pragma Import (Ada, F24, "ada__streams__stream_io__finalize_spec");
      begin
         F24;
      end;
      declare
         procedure F25;
         pragma Import (Ada, F25, "system__file_io__finalize_body");
      begin
         E171 := E171 - 1;
         F25;
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
           False, False, False, True, True, False, True, True, 
           False, True, True, True, True, False, True, True, 
           False, False, True, False, True, True, False, True, 
           True, True, True, False, True, True, True, True, 
           False, True, True, False, True, True, False, True, 
           True, False, True, True, True, True, True, False, 
           False, True, False, True, True, True, False, True, 
           True, False, True, True, True, True, False, True, 
           True, False, False, False, True, True, True, True, 
           True, True, False),
         Count => (0, 0, 0, 1, 2, 1, 4, 2, 7, 0),
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
      E068 := E068 + 1;
      Ada.Strings'Elab_Spec;
      E053 := E053 + 1;
      Ada.Containers'Elab_Spec;
      E036 := E036 + 1;
      System.Exceptions'Elab_Spec;
      E023 := E023 + 1;
      System.Soft_Links'Elab_Body;
      E011 := E011 + 1;
      System.Os_Lib'Elab_Body;
      E073 := E073 + 1;
      Ada.Strings.Maps'Elab_Spec;
      Ada.Strings.Maps.Constants'Elab_Spec;
      E059 := E059 + 1;
      Interfaces.C'Elab_Spec;
      System.Secondary_Stack'Elab_Body;
      E015 := E015 + 1;
      E055 := E055 + 1;
      E041 := E041 + 1;
      System.Object_Reader'Elab_Spec;
      System.Dwarf_Lines'Elab_Spec;
      E048 := E048 + 1;
      System.Traceback.Symbolic'Elab_Body;
      E035 := E035 + 1;
      E079 := E079 + 1;
      Ada.Numerics'Elab_Spec;
      E176 := E176 + 1;
      Ada.Tags'Elab_Spec;
      Ada.Tags'Elab_Body;
      E130 := E130 + 1;
      Ada.Streams'Elab_Spec;
      E161 := E161 + 1;
      Interfaces.C.Strings'Elab_Spec;
      E191 := E191 + 1;
      System.File_Control_Block'Elab_Spec;
      E172 := E172 + 1;
      System.Finalization_Root'Elab_Spec;
      E163 := E163 + 1;
      Ada.Finalization'Elab_Spec;
      E159 := E159 + 1;
      System.File_Io'Elab_Body;
      E171 := E171 + 1;
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
      System.Task_Info'Elab_Spec;
      E116 := E116 + 1;
      System.Task_Primitives.Operations'Elab_Body;
      E108 := E108 + 1;
      Ada.Calendar'Elab_Spec;
      Ada.Calendar'Elab_Body;
      E296 := E296 + 1;
      Ada.Calendar.Delays'Elab_Body;
      E320 := E320 + 1;
      Ada.Real_Time'Elab_Spec;
      Ada.Real_Time'Elab_Body;
      E099 := E099 + 1;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E167 := E167 + 1;
      System.Assertions'Elab_Spec;
      E182 := E182 + 1;
      System.Pool_Global'Elab_Spec;
      E208 := E208 + 1;
      System.Random_Seed'Elab_Body;
      E354 := E354 + 1;
      System.Tasking.Initialization'Elab_Body;
      E142 := E142 + 1;
      System.Tasking.Protected_Objects'Elab_Body;
      E152 := E152 + 1;
      System.Tasking.Protected_Objects.Entries'Elab_Spec;
      E156 := E156 + 1;
      System.Tasking.Queuing'Elab_Body;
      E150 := E150 + 1;
      System.Tasking.Stages'Elab_Body;
      E408 := E408 + 1;
      System.Interrupt_Management.Operations'Elab_Body;
      E415 := E415 + 1;
      System.Tasking.Async_Delays'Elab_Body;
      E413 := E413 + 1;
      Barrier_Type'Elab_Spec;
      E396 := E396 + 1;
      E286 := E286 + 1;
      E136 := E136 + 1;
      E383 := E383 + 1;
      E188 := E188 + 1;
      GL.BUFFER'ELAB_SPEC;
      E222 := E222 + 1;
      GL.IO'ELAB_SPEC;
      GL.IO'ELAB_BODY;
      E257 := E257 + 1;
      E265 := E265 + 1;
      GL.MATH'ELAB_BODY;
      E238 := E238 + 1;
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
      E174 := E174 + 1;
      Graphics_Framerates'Elab_Body;
      E318 := E318 + 1;
      E325 := E325 + 1;
      E327 := E327 + 1;
      E376 := E376 + 1;
      E329 := E329 + 1;
      E417 := E417 + 1;
      E419 := E419 + 1;
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
      E372 := E372 + 1;
      GLUT.DEVICES'ELAB_SPEC;
      Game_Control'Elab_Spec;
      E370 := E370 + 1;
      E368 := E368 + 1;
      GLUT.WINDOWS'ELAB_SPEC;
      GLUT.WINDOWS'ELAB_BODY;
      E366 := E366 + 1;
      E364 := E364 + 1;
      Graphics_Structures'Elab_Spec;
      E321 := E321 + 1;
      Graphics_Configuration'Elab_Spec;
      E186 := E186 + 1;
      Keyboard'Elab_Spec;
      E374 := E374 + 1;
      E343 := E343 + 1;
      E345 := E345 + 1;
      Models'Elab_Spec;
      Models'Elab_Body;
      E341 := E341 + 1;
      Graphics_Data'Elab_Spec;
      E339 := E339 + 1;
      E360 := E360 + 1;
      Graphics_Opengl'Elab_Body;
      E348 := E348 + 1;
      Swarm_Structures_Base'Elab_Spec;
      E381 := E381 + 1;
      Swarm_Configurations'Elab_Spec;
      E380 := E380 + 1;
      Swarm_Configuration'Elab_Spec;
      E378 := E378 + 1;
      E400 := E400 + 1;
      Vehicle_Interface'Elab_Spec;
      Swarm_Structures'Elab_Spec;
      E394 := E394 + 1;
      Swarm_Data'Elab_Spec;
      E392 := E392 + 1;
      Swarm_Control'Elab_Spec;
      E391 := E391 + 1;
      E411 := E411 + 1;
      Vehicle_Task_Type'Elab_Body;
      E403 := E403 + 1;
      E424 := E424 + 1;
      Callback_Procedures'Elab_Body;
      E097 := E097 + 1;
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
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/barrier_type.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/bzip2.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/exceptions.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/generic_protected.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/generic_realtime_buffer.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/gl-extended.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/gl.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/gl-buffer.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/gl-io.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/gl-materials.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/gl-math.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/gl-geometry.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/gl-frustums.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/glu.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/gl-errors.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/gl-buffer-general.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/gl-textures.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/gl-buffer-texture_coords.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/gl-skins.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/gl-skinned_geometry.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/glut.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/glut_2d.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/real_type.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/generic_sliding_statistics.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/graphics_framerates.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/matrices.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/quaternions.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/screenshots.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/vectors_xd.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/vectors_2d.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/vectors_3d.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/rotations.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/vectors_3d_lf.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/vectors_4d.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/vectors_xd_i.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/vectors_2d_i.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/vectors_2d_n.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/vectors_2d_p.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/vectors_conversions.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/vehicle_behaviour.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/zip_streams.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/zip-headers.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/zip.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/zip-crc.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/unzip-decompress-huffman.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/unzip.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/unzip-decompress.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/unzip-streams.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/globe_3d-options.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/globe_3d-math.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/globe_3d-textures.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/globe_3d.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/globe_3d-portals.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/globe_3d-software_anti_aliasing.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/globe_3d-stars_sky.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/game_control.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/actors.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/glut-windows.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/glut-devices.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/graphics_structures.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/graphics_configuration.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/keyboard.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/spaceship_p.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/sphere_p.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/models.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/graphics_data.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/graphics_setup.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/graphics_opengl.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/swarm_structures_base.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/shared_message_structure.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/swarm_configurations.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/swarm_configuration.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/vehicle_message_type.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/swarm_structures.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/swarm_data.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/swarm_control.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/vehicle_interface.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/vehicle_task_type.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/swarm_control_concurrent_generic.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/callback_procedures.o
   --   /students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/swarm.o
   --   -L/students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/
   --   -L/students/u6492211/Documents/COMP2310/COMP2310_Ass1/Ass1/Assignment_1_template/Build/for_development/
   --   -L/lab/usr/local/gnat/lib/gcc/x86_64-pc-linux-gnu/6.3.1/adalib/
   --   -static
   --   -lgnarl
   --   -lgnat
   --   -lpthread
   --   -lrt
   --   -ldl
--  END Object file/option list   

end ada_main;
