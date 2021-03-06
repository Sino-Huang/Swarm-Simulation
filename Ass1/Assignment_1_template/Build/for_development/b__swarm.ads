pragma Warnings (Off);
pragma Ada_95;
with System;
package ada_main is

   gnat_argc : Integer;
   gnat_argv : System.Address;
   gnat_envp : System.Address;

   pragma Import (C, gnat_argc);
   pragma Import (C, gnat_argv);
   pragma Import (C, gnat_envp);

   gnat_exit_status : Integer;
   pragma Import (C, gnat_exit_status);

   GNAT_Version : constant String :=
                    "GNAT Version: GPL 2017 (20170515-63)" & ASCII.NUL;
   pragma Export (C, GNAT_Version, "__gnat_version");

   Ada_Main_Program_Name : constant String := "_ada_swarm" & ASCII.NUL;
   pragma Export (C, Ada_Main_Program_Name, "__gnat_ada_main_program_name");

   procedure adainit;
   pragma Export (C, adainit, "adainit");

   procedure adafinal;
   pragma Export (C, adafinal, "adafinal");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer;
   pragma Export (C, main, "main");

   type Version_32 is mod 2 ** 32;
   u00001 : constant Version_32 := 16#ad48adf9#;
   pragma Export (C, u00001, "swarmB");
   u00002 : constant Version_32 := 16#b6df930e#;
   pragma Export (C, u00002, "system__standard_libraryB");
   u00003 : constant Version_32 := 16#0a55feef#;
   pragma Export (C, u00003, "system__standard_libraryS");
   u00004 : constant Version_32 := 16#85a06f66#;
   pragma Export (C, u00004, "ada__exceptionsB");
   u00005 : constant Version_32 := 16#1a0dcc03#;
   pragma Export (C, u00005, "ada__exceptionsS");
   u00006 : constant Version_32 := 16#76789da1#;
   pragma Export (C, u00006, "adaS");
   u00007 : constant Version_32 := 16#e947e6a9#;
   pragma Export (C, u00007, "ada__exceptions__last_chance_handlerB");
   u00008 : constant Version_32 := 16#41e5552e#;
   pragma Export (C, u00008, "ada__exceptions__last_chance_handlerS");
   u00009 : constant Version_32 := 16#32a08138#;
   pragma Export (C, u00009, "systemS");
   u00010 : constant Version_32 := 16#4e7785b8#;
   pragma Export (C, u00010, "system__soft_linksB");
   u00011 : constant Version_32 := 16#ac24596d#;
   pragma Export (C, u00011, "system__soft_linksS");
   u00012 : constant Version_32 := 16#b01dad17#;
   pragma Export (C, u00012, "system__parametersB");
   u00013 : constant Version_32 := 16#4c8a8c47#;
   pragma Export (C, u00013, "system__parametersS");
   u00014 : constant Version_32 := 16#30ad09e5#;
   pragma Export (C, u00014, "system__secondary_stackB");
   u00015 : constant Version_32 := 16#88327e42#;
   pragma Export (C, u00015, "system__secondary_stackS");
   u00016 : constant Version_32 := 16#f103f468#;
   pragma Export (C, u00016, "system__storage_elementsB");
   u00017 : constant Version_32 := 16#1f63cb3c#;
   pragma Export (C, u00017, "system__storage_elementsS");
   u00018 : constant Version_32 := 16#41837d1e#;
   pragma Export (C, u00018, "system__stack_checkingB");
   u00019 : constant Version_32 := 16#bc1fead0#;
   pragma Export (C, u00019, "system__stack_checkingS");
   u00020 : constant Version_32 := 16#87a448ff#;
   pragma Export (C, u00020, "system__exception_tableB");
   u00021 : constant Version_32 := 16#6f0ee87a#;
   pragma Export (C, u00021, "system__exception_tableS");
   u00022 : constant Version_32 := 16#ce4af020#;
   pragma Export (C, u00022, "system__exceptionsB");
   u00023 : constant Version_32 := 16#5ac3ecce#;
   pragma Export (C, u00023, "system__exceptionsS");
   u00024 : constant Version_32 := 16#80916427#;
   pragma Export (C, u00024, "system__exceptions__machineB");
   u00025 : constant Version_32 := 16#047ef179#;
   pragma Export (C, u00025, "system__exceptions__machineS");
   u00026 : constant Version_32 := 16#aa0563fc#;
   pragma Export (C, u00026, "system__exceptions_debugB");
   u00027 : constant Version_32 := 16#4c2a78fc#;
   pragma Export (C, u00027, "system__exceptions_debugS");
   u00028 : constant Version_32 := 16#6c2f8802#;
   pragma Export (C, u00028, "system__img_intB");
   u00029 : constant Version_32 := 16#307b61fa#;
   pragma Export (C, u00029, "system__img_intS");
   u00030 : constant Version_32 := 16#39df8c17#;
   pragma Export (C, u00030, "system__tracebackB");
   u00031 : constant Version_32 := 16#6c825ffc#;
   pragma Export (C, u00031, "system__tracebackS");
   u00032 : constant Version_32 := 16#9ed49525#;
   pragma Export (C, u00032, "system__traceback_entriesB");
   u00033 : constant Version_32 := 16#32fb7748#;
   pragma Export (C, u00033, "system__traceback_entriesS");
   u00034 : constant Version_32 := 16#18d5fcc5#;
   pragma Export (C, u00034, "system__traceback__symbolicB");
   u00035 : constant Version_32 := 16#9df1ae6d#;
   pragma Export (C, u00035, "system__traceback__symbolicS");
   u00036 : constant Version_32 := 16#179d7d28#;
   pragma Export (C, u00036, "ada__containersS");
   u00037 : constant Version_32 := 16#701f9d88#;
   pragma Export (C, u00037, "ada__exceptions__tracebackB");
   u00038 : constant Version_32 := 16#20245e75#;
   pragma Export (C, u00038, "ada__exceptions__tracebackS");
   u00039 : constant Version_32 := 16#e865e681#;
   pragma Export (C, u00039, "system__bounded_stringsB");
   u00040 : constant Version_32 := 16#455da021#;
   pragma Export (C, u00040, "system__bounded_stringsS");
   u00041 : constant Version_32 := 16#42315736#;
   pragma Export (C, u00041, "system__crtlS");
   u00042 : constant Version_32 := 16#08e0d717#;
   pragma Export (C, u00042, "system__dwarf_linesB");
   u00043 : constant Version_32 := 16#b1bd2788#;
   pragma Export (C, u00043, "system__dwarf_linesS");
   u00044 : constant Version_32 := 16#5b4659fa#;
   pragma Export (C, u00044, "ada__charactersS");
   u00045 : constant Version_32 := 16#8f637df8#;
   pragma Export (C, u00045, "ada__characters__handlingB");
   u00046 : constant Version_32 := 16#3b3f6154#;
   pragma Export (C, u00046, "ada__characters__handlingS");
   u00047 : constant Version_32 := 16#4b7bb96a#;
   pragma Export (C, u00047, "ada__characters__latin_1S");
   u00048 : constant Version_32 := 16#e6d4fa36#;
   pragma Export (C, u00048, "ada__stringsS");
   u00049 : constant Version_32 := 16#e2ea8656#;
   pragma Export (C, u00049, "ada__strings__mapsB");
   u00050 : constant Version_32 := 16#1e526bec#;
   pragma Export (C, u00050, "ada__strings__mapsS");
   u00051 : constant Version_32 := 16#9dc9b435#;
   pragma Export (C, u00051, "system__bit_opsB");
   u00052 : constant Version_32 := 16#0765e3a3#;
   pragma Export (C, u00052, "system__bit_opsS");
   u00053 : constant Version_32 := 16#0626fdbb#;
   pragma Export (C, u00053, "system__unsigned_typesS");
   u00054 : constant Version_32 := 16#92f05f13#;
   pragma Export (C, u00054, "ada__strings__maps__constantsS");
   u00055 : constant Version_32 := 16#5ab55268#;
   pragma Export (C, u00055, "interfacesS");
   u00056 : constant Version_32 := 16#9f00b3d3#;
   pragma Export (C, u00056, "system__address_imageB");
   u00057 : constant Version_32 := 16#934c1c02#;
   pragma Export (C, u00057, "system__address_imageS");
   u00058 : constant Version_32 := 16#ec78c2bf#;
   pragma Export (C, u00058, "system__img_unsB");
   u00059 : constant Version_32 := 16#99d2c14c#;
   pragma Export (C, u00059, "system__img_unsS");
   u00060 : constant Version_32 := 16#d7aac20c#;
   pragma Export (C, u00060, "system__ioB");
   u00061 : constant Version_32 := 16#ace27677#;
   pragma Export (C, u00061, "system__ioS");
   u00062 : constant Version_32 := 16#11faaec1#;
   pragma Export (C, u00062, "system__mmapB");
   u00063 : constant Version_32 := 16#08d13e5f#;
   pragma Export (C, u00063, "system__mmapS");
   u00064 : constant Version_32 := 16#92d882c5#;
   pragma Export (C, u00064, "ada__io_exceptionsS");
   u00065 : constant Version_32 := 16#9d8ecedc#;
   pragma Export (C, u00065, "system__mmap__os_interfaceB");
   u00066 : constant Version_32 := 16#8f4541b8#;
   pragma Export (C, u00066, "system__mmap__os_interfaceS");
   u00067 : constant Version_32 := 16#54632e7c#;
   pragma Export (C, u00067, "system__os_libB");
   u00068 : constant Version_32 := 16#ed466fde#;
   pragma Export (C, u00068, "system__os_libS");
   u00069 : constant Version_32 := 16#d1060688#;
   pragma Export (C, u00069, "system__case_utilB");
   u00070 : constant Version_32 := 16#16a9e8ef#;
   pragma Export (C, u00070, "system__case_utilS");
   u00071 : constant Version_32 := 16#2a8e89ad#;
   pragma Export (C, u00071, "system__stringsB");
   u00072 : constant Version_32 := 16#4c1f905e#;
   pragma Export (C, u00072, "system__stringsS");
   u00073 : constant Version_32 := 16#769e25e6#;
   pragma Export (C, u00073, "interfaces__cB");
   u00074 : constant Version_32 := 16#70be4e8c#;
   pragma Export (C, u00074, "interfaces__cS");
   u00075 : constant Version_32 := 16#d0bc914c#;
   pragma Export (C, u00075, "system__object_readerB");
   u00076 : constant Version_32 := 16#7f932442#;
   pragma Export (C, u00076, "system__object_readerS");
   u00077 : constant Version_32 := 16#1a74a354#;
   pragma Export (C, u00077, "system__val_lliB");
   u00078 : constant Version_32 := 16#a8846798#;
   pragma Export (C, u00078, "system__val_lliS");
   u00079 : constant Version_32 := 16#afdbf393#;
   pragma Export (C, u00079, "system__val_lluB");
   u00080 : constant Version_32 := 16#7cd4aac9#;
   pragma Export (C, u00080, "system__val_lluS");
   u00081 : constant Version_32 := 16#27b600b2#;
   pragma Export (C, u00081, "system__val_utilB");
   u00082 : constant Version_32 := 16#9e0037c6#;
   pragma Export (C, u00082, "system__val_utilS");
   u00083 : constant Version_32 := 16#5bbc3f2f#;
   pragma Export (C, u00083, "system__exception_tracesB");
   u00084 : constant Version_32 := 16#167fa1a2#;
   pragma Export (C, u00084, "system__exception_tracesS");
   u00085 : constant Version_32 := 16#d178f226#;
   pragma Export (C, u00085, "system__win32S");
   u00086 : constant Version_32 := 16#8c33a517#;
   pragma Export (C, u00086, "system__wch_conB");
   u00087 : constant Version_32 := 16#29dda3ea#;
   pragma Export (C, u00087, "system__wch_conS");
   u00088 : constant Version_32 := 16#9721e840#;
   pragma Export (C, u00088, "system__wch_stwB");
   u00089 : constant Version_32 := 16#04cc8feb#;
   pragma Export (C, u00089, "system__wch_stwS");
   u00090 : constant Version_32 := 16#a831679c#;
   pragma Export (C, u00090, "system__wch_cnvB");
   u00091 : constant Version_32 := 16#266a1919#;
   pragma Export (C, u00091, "system__wch_cnvS");
   u00092 : constant Version_32 := 16#ece6fdb6#;
   pragma Export (C, u00092, "system__wch_jisB");
   u00093 : constant Version_32 := 16#a61a0038#;
   pragma Export (C, u00093, "system__wch_jisS");
   u00094 : constant Version_32 := 16#e6bc1994#;
   pragma Export (C, u00094, "callback_proceduresB");
   u00095 : constant Version_32 := 16#0bb57c0d#;
   pragma Export (C, u00095, "callback_proceduresS");
   u00096 : constant Version_32 := 16#03fc996e#;
   pragma Export (C, u00096, "ada__real_timeB");
   u00097 : constant Version_32 := 16#c3d451b0#;
   pragma Export (C, u00097, "ada__real_timeS");
   u00098 : constant Version_32 := 16#cb56a7b3#;
   pragma Export (C, u00098, "system__taskingB");
   u00099 : constant Version_32 := 16#70384b95#;
   pragma Export (C, u00099, "system__taskingS");
   u00100 : constant Version_32 := 16#c71f56c0#;
   pragma Export (C, u00100, "system__task_primitivesS");
   u00101 : constant Version_32 := 16#fa769fc7#;
   pragma Export (C, u00101, "system__os_interfaceS");
   u00102 : constant Version_32 := 16#22b0e2af#;
   pragma Export (C, u00102, "interfaces__c__stringsB");
   u00103 : constant Version_32 := 16#603c1c44#;
   pragma Export (C, u00103, "interfaces__c__stringsS");
   u00104 : constant Version_32 := 16#fc754292#;
   pragma Export (C, u00104, "system__task_primitives__operationsB");
   u00105 : constant Version_32 := 16#24684c98#;
   pragma Export (C, u00105, "system__task_primitives__operationsS");
   u00106 : constant Version_32 := 16#1b28662b#;
   pragma Export (C, u00106, "system__float_controlB");
   u00107 : constant Version_32 := 16#d25cc204#;
   pragma Export (C, u00107, "system__float_controlS");
   u00108 : constant Version_32 := 16#da8ccc08#;
   pragma Export (C, u00108, "system__interrupt_managementB");
   u00109 : constant Version_32 := 16#0f60a80c#;
   pragma Export (C, u00109, "system__interrupt_managementS");
   u00110 : constant Version_32 := 16#f65595cf#;
   pragma Export (C, u00110, "system__multiprocessorsB");
   u00111 : constant Version_32 := 16#0a0c1e4b#;
   pragma Export (C, u00111, "system__multiprocessorsS");
   u00112 : constant Version_32 := 16#a99e1d66#;
   pragma Export (C, u00112, "system__os_primitivesB");
   u00113 : constant Version_32 := 16#b82f904e#;
   pragma Export (C, u00113, "system__os_primitivesS");
   u00114 : constant Version_32 := 16#b6166bc6#;
   pragma Export (C, u00114, "system__task_lockB");
   u00115 : constant Version_32 := 16#532ab656#;
   pragma Export (C, u00115, "system__task_lockS");
   u00116 : constant Version_32 := 16#1a9147da#;
   pragma Export (C, u00116, "system__win32__extS");
   u00117 : constant Version_32 := 16#77769007#;
   pragma Export (C, u00117, "system__task_infoB");
   u00118 : constant Version_32 := 16#e54688cf#;
   pragma Export (C, u00118, "system__task_infoS");
   u00119 : constant Version_32 := 16#9471a5c6#;
   pragma Export (C, u00119, "system__tasking__debugB");
   u00120 : constant Version_32 := 16#f1f2435f#;
   pragma Export (C, u00120, "system__tasking__debugS");
   u00121 : constant Version_32 := 16#fd83e873#;
   pragma Export (C, u00121, "system__concat_2B");
   u00122 : constant Version_32 := 16#300056e8#;
   pragma Export (C, u00122, "system__concat_2S");
   u00123 : constant Version_32 := 16#2b70b149#;
   pragma Export (C, u00123, "system__concat_3B");
   u00124 : constant Version_32 := 16#39d0dd9d#;
   pragma Export (C, u00124, "system__concat_3S");
   u00125 : constant Version_32 := 16#18e0e51c#;
   pragma Export (C, u00125, "system__img_enum_newB");
   u00126 : constant Version_32 := 16#53ec87f8#;
   pragma Export (C, u00126, "system__img_enum_newS");
   u00127 : constant Version_32 := 16#118e865d#;
   pragma Export (C, u00127, "system__stack_usageB");
   u00128 : constant Version_32 := 16#3a3ac346#;
   pragma Export (C, u00128, "system__stack_usageS");
   u00129 : constant Version_32 := 16#d85792d6#;
   pragma Export (C, u00129, "ada__tagsB");
   u00130 : constant Version_32 := 16#8813468c#;
   pragma Export (C, u00130, "ada__tagsS");
   u00131 : constant Version_32 := 16#c3335bfd#;
   pragma Export (C, u00131, "system__htableB");
   u00132 : constant Version_32 := 16#b66232d2#;
   pragma Export (C, u00132, "system__htableS");
   u00133 : constant Version_32 := 16#089f5cd0#;
   pragma Export (C, u00133, "system__string_hashB");
   u00134 : constant Version_32 := 16#143c59ac#;
   pragma Export (C, u00134, "system__string_hashS");
   u00135 : constant Version_32 := 16#1d9142a4#;
   pragma Export (C, u00135, "system__val_unsB");
   u00136 : constant Version_32 := 16#168e1080#;
   pragma Export (C, u00136, "system__val_unsS");
   u00137 : constant Version_32 := 16#2be191e5#;
   pragma Export (C, u00137, "exceptionsB");
   u00138 : constant Version_32 := 16#bae1bad2#;
   pragma Export (C, u00138, "exceptionsS");
   u00139 : constant Version_32 := 16#b8a4f841#;
   pragma Export (C, u00139, "ada__task_identificationB");
   u00140 : constant Version_32 := 16#874f76c4#;
   pragma Export (C, u00140, "ada__task_identificationS");
   u00141 : constant Version_32 := 16#f9053daa#;
   pragma Export (C, u00141, "system__tasking__utilitiesB");
   u00142 : constant Version_32 := 16#14a33d48#;
   pragma Export (C, u00142, "system__tasking__utilitiesS");
   u00143 : constant Version_32 := 16#bc23950c#;
   pragma Export (C, u00143, "system__tasking__initializationB");
   u00144 : constant Version_32 := 16#efd25374#;
   pragma Export (C, u00144, "system__tasking__initializationS");
   u00145 : constant Version_32 := 16#72fc64c4#;
   pragma Export (C, u00145, "system__soft_links__taskingB");
   u00146 : constant Version_32 := 16#5ae92880#;
   pragma Export (C, u00146, "system__soft_links__taskingS");
   u00147 : constant Version_32 := 16#17d21067#;
   pragma Export (C, u00147, "ada__exceptions__is_null_occurrenceB");
   u00148 : constant Version_32 := 16#e1d7566f#;
   pragma Export (C, u00148, "ada__exceptions__is_null_occurrenceS");
   u00149 : constant Version_32 := 16#e774edef#;
   pragma Export (C, u00149, "system__tasking__task_attributesB");
   u00150 : constant Version_32 := 16#6bc95a13#;
   pragma Export (C, u00150, "system__tasking__task_attributesS");
   u00151 : constant Version_32 := 16#ab2f8f51#;
   pragma Export (C, u00151, "system__tasking__queuingB");
   u00152 : constant Version_32 := 16#d1ba2fcb#;
   pragma Export (C, u00152, "system__tasking__queuingS");
   u00153 : constant Version_32 := 16#8bdfec1d#;
   pragma Export (C, u00153, "system__tasking__protected_objectsB");
   u00154 : constant Version_32 := 16#a9001c61#;
   pragma Export (C, u00154, "system__tasking__protected_objectsS");
   u00155 : constant Version_32 := 16#ee80728a#;
   pragma Export (C, u00155, "system__tracesB");
   u00156 : constant Version_32 := 16#c0bde992#;
   pragma Export (C, u00156, "system__tracesS");
   u00157 : constant Version_32 := 16#17aa7da7#;
   pragma Export (C, u00157, "system__tasking__protected_objects__entriesB");
   u00158 : constant Version_32 := 16#427cf21f#;
   pragma Export (C, u00158, "system__tasking__protected_objects__entriesS");
   u00159 : constant Version_32 := 16#100eaf58#;
   pragma Export (C, u00159, "system__restrictionsB");
   u00160 : constant Version_32 := 16#c1c3a556#;
   pragma Export (C, u00160, "system__restrictionsS");
   u00161 : constant Version_32 := 16#86c56e5a#;
   pragma Export (C, u00161, "ada__finalizationS");
   u00162 : constant Version_32 := 16#10558b11#;
   pragma Export (C, u00162, "ada__streamsB");
   u00163 : constant Version_32 := 16#67e31212#;
   pragma Export (C, u00163, "ada__streamsS");
   u00164 : constant Version_32 := 16#95817ed8#;
   pragma Export (C, u00164, "system__finalization_rootB");
   u00165 : constant Version_32 := 16#7d52f2a8#;
   pragma Export (C, u00165, "system__finalization_rootS");
   u00166 : constant Version_32 := 16#bd6fc52e#;
   pragma Export (C, u00166, "system__traces__taskingB");
   u00167 : constant Version_32 := 16#09f07b39#;
   pragma Export (C, u00167, "system__traces__taskingS");
   u00168 : constant Version_32 := 16#1d1c6062#;
   pragma Export (C, u00168, "ada__text_ioB");
   u00169 : constant Version_32 := 16#95711eac#;
   pragma Export (C, u00169, "ada__text_ioS");
   u00170 : constant Version_32 := 16#4c01b69c#;
   pragma Export (C, u00170, "interfaces__c_streamsB");
   u00171 : constant Version_32 := 16#b1330297#;
   pragma Export (C, u00171, "interfaces__c_streamsS");
   u00172 : constant Version_32 := 16#6f0d52aa#;
   pragma Export (C, u00172, "system__file_ioB");
   u00173 : constant Version_32 := 16#95d1605d#;
   pragma Export (C, u00173, "system__file_ioS");
   u00174 : constant Version_32 := 16#cf3f1b90#;
   pragma Export (C, u00174, "system__file_control_blockS");
   u00175 : constant Version_32 := 16#20095f7e#;
   pragma Export (C, u00175, "generic_sliding_statisticsB");
   u00176 : constant Version_32 := 16#bb10ab49#;
   pragma Export (C, u00176, "generic_sliding_statisticsS");
   u00177 : constant Version_32 := 16#b3a16c8c#;
   pragma Export (C, u00177, "real_typeS");
   u00178 : constant Version_32 := 16#cd2959fb#;
   pragma Export (C, u00178, "ada__numericsS");
   u00179 : constant Version_32 := 16#e5114ee9#;
   pragma Export (C, u00179, "ada__numerics__auxB");
   u00180 : constant Version_32 := 16#9f6e24ed#;
   pragma Export (C, u00180, "ada__numerics__auxS");
   u00181 : constant Version_32 := 16#36373acb#;
   pragma Export (C, u00181, "system__fat_llfS");
   u00182 : constant Version_32 := 16#5fc82639#;
   pragma Export (C, u00182, "system__machine_codeS");
   u00183 : constant Version_32 := 16#52f1910f#;
   pragma Export (C, u00183, "system__assertionsB");
   u00184 : constant Version_32 := 16#ff2dadac#;
   pragma Export (C, u00184, "system__assertionsS");
   u00185 : constant Version_32 := 16#b2a569d2#;
   pragma Export (C, u00185, "system__exn_llfB");
   u00186 : constant Version_32 := 16#8ede3ae4#;
   pragma Export (C, u00186, "system__exn_llfS");
   u00187 : constant Version_32 := 16#4ce79421#;
   pragma Export (C, u00187, "system__fat_lfltS");
   u00188 : constant Version_32 := 16#f86a0784#;
   pragma Export (C, u00188, "graphics_configurationS");
   u00189 : constant Version_32 := 16#07d67a2d#;
   pragma Export (C, u00189, "glB");
   u00190 : constant Version_32 := 16#01ba3211#;
   pragma Export (C, u00190, "glS");
   u00191 : constant Version_32 := 16#ddd0a1d4#;
   pragma Export (C, u00191, "gl__extendedS");
   u00192 : constant Version_32 := 16#5f2161ae#;
   pragma Export (C, u00192, "globe_3dB");
   u00193 : constant Version_32 := 16#8169b3cf#;
   pragma Export (C, u00193, "globe_3dS");
   u00194 : constant Version_32 := 16#e5480ede#;
   pragma Export (C, u00194, "ada__strings__fixedB");
   u00195 : constant Version_32 := 16#a86b22b3#;
   pragma Export (C, u00195, "ada__strings__fixedS");
   u00196 : constant Version_32 := 16#144f64ae#;
   pragma Export (C, u00196, "ada__strings__searchB");
   u00197 : constant Version_32 := 16#c1ab8667#;
   pragma Export (C, u00197, "ada__strings__searchS");
   u00198 : constant Version_32 := 16#138998c6#;
   pragma Export (C, u00198, "gl__errorsB");
   u00199 : constant Version_32 := 16#51391c66#;
   pragma Export (C, u00199, "gl__errorsS");
   u00200 : constant Version_32 := 16#350bfebc#;
   pragma Export (C, u00200, "gluB");
   u00201 : constant Version_32 := 16#f8141e55#;
   pragma Export (C, u00201, "gluS");
   u00202 : constant Version_32 := 16#932a4690#;
   pragma Export (C, u00202, "system__concat_4B");
   u00203 : constant Version_32 := 16#4cc4aa18#;
   pragma Export (C, u00203, "system__concat_4S");
   u00204 : constant Version_32 := 16#1a340bce#;
   pragma Export (C, u00204, "gl__skinsB");
   u00205 : constant Version_32 := 16#2584189e#;
   pragma Export (C, u00205, "gl__skinsS");
   u00206 : constant Version_32 := 16#6ad59d2c#;
   pragma Export (C, u00206, "system__fat_fltS");
   u00207 : constant Version_32 := 16#5a895de2#;
   pragma Export (C, u00207, "system__pool_globalB");
   u00208 : constant Version_32 := 16#7141203e#;
   pragma Export (C, u00208, "system__pool_globalS");
   u00209 : constant Version_32 := 16#ee101ba4#;
   pragma Export (C, u00209, "system__memoryB");
   u00210 : constant Version_32 := 16#6bdde70c#;
   pragma Export (C, u00210, "system__memoryS");
   u00211 : constant Version_32 := 16#6d4d969a#;
   pragma Export (C, u00211, "system__storage_poolsB");
   u00212 : constant Version_32 := 16#114d1f95#;
   pragma Export (C, u00212, "system__storage_poolsS");
   u00213 : constant Version_32 := 16#a2250034#;
   pragma Export (C, u00213, "system__storage_pools__subpoolsB");
   u00214 : constant Version_32 := 16#cc5a1856#;
   pragma Export (C, u00214, "system__storage_pools__subpoolsS");
   u00215 : constant Version_32 := 16#6abe5dbe#;
   pragma Export (C, u00215, "system__finalization_mastersB");
   u00216 : constant Version_32 := 16#695cb8f2#;
   pragma Export (C, u00216, "system__finalization_mastersS");
   u00217 : constant Version_32 := 16#7268f812#;
   pragma Export (C, u00217, "system__img_boolB");
   u00218 : constant Version_32 := 16#c779f0d3#;
   pragma Export (C, u00218, "system__img_boolS");
   u00219 : constant Version_32 := 16#9aad1ff1#;
   pragma Export (C, u00219, "system__storage_pools__subpools__finalizationB");
   u00220 : constant Version_32 := 16#fe2f4b3a#;
   pragma Export (C, u00220, "system__storage_pools__subpools__finalizationS");
   u00221 : constant Version_32 := 16#837026c9#;
   pragma Export (C, u00221, "gl__bufferB");
   u00222 : constant Version_32 := 16#fcf76790#;
   pragma Export (C, u00222, "gl__bufferS");
   u00223 : constant Version_32 := 16#3c420900#;
   pragma Export (C, u00223, "system__stream_attributesB");
   u00224 : constant Version_32 := 16#8bc30a4e#;
   pragma Export (C, u00224, "system__stream_attributesS");
   u00225 : constant Version_32 := 16#e6b92a39#;
   pragma Export (C, u00225, "gl__buffer__texture_coordsB");
   u00226 : constant Version_32 := 16#ee91d95f#;
   pragma Export (C, u00226, "gl__buffer__texture_coordsS");
   u00227 : constant Version_32 := 16#9004b2de#;
   pragma Export (C, u00227, "gl__buffer__generalB");
   u00228 : constant Version_32 := 16#b07eab0a#;
   pragma Export (C, u00228, "gl__buffer__generalS");
   u00229 : constant Version_32 := 16#4fdfd149#;
   pragma Export (C, u00229, "gl__geometryB");
   u00230 : constant Version_32 := 16#3ff76aa8#;
   pragma Export (C, u00230, "gl__geometryS");
   u00231 : constant Version_32 := 16#3791e504#;
   pragma Export (C, u00231, "ada__strings__unboundedB");
   u00232 : constant Version_32 := 16#9fdb1809#;
   pragma Export (C, u00232, "ada__strings__unboundedS");
   u00233 : constant Version_32 := 16#933d1555#;
   pragma Export (C, u00233, "system__compare_array_unsigned_8B");
   u00234 : constant Version_32 := 16#9ba3f0b5#;
   pragma Export (C, u00234, "system__compare_array_unsigned_8S");
   u00235 : constant Version_32 := 16#97d13ec4#;
   pragma Export (C, u00235, "system__address_operationsB");
   u00236 : constant Version_32 := 16#21ac3f0b#;
   pragma Export (C, u00236, "system__address_operationsS");
   u00237 : constant Version_32 := 16#70f25dad#;
   pragma Export (C, u00237, "system__atomic_countersB");
   u00238 : constant Version_32 := 16#86fcacb5#;
   pragma Export (C, u00238, "system__atomic_countersS");
   u00239 : constant Version_32 := 16#59ec45db#;
   pragma Export (C, u00239, "gl__mathB");
   u00240 : constant Version_32 := 16#33afadb4#;
   pragma Export (C, u00240, "gl__mathS");
   u00241 : constant Version_32 := 16#d5f9759f#;
   pragma Export (C, u00241, "ada__text_io__float_auxB");
   u00242 : constant Version_32 := 16#f854caf5#;
   pragma Export (C, u00242, "ada__text_io__float_auxS");
   u00243 : constant Version_32 := 16#181dc502#;
   pragma Export (C, u00243, "ada__text_io__generic_auxB");
   u00244 : constant Version_32 := 16#a6c327d3#;
   pragma Export (C, u00244, "ada__text_io__generic_auxS");
   u00245 : constant Version_32 := 16#8aa4f090#;
   pragma Export (C, u00245, "system__img_realB");
   u00246 : constant Version_32 := 16#f508d0da#;
   pragma Export (C, u00246, "system__img_realS");
   u00247 : constant Version_32 := 16#3e932977#;
   pragma Export (C, u00247, "system__img_lluB");
   u00248 : constant Version_32 := 16#4feffd78#;
   pragma Export (C, u00248, "system__img_lluS");
   u00249 : constant Version_32 := 16#62d0e74f#;
   pragma Export (C, u00249, "system__powten_tableS");
   u00250 : constant Version_32 := 16#faa9a7b2#;
   pragma Export (C, u00250, "system__val_realB");
   u00251 : constant Version_32 := 16#cc89f629#;
   pragma Export (C, u00251, "system__val_realS");
   u00252 : constant Version_32 := 16#608e2cd1#;
   pragma Export (C, u00252, "system__concat_5B");
   u00253 : constant Version_32 := 16#b5fec216#;
   pragma Export (C, u00253, "system__concat_5S");
   u00254 : constant Version_32 := 16#4a8b4844#;
   pragma Export (C, u00254, "gl__texturesB");
   u00255 : constant Version_32 := 16#8f632163#;
   pragma Export (C, u00255, "gl__texturesS");
   u00256 : constant Version_32 := 16#595e5868#;
   pragma Export (C, u00256, "gl__ioB");
   u00257 : constant Version_32 := 16#a040ee9c#;
   pragma Export (C, u00257, "gl__ioS");
   u00258 : constant Version_32 := 16#0806edc3#;
   pragma Export (C, u00258, "system__strings__stream_opsB");
   u00259 : constant Version_32 := 16#55d4bd57#;
   pragma Export (C, u00259, "system__strings__stream_opsS");
   u00260 : constant Version_32 := 16#17411e58#;
   pragma Export (C, u00260, "ada__streams__stream_ioB");
   u00261 : constant Version_32 := 16#31fc8e02#;
   pragma Export (C, u00261, "ada__streams__stream_ioS");
   u00262 : constant Version_32 := 16#5de653db#;
   pragma Export (C, u00262, "system__communicationB");
   u00263 : constant Version_32 := 16#2bc0d4ea#;
   pragma Export (C, u00263, "system__communicationS");
   u00264 : constant Version_32 := 16#7f8879fc#;
   pragma Export (C, u00264, "gl__materialsB");
   u00265 : constant Version_32 := 16#65f2b4a3#;
   pragma Export (C, u00265, "gl__materialsS");
   u00266 : constant Version_32 := 16#33fd7c82#;
   pragma Export (C, u00266, "globe_3d__mathB");
   u00267 : constant Version_32 := 16#e3e98860#;
   pragma Export (C, u00267, "globe_3d__mathS");
   u00268 : constant Version_32 := 16#40c8be3a#;
   pragma Export (C, u00268, "globe_3d__optionsB");
   u00269 : constant Version_32 := 16#dc499730#;
   pragma Export (C, u00269, "globe_3d__optionsS");
   u00270 : constant Version_32 := 16#bd43c68c#;
   pragma Export (C, u00270, "globe_3d__portalsB");
   u00271 : constant Version_32 := 16#345614ab#;
   pragma Export (C, u00271, "globe_3d__portalsS");
   u00272 : constant Version_32 := 16#ba8f40c0#;
   pragma Export (C, u00272, "globe_3d__texturesB");
   u00273 : constant Version_32 := 16#2a1c4756#;
   pragma Export (C, u00273, "globe_3d__texturesS");
   u00274 : constant Version_32 := 16#c164a034#;
   pragma Export (C, u00274, "ada__containers__hash_tablesS");
   u00275 : constant Version_32 := 16#bcec81df#;
   pragma Export (C, u00275, "ada__containers__helpersB");
   u00276 : constant Version_32 := 16#4adfc5eb#;
   pragma Export (C, u00276, "ada__containers__helpersS");
   u00277 : constant Version_32 := 16#c24eaf4d#;
   pragma Export (C, u00277, "ada__containers__prime_numbersB");
   u00278 : constant Version_32 := 16#6d3af8ed#;
   pragma Export (C, u00278, "ada__containers__prime_numbersS");
   u00279 : constant Version_32 := 16#217daf40#;
   pragma Export (C, u00279, "ada__strings__unbounded__hashB");
   u00280 : constant Version_32 := 16#9c644680#;
   pragma Export (C, u00280, "ada__strings__unbounded__hashS");
   u00281 : constant Version_32 := 16#9e4aeb62#;
   pragma Export (C, u00281, "unzipB");
   u00282 : constant Version_32 := 16#2f166dde#;
   pragma Export (C, u00282, "unzipS");
   u00283 : constant Version_32 := 16#5fd50ada#;
   pragma Export (C, u00283, "unzip__decompressB");
   u00284 : constant Version_32 := 16#93d9b1da#;
   pragma Export (C, u00284, "unzip__decompressS");
   u00285 : constant Version_32 := 16#a1b853cc#;
   pragma Export (C, u00285, "bzip2B");
   u00286 : constant Version_32 := 16#951df2a7#;
   pragma Export (C, u00286, "bzip2S");
   u00287 : constant Version_32 := 16#87a379aa#;
   pragma Export (C, u00287, "unzip__decompress__huffmanB");
   u00288 : constant Version_32 := 16#3045b9d5#;
   pragma Export (C, u00288, "unzip__decompress__huffmanS");
   u00289 : constant Version_32 := 16#3f5864c4#;
   pragma Export (C, u00289, "zipB");
   u00290 : constant Version_32 := 16#06dc093d#;
   pragma Export (C, u00290, "zipS");
   u00291 : constant Version_32 := 16#ebb133b2#;
   pragma Export (C, u00291, "zip__headersB");
   u00292 : constant Version_32 := 16#17ef6cb6#;
   pragma Export (C, u00292, "zip__headersS");
   u00293 : constant Version_32 := 16#97991e4b#;
   pragma Export (C, u00293, "zip_streamsB");
   u00294 : constant Version_32 := 16#416038b2#;
   pragma Export (C, u00294, "zip_streamsS");
   u00295 : constant Version_32 := 16#0d7f1a43#;
   pragma Export (C, u00295, "ada__calendarB");
   u00296 : constant Version_32 := 16#5b279c75#;
   pragma Export (C, u00296, "ada__calendarS");
   u00297 : constant Version_32 := 16#397e9c9f#;
   pragma Export (C, u00297, "zip__crcB");
   u00298 : constant Version_32 := 16#06c4d47b#;
   pragma Export (C, u00298, "zip__crcS");
   u00299 : constant Version_32 := 16#fc2ada25#;
   pragma Export (C, u00299, "unzip__streamsB");
   u00300 : constant Version_32 := 16#baa3d740#;
   pragma Export (C, u00300, "unzip__streamsS");
   u00301 : constant Version_32 := 16#46899fd1#;
   pragma Export (C, u00301, "system__concat_7B");
   u00302 : constant Version_32 := 16#ce67da27#;
   pragma Export (C, u00302, "system__concat_7S");
   u00303 : constant Version_32 := 16#a83b7c85#;
   pragma Export (C, u00303, "system__concat_6B");
   u00304 : constant Version_32 := 16#e067ac8a#;
   pragma Export (C, u00304, "system__concat_6S");
   u00305 : constant Version_32 := 16#46b1f5ea#;
   pragma Export (C, u00305, "system__concat_8B");
   u00306 : constant Version_32 := 16#d1a7ccef#;
   pragma Export (C, u00306, "system__concat_8S");
   u00307 : constant Version_32 := 16#de0a8573#;
   pragma Export (C, u00307, "gl__frustumsB");
   u00308 : constant Version_32 := 16#2c4c19e2#;
   pragma Export (C, u00308, "gl__frustumsS");
   u00309 : constant Version_32 := 16#cd53cf3b#;
   pragma Export (C, u00309, "gl__skinned_geometryB");
   u00310 : constant Version_32 := 16#ec459e05#;
   pragma Export (C, u00310, "gl__skinned_geometryS");
   u00311 : constant Version_32 := 16#0e67555f#;
   pragma Export (C, u00311, "glut_2dB");
   u00312 : constant Version_32 := 16#7eff0cd3#;
   pragma Export (C, u00312, "glut_2dS");
   u00313 : constant Version_32 := 16#d7679708#;
   pragma Export (C, u00313, "glutB");
   u00314 : constant Version_32 := 16#b9ca5350#;
   pragma Export (C, u00314, "glutS");
   u00315 : constant Version_32 := 16#3b5cd14a#;
   pragma Export (C, u00315, "ada__command_lineB");
   u00316 : constant Version_32 := 16#3cdef8c9#;
   pragma Export (C, u00316, "ada__command_lineS");
   u00317 : constant Version_32 := 16#763b4fd7#;
   pragma Export (C, u00317, "graphics_frameratesB");
   u00318 : constant Version_32 := 16#49471931#;
   pragma Export (C, u00318, "graphics_frameratesS");
   u00319 : constant Version_32 := 16#87cd2ab9#;
   pragma Export (C, u00319, "ada__calendar__delaysB");
   u00320 : constant Version_32 := 16#b27fb9e9#;
   pragma Export (C, u00320, "ada__calendar__delaysS");
   u00321 : constant Version_32 := 16#9bd4ba92#;
   pragma Export (C, u00321, "graphics_structuresS");
   u00322 : constant Version_32 := 16#f2a9860d#;
   pragma Export (C, u00322, "rotationsB");
   u00323 : constant Version_32 := 16#f942fbb5#;
   pragma Export (C, u00323, "rotationsS");
   u00324 : constant Version_32 := 16#621b3e02#;
   pragma Export (C, u00324, "matricesB");
   u00325 : constant Version_32 := 16#48257de2#;
   pragma Export (C, u00325, "matricesS");
   u00326 : constant Version_32 := 16#f692e211#;
   pragma Export (C, u00326, "quaternionsB");
   u00327 : constant Version_32 := 16#504fbd0e#;
   pragma Export (C, u00327, "quaternionsS");
   u00328 : constant Version_32 := 16#3315000b#;
   pragma Export (C, u00328, "vectors_3dB");
   u00329 : constant Version_32 := 16#9351ec73#;
   pragma Export (C, u00329, "vectors_3dS");
   u00330 : constant Version_32 := 16#fe1ffede#;
   pragma Export (C, u00330, "ada__strings__boundedB");
   u00331 : constant Version_32 := 16#89c18940#;
   pragma Export (C, u00331, "ada__strings__boundedS");
   u00332 : constant Version_32 := 16#7ec26662#;
   pragma Export (C, u00332, "ada__strings__superboundedB");
   u00333 : constant Version_32 := 16#da6addee#;
   pragma Export (C, u00333, "ada__strings__superboundedS");
   u00334 : constant Version_32 := 16#1ea7c6e8#;
   pragma Export (C, u00334, "vectors_xdB");
   u00335 : constant Version_32 := 16#4c943a4c#;
   pragma Export (C, u00335, "vectors_xdS");
   u00336 : constant Version_32 := 16#15404f33#;
   pragma Export (C, u00336, "vectors_2d_nS");
   u00337 : constant Version_32 := 16#8584e10c#;
   pragma Export (C, u00337, "vectors_xd_iB");
   u00338 : constant Version_32 := 16#32b570f3#;
   pragma Export (C, u00338, "vectors_xd_iS");
   u00339 : constant Version_32 := 16#99c5812a#;
   pragma Export (C, u00339, "graphics_dataS");
   u00340 : constant Version_32 := 16#9cceee23#;
   pragma Export (C, u00340, "modelsB");
   u00341 : constant Version_32 := 16#670c4a41#;
   pragma Export (C, u00341, "modelsS");
   u00342 : constant Version_32 := 16#407e14ab#;
   pragma Export (C, u00342, "spaceship_pB");
   u00343 : constant Version_32 := 16#de928fde#;
   pragma Export (C, u00343, "spaceship_pS");
   u00344 : constant Version_32 := 16#bfd27222#;
   pragma Export (C, u00344, "sphere_pB");
   u00345 : constant Version_32 := 16#a2350170#;
   pragma Export (C, u00345, "sphere_pS");
   u00346 : constant Version_32 := 16#ed26937f#;
   pragma Export (C, u00346, "vectors_4dS");
   u00347 : constant Version_32 := 16#4dc6d896#;
   pragma Export (C, u00347, "graphics_openglB");
   u00348 : constant Version_32 := 16#380aa6a1#;
   pragma Export (C, u00348, "graphics_openglS");
   u00349 : constant Version_32 := 16#d976e2b4#;
   pragma Export (C, u00349, "ada__numerics__float_randomB");
   u00350 : constant Version_32 := 16#62aa8dd2#;
   pragma Export (C, u00350, "ada__numerics__float_randomS");
   u00351 : constant Version_32 := 16#d34f9f29#;
   pragma Export (C, u00351, "system__random_numbersB");
   u00352 : constant Version_32 := 16#f1b831a2#;
   pragma Export (C, u00352, "system__random_numbersS");
   u00353 : constant Version_32 := 16#40a8df0e#;
   pragma Export (C, u00353, "system__random_seedB");
   u00354 : constant Version_32 := 16#69b0a863#;
   pragma Export (C, u00354, "system__random_seedS");
   u00355 : constant Version_32 := 16#ffa721d2#;
   pragma Export (C, u00355, "globe_3d__stars_skyB");
   u00356 : constant Version_32 := 16#60803aec#;
   pragma Export (C, u00356, "globe_3d__stars_skyS");
   u00357 : constant Version_32 := 16#6f4768c5#;
   pragma Export (C, u00357, "graphics_setupB");
   u00358 : constant Version_32 := 16#ae3cfa3a#;
   pragma Export (C, u00358, "graphics_setupS");
   u00359 : constant Version_32 := 16#03e83d1c#;
   pragma Export (C, u00359, "ada__numerics__elementary_functionsB");
   u00360 : constant Version_32 := 16#c6ca7006#;
   pragma Export (C, u00360, "ada__numerics__elementary_functionsS");
   u00361 : constant Version_32 := 16#71a7842c#;
   pragma Export (C, u00361, "glut__devicesB");
   u00362 : constant Version_32 := 16#3a42b6eb#;
   pragma Export (C, u00362, "glut__devicesS");
   u00363 : constant Version_32 := 16#0d88c89d#;
   pragma Export (C, u00363, "glut__windowsB");
   u00364 : constant Version_32 := 16#eb1493ba#;
   pragma Export (C, u00364, "glut__windowsS");
   u00365 : constant Version_32 := 16#1a19ed33#;
   pragma Export (C, u00365, "actorsB");
   u00366 : constant Version_32 := 16#9c19e623#;
   pragma Export (C, u00366, "actorsS");
   u00367 : constant Version_32 := 16#d317e11b#;
   pragma Export (C, u00367, "game_controlB");
   u00368 : constant Version_32 := 16#5097ee25#;
   pragma Export (C, u00368, "game_controlS");
   u00369 : constant Version_32 := 16#c48063ce#;
   pragma Export (C, u00369, "globe_3d__software_anti_aliasingB");
   u00370 : constant Version_32 := 16#41a04269#;
   pragma Export (C, u00370, "globe_3d__software_anti_aliasingS");
   u00371 : constant Version_32 := 16#ecc4ed1f#;
   pragma Export (C, u00371, "keyboardB");
   u00372 : constant Version_32 := 16#e8d894be#;
   pragma Export (C, u00372, "keyboardS");
   u00373 : constant Version_32 := 16#339eba20#;
   pragma Export (C, u00373, "screenshotsB");
   u00374 : constant Version_32 := 16#fb6ddf6f#;
   pragma Export (C, u00374, "screenshotsS");
   u00375 : constant Version_32 := 16#66cd1438#;
   pragma Export (C, u00375, "swarm_configurationB");
   u00376 : constant Version_32 := 16#da6d8a17#;
   pragma Export (C, u00376, "swarm_configurationS");
   u00377 : constant Version_32 := 16#844fe575#;
   pragma Export (C, u00377, "swarm_configurationsB");
   u00378 : constant Version_32 := 16#156db0fb#;
   pragma Export (C, u00378, "swarm_configurationsS");
   u00379 : constant Version_32 := 16#eea673f9#;
   pragma Export (C, u00379, "swarm_structures_baseS");
   u00380 : constant Version_32 := 16#118d926e#;
   pragma Export (C, u00380, "generic_protectedB");
   u00381 : constant Version_32 := 16#c46c288c#;
   pragma Export (C, u00381, "generic_protectedS");
   u00382 : constant Version_32 := 16#1dc86ab7#;
   pragma Export (C, u00382, "system__tasking__protected_objects__operationsB");
   u00383 : constant Version_32 := 16#ba36ad85#;
   pragma Export (C, u00383, "system__tasking__protected_objects__operationsS");
   u00384 : constant Version_32 := 16#6896b958#;
   pragma Export (C, u00384, "system__tasking__entry_callsB");
   u00385 : constant Version_32 := 16#df420580#;
   pragma Export (C, u00385, "system__tasking__entry_callsS");
   u00386 : constant Version_32 := 16#96bbd7c2#;
   pragma Export (C, u00386, "system__tasking__rendezvousB");
   u00387 : constant Version_32 := 16#ea18a31e#;
   pragma Export (C, u00387, "system__tasking__rendezvousS");
   u00388 : constant Version_32 := 16#a1101a68#;
   pragma Export (C, u00388, "swarm_controlB");
   u00389 : constant Version_32 := 16#0e1b7ab5#;
   pragma Export (C, u00389, "swarm_controlS");
   u00390 : constant Version_32 := 16#ac8225c3#;
   pragma Export (C, u00390, "swarm_dataS");
   u00391 : constant Version_32 := 16#a3e1fbc0#;
   pragma Export (C, u00391, "swarm_structuresB");
   u00392 : constant Version_32 := 16#40153226#;
   pragma Export (C, u00392, "swarm_structuresS");
   u00393 : constant Version_32 := 16#5aabc651#;
   pragma Export (C, u00393, "barrier_typeB");
   u00394 : constant Version_32 := 16#8ab015f1#;
   pragma Export (C, u00394, "barrier_typeS");
   u00395 : constant Version_32 := 16#98ccd1c1#;
   pragma Export (C, u00395, "generic_realtime_bufferB");
   u00396 : constant Version_32 := 16#a4c755fe#;
   pragma Export (C, u00396, "generic_realtime_bufferS");
   u00397 : constant Version_32 := 16#f2cad408#;
   pragma Export (C, u00397, "vehicle_message_typeB");
   u00398 : constant Version_32 := 16#714d1f21#;
   pragma Export (C, u00398, "vehicle_message_typeS");
   u00399 : constant Version_32 := 16#c2a9893f#;
   pragma Export (C, u00399, "shared_message_structureS");
   u00400 : constant Version_32 := 16#8dcf36ce#;
   pragma Export (C, u00400, "vehicle_task_typeB");
   u00401 : constant Version_32 := 16#58fd0c20#;
   pragma Export (C, u00401, "vehicle_task_typeS");
   u00402 : constant Version_32 := 16#f08789ae#;
   pragma Export (C, u00402, "ada__text_io__enumeration_auxB");
   u00403 : constant Version_32 := 16#52f1e0af#;
   pragma Export (C, u00403, "ada__text_io__enumeration_auxS");
   u00404 : constant Version_32 := 16#fd2ad2f1#;
   pragma Export (C, u00404, "gnatS");
   u00405 : constant Version_32 := 16#b48102f5#;
   pragma Export (C, u00405, "gnat__ioB");
   u00406 : constant Version_32 := 16#6227e843#;
   pragma Export (C, u00406, "gnat__ioS");
   u00407 : constant Version_32 := 16#d8fc9f88#;
   pragma Export (C, u00407, "system__tasking__stagesB");
   u00408 : constant Version_32 := 16#e9cef940#;
   pragma Export (C, u00408, "system__tasking__stagesS");
   u00409 : constant Version_32 := 16#83947c18#;
   pragma Export (C, u00409, "system__val_enumB");
   u00410 : constant Version_32 := 16#89bac3ad#;
   pragma Export (C, u00410, "system__val_enumS");
   u00411 : constant Version_32 := 16#19df3d4c#;
   pragma Export (C, u00411, "text_ioS");
   u00412 : constant Version_32 := 16#9dfcf290#;
   pragma Export (C, u00412, "vehicle_interfaceB");
   u00413 : constant Version_32 := 16#f4f41cae#;
   pragma Export (C, u00413, "vehicle_interfaceS");
   u00414 : constant Version_32 := 16#7906472b#;
   pragma Export (C, u00414, "vehicle_protected_message_queueB");
   u00415 : constant Version_32 := 16#a364b67c#;
   pragma Export (C, u00415, "vehicle_protected_message_queueS");
   u00416 : constant Version_32 := 16#bbc4ca1a#;
   pragma Export (C, u00416, "system__tasking__async_delaysB");
   u00417 : constant Version_32 := 16#47f015f3#;
   pragma Export (C, u00417, "system__tasking__async_delaysS");
   u00418 : constant Version_32 := 16#0110e3c6#;
   pragma Export (C, u00418, "system__interrupt_management__operationsB");
   u00419 : constant Version_32 := 16#19b909c9#;
   pragma Export (C, u00419, "system__interrupt_management__operationsS");
   u00420 : constant Version_32 := 16#a6d7988d#;
   pragma Export (C, u00420, "vectors_3d_lfB");
   u00421 : constant Version_32 := 16#abff4c19#;
   pragma Export (C, u00421, "vectors_3d_lfS");
   u00422 : constant Version_32 := 16#1e27852c#;
   pragma Export (C, u00422, "vectors_conversionsB");
   u00423 : constant Version_32 := 16#923ddf49#;
   pragma Export (C, u00423, "vectors_conversionsS");
   u00424 : constant Version_32 := 16#cdecf3e0#;
   pragma Export (C, u00424, "vectors_2dS");
   u00425 : constant Version_32 := 16#3b68dc9f#;
   pragma Export (C, u00425, "vectors_2d_iS");
   u00426 : constant Version_32 := 16#e9217b79#;
   pragma Export (C, u00426, "vectors_2d_pS");
   u00427 : constant Version_32 := 16#878e5819#;
   pragma Export (C, u00427, "swarm_control_concurrent_genericB");
   u00428 : constant Version_32 := 16#7d3a30dd#;
   pragma Export (C, u00428, "swarm_control_concurrent_genericS");

   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  ada.characters%s
   --  ada.characters.latin_1%s
   --  gnat%s
   --  gnat.io%s
   --  gnat.io%b
   --  interfaces%s
   --  system%s
   --  system.address_operations%s
   --  system.address_operations%b
   --  system.case_util%s
   --  system.case_util%b
   --  system.exn_llf%s
   --  system.exn_llf%b
   --  system.float_control%s
   --  system.float_control%b
   --  system.img_bool%s
   --  system.img_bool%b
   --  system.img_enum_new%s
   --  system.img_enum_new%b
   --  system.img_int%s
   --  system.img_int%b
   --  system.io%s
   --  system.io%b
   --  system.machine_code%s
   --  system.atomic_counters%s
   --  system.atomic_counters%b
   --  system.parameters%s
   --  system.parameters%b
   --  system.crtl%s
   --  interfaces.c_streams%s
   --  interfaces.c_streams%b
   --  system.powten_table%s
   --  system.restrictions%s
   --  system.restrictions%b
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.stack_checking%s
   --  system.stack_checking%b
   --  system.stack_usage%s
   --  system.stack_usage%b
   --  system.string_hash%s
   --  system.string_hash%b
   --  system.htable%s
   --  system.htable%b
   --  system.strings%s
   --  system.strings%b
   --  system.traceback_entries%s
   --  system.traceback_entries%b
   --  system.traces%s
   --  system.traces%b
   --  system.unsigned_types%s
   --  system.fat_flt%s
   --  system.fat_lflt%s
   --  system.fat_llf%s
   --  system.img_llu%s
   --  system.img_llu%b
   --  system.img_uns%s
   --  system.img_uns%b
   --  system.img_real%s
   --  system.img_real%b
   --  system.wch_con%s
   --  system.wch_con%b
   --  system.wch_jis%s
   --  system.wch_jis%b
   --  system.wch_cnv%s
   --  system.wch_cnv%b
   --  system.compare_array_unsigned_8%s
   --  system.compare_array_unsigned_8%b
   --  system.concat_2%s
   --  system.concat_2%b
   --  system.concat_3%s
   --  system.concat_3%b
   --  system.concat_4%s
   --  system.concat_4%b
   --  system.concat_5%s
   --  system.concat_5%b
   --  system.concat_6%s
   --  system.concat_6%b
   --  system.concat_7%s
   --  system.concat_7%b
   --  system.concat_8%s
   --  system.concat_8%b
   --  system.traceback%s
   --  system.traceback%b
   --  system.val_util%s
   --  system.standard_library%s
   --  system.exception_traces%s
   --  ada.exceptions%s
   --  system.wch_stw%s
   --  system.val_util%b
   --  system.val_llu%s
   --  system.val_lli%s
   --  system.os_lib%s
   --  system.bit_ops%s
   --  ada.characters.handling%s
   --  ada.exceptions.traceback%s
   --  system.soft_links%s
   --  system.exception_table%s
   --  system.exception_table%b
   --  ada.io_exceptions%s
   --  ada.strings%s
   --  ada.containers%s
   --  system.exceptions%s
   --  system.exceptions%b
   --  system.secondary_stack%s
   --  system.address_image%s
   --  system.bounded_strings%s
   --  system.soft_links%b
   --  ada.exceptions.last_chance_handler%s
   --  system.exceptions_debug%s
   --  system.exceptions_debug%b
   --  system.exception_traces%b
   --  system.memory%s
   --  system.memory%b
   --  system.wch_stw%b
   --  system.val_llu%b
   --  system.val_lli%b
   --  interfaces.c%s
   --  system.win32%s
   --  system.mmap%s
   --  system.mmap.os_interface%s
   --  system.mmap.os_interface%b
   --  system.mmap%b
   --  system.os_lib%b
   --  system.bit_ops%b
   --  ada.strings.maps%s
   --  ada.strings.maps.constants%s
   --  ada.characters.handling%b
   --  ada.exceptions.traceback%b
   --  system.exceptions.machine%s
   --  system.exceptions.machine%b
   --  system.secondary_stack%b
   --  system.address_image%b
   --  system.bounded_strings%b
   --  ada.exceptions.last_chance_handler%b
   --  system.standard_library%b
   --  system.object_reader%s
   --  system.dwarf_lines%s
   --  system.dwarf_lines%b
   --  interfaces.c%b
   --  ada.strings.maps%b
   --  system.traceback.symbolic%s
   --  system.traceback.symbolic%b
   --  ada.exceptions%b
   --  system.object_reader%b
   --  ada.command_line%s
   --  ada.command_line%b
   --  ada.containers.prime_numbers%s
   --  ada.containers.prime_numbers%b
   --  ada.exceptions.is_null_occurrence%s
   --  ada.exceptions.is_null_occurrence%b
   --  ada.numerics%s
   --  ada.numerics.aux%s
   --  ada.numerics.aux%b
   --  ada.numerics.elementary_functions%s
   --  ada.numerics.elementary_functions%b
   --  ada.strings.search%s
   --  ada.strings.search%b
   --  ada.strings.fixed%s
   --  ada.strings.fixed%b
   --  ada.strings.superbounded%s
   --  ada.strings.superbounded%b
   --  ada.strings.bounded%s
   --  ada.strings.bounded%b
   --  interfaces.c.strings%s
   --  interfaces.c.strings%b
   --  system.multiprocessors%s
   --  system.multiprocessors%b
   --  system.os_interface%s
   --  system.interrupt_management%s
   --  system.interrupt_management%b
   --  system.task_info%s
   --  system.task_info%b
   --  system.task_lock%s
   --  system.task_lock%b
   --  system.task_primitives%s
   --  system.val_enum%s
   --  system.val_enum%b
   --  system.val_real%s
   --  system.val_real%b
   --  system.val_uns%s
   --  system.val_uns%b
   --  ada.tags%s
   --  ada.tags%b
   --  ada.streams%s
   --  ada.streams%b
   --  system.communication%s
   --  system.communication%b
   --  system.file_control_block%s
   --  system.finalization_root%s
   --  system.finalization_root%b
   --  ada.finalization%s
   --  ada.containers.helpers%s
   --  ada.containers.helpers%b
   --  ada.containers.hash_tables%s
   --  system.file_io%s
   --  system.file_io%b
   --  ada.streams.stream_io%s
   --  ada.streams.stream_io%b
   --  system.storage_pools%s
   --  system.storage_pools%b
   --  system.finalization_masters%s
   --  system.finalization_masters%b
   --  system.storage_pools.subpools%s
   --  system.storage_pools.subpools.finalization%s
   --  system.storage_pools.subpools%b
   --  system.storage_pools.subpools.finalization%b
   --  system.stream_attributes%s
   --  system.stream_attributes%b
   --  ada.strings.unbounded%s
   --  ada.strings.unbounded%b
   --  ada.strings.unbounded.hash%s
   --  ada.strings.unbounded.hash%b
   --  system.win32.ext%s
   --  system.os_primitives%s
   --  system.os_primitives%b
   --  system.tasking%s
   --  system.task_primitives.operations%s
   --  system.tasking.debug%s
   --  system.tasking%b
   --  system.task_primitives.operations%b
   --  system.tasking.debug%b
   --  system.traces.tasking%s
   --  system.traces.tasking%b
   --  ada.calendar%s
   --  ada.calendar%b
   --  ada.calendar.delays%s
   --  ada.calendar.delays%b
   --  ada.real_time%s
   --  ada.real_time%b
   --  ada.text_io%s
   --  ada.text_io%b
   --  ada.text_io.generic_aux%s
   --  ada.text_io.generic_aux%b
   --  ada.text_io.enumeration_aux%s
   --  ada.text_io.enumeration_aux%b
   --  ada.text_io.float_aux%s
   --  ada.text_io.float_aux%b
   --  system.assertions%s
   --  system.assertions%b
   --  system.interrupt_management.operations%s
   --  system.interrupt_management.operations%b
   --  system.pool_global%s
   --  system.pool_global%b
   --  system.random_seed%s
   --  system.random_seed%b
   --  system.random_numbers%s
   --  system.random_numbers%b
   --  ada.numerics.float_random%s
   --  ada.numerics.float_random%b
   --  system.soft_links.tasking%s
   --  system.soft_links.tasking%b
   --  system.strings.stream_ops%s
   --  system.strings.stream_ops%b
   --  system.tasking.initialization%s
   --  system.tasking.task_attributes%s
   --  system.tasking.initialization%b
   --  system.tasking.task_attributes%b
   --  system.tasking.protected_objects%s
   --  system.tasking.protected_objects%b
   --  system.tasking.protected_objects.entries%s
   --  system.tasking.protected_objects.entries%b
   --  system.tasking.queuing%s
   --  system.tasking.queuing%b
   --  system.tasking.utilities%s
   --  system.tasking.utilities%b
   --  ada.task_identification%s
   --  ada.task_identification%b
   --  system.tasking.entry_calls%s
   --  system.tasking.rendezvous%s
   --  system.tasking.protected_objects.operations%s
   --  system.tasking.protected_objects.operations%b
   --  system.tasking.entry_calls%b
   --  system.tasking.rendezvous%b
   --  system.tasking.stages%s
   --  system.tasking.stages%b
   --  system.tasking.async_delays%s
   --  system.tasking.async_delays%b
   --  text_io%s
   --  barrier_type%s
   --  barrier_type%b
   --  bzip2%s
   --  bzip2%b
   --  exceptions%s
   --  exceptions%b
   --  generic_protected%s
   --  generic_protected%b
   --  generic_realtime_buffer%s
   --  generic_realtime_buffer%b
   --  gl%s
   --  gl.extended%s
   --  gl%b
   --  gl.buffer%s
   --  gl.buffer%b
   --  gl.io%s
   --  gl.io%b
   --  gl.materials%s
   --  gl.materials%b
   --  gl.math%s
   --  gl.math%b
   --  gl.geometry%s
   --  gl.geometry%b
   --  gl.frustums%s
   --  gl.frustums%b
   --  glu%s
   --  glu%b
   --  gl.errors%s
   --  gl.errors%b
   --  gl.buffer.general%s
   --  gl.buffer.general%b
   --  gl.textures%s
   --  gl.textures%b
   --  gl.buffer.texture_coords%s
   --  gl.buffer.texture_coords%b
   --  gl.skins%s
   --  gl.skins%b
   --  gl.skinned_geometry%s
   --  gl.skinned_geometry%b
   --  glut%s
   --  glut%b
   --  glut_2d%s
   --  glut_2d%b
   --  real_type%s
   --  generic_sliding_statistics%s
   --  generic_sliding_statistics%b
   --  graphics_framerates%s
   --  graphics_framerates%b
   --  matrices%s
   --  matrices%b
   --  quaternions%s
   --  quaternions%b
   --  screenshots%s
   --  screenshots%b
   --  vectors_xd%s
   --  vectors_xd%b
   --  vectors_2d%s
   --  vectors_3d%s
   --  vectors_3d%b
   --  rotations%s
   --  rotations%b
   --  vectors_3d_lf%s
   --  vectors_3d_lf%b
   --  vectors_4d%s
   --  vectors_xd_i%s
   --  vectors_xd_i%b
   --  vectors_2d_i%s
   --  vectors_2d_n%s
   --  vectors_2d_p%s
   --  vectors_conversions%s
   --  vectors_conversions%b
   --  zip_streams%s
   --  zip%s
   --  zip_streams%b
   --  zip.headers%s
   --  zip.headers%b
   --  zip%b
   --  zip.crc%s
   --  zip.crc%b
   --  unzip%s
   --  unzip.decompress%s
   --  unzip.decompress.huffman%s
   --  unzip.decompress.huffman%b
   --  unzip%b
   --  unzip.decompress%b
   --  unzip.streams%s
   --  unzip.streams%b
   --  globe_3d%s
   --  globe_3d.textures%s
   --  globe_3d.portals%s
   --  globe_3d.options%s
   --  globe_3d.options%b
   --  globe_3d.math%s
   --  globe_3d.math%b
   --  globe_3d.textures%b
   --  globe_3d%b
   --  globe_3d.portals%b
   --  globe_3d.software_anti_aliasing%s
   --  globe_3d.software_anti_aliasing%b
   --  globe_3d.stars_sky%s
   --  globe_3d.stars_sky%b
   --  glut.devices%s
   --  game_control%s
   --  game_control%b
   --  actors%s
   --  actors%b
   --  glut.windows%s
   --  glut.windows%b
   --  glut.devices%b
   --  graphics_structures%s
   --  graphics_configuration%s
   --  keyboard%s
   --  keyboard%b
   --  spaceship_p%s
   --  spaceship_p%b
   --  sphere_p%s
   --  sphere_p%b
   --  models%s
   --  models%b
   --  graphics_data%s
   --  graphics_setup%s
   --  graphics_setup%b
   --  graphics_opengl%s
   --  graphics_opengl%b
   --  swarm_structures_base%s
   --  shared_message_structure%s
   --  swarm_configurations%s
   --  swarm_configurations%b
   --  swarm_configuration%s
   --  swarm_configuration%b
   --  vehicle_message_type%s
   --  vehicle_message_type%b
   --  vehicle_protected_message_queue%s
   --  vehicle_protected_message_queue%b
   --  vehicle_task_type%s
   --  swarm_structures%s
   --  swarm_structures%b
   --  vehicle_interface%s
   --  swarm_data%s
   --  swarm_control%s
   --  swarm_control%b
   --  vehicle_task_type%b
   --  vehicle_interface%b
   --  swarm_control_concurrent_generic%s
   --  swarm_control_concurrent_generic%b
   --  callback_procedures%s
   --  callback_procedures%b
   --  swarm%b
   --  END ELABORATION ORDER

end ada_main;
