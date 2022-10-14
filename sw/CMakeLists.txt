cmake_minimum_required (VERSION 3.0)

include(CMakeParseArguments)

if (${CMAKE_VERSION} VERSION_GREATER 3.1.0)
  set(USES_TERMINAL "USES_TERMINAL")
else()
  set(USES_TERMINAL "")
endif()

# Force object file extension to be .o
set(UNIX TRUE CACHE STRING "" FORCE)

# System name
# If we set the system to Clang/GCC we get "-rdynamic"
# however we need Linux for dynamic linking stuffs.
# We should probably create a custom system name
set(CMAKE_SYSTEM_NAME "Linux-CXX")

enable_language(C ASM)
project (pulp_software C)

enable_testing()

# set(RISCV 1)



set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS}")

set(CMAKE_OBJDUMP_FLAGS -d)


set(LDSCRIPT "stm32f4xx.ld")
# set(LDSCRIPT_BOOT "link.boot.ld" )


set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wextra -Wall -Wno-unused-parameter -Wno-unused-variable -Wno-unused-function -fno-data-sections -fno-function-sections -fdiagnostics-color=always")
# set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -L${CMAKE_CURRENT_SOURCE_DIR}/ref -T${LDSCRIPT} -Wl,--gc-sections")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -L${CMAKE_CURRENT_SOURCE_DIR}/ref -T${LDSCRIPT}")
# set(BOOT_LINKER_FLAGS      "-L${CMAKE_CURRENT_SOURCE_DIR}/ref -T${LDSCRIPT_BOOT} -Wl,--gc-sections")
set(BOOT_LINKER_FLAGS      "-L${CMAKE_CURRENT_SOURCE_DIR}/ref -T${LDSCRIPT_BOOT}")

set(CMAKE_CXX_COMPILER "${CMAKE_C_COMPILER}")
set(CMAKE_CXX_FLAGS    "${CMAKE_C_FLAGS}")

set(CMAKE_ASM_COMPILER "${CMAKE_C_COMPILER}")
set(CMAKE_ASM_FLAGS    "${CMAKE_C_FLAGS}")

set(AFTAB_MODELSIM_DIRECTORY "" CACHE PATH "Path to the ModelSim AFTAB build")
set(VSIM "vsim" CACHE FILEPATH "Path to the vsim executable")

################################################################################


set(crt0_boot_M "ref/startup_stm32f429xx.S")   
# set(crt0_boot_M "ref/startup_stm32f429xx_dummy.S")   


set_source_files_properties(${crt0} PROPERTIES LANGUAGE C)
add_library(crt0_boot_M OBJECT ${crt0_boot_M})

set_target_properties(crt0_boot_M PROPERTIES COMPILE_FLAGS "-DBOOT_M")


################################################################################
# Other targets
################################################################################


add_custom_target(all_embench
  COMMAND python3 "build_all_embench.py"
  WORKING_DIRECTORY ${NUCLEO_DIRECTORY}../utils
  ${USES_TERMINAL})

add_custom_target(all_embench_mod
  COMMAND python3 "build_all_embench_mod.py"
  WORKING_DIRECTORY ${NUCLEO_DIRECTORY}../utils
  ${USES_TERMINAL})


################################################################################

add_subdirectory(apps)
add_subdirectory(support)

set( SUB_DIRS "aha-mont64"
              "crc32"
              "cubic"
              "edn"
              "huffbench"
              "matmult-int"
              "md5sum"
              "minver"
              "nbody"
              "nettle-aes"
              "nettle-sha256"
              "nsichneu"
              "picojpeg"
              "primecount"
              "qrduino"
              "sglib-combined"
              "slre"
              "st"
              "statemate"
              "tarfind"
              "ud"
              "wikisort"

              "aha-mont64_mod"
              "crc32_mod"
              "cubic_mod"
              "edn_mod"
              "huffbench_mod"
              "matmult-int_mod"
              "md5sum_mod"
              "minver_mod"
              "nbody_mod"
              "nettle-aes_mod"
              "nettle-sha256_mod"
              "nsichneu_mod"
              "picojpeg_mod"
              "primecount_mod"
              "qrduino_mod"
              "sglib-combined_mod"
              "slre_mod"
              "st_mod"
              "statemate_mod"
              "tarfind_mod"
              "ud_mod"
              "wikisort_mod"
              )

set( CLEAN_TARGETS "")

foreach( dir  ${SUB_DIRS})
 list(APPEND CLEAN_TARGETS "apps/embench/${dir}/${dir}.bin" )
 list(APPEND CLEAN_TARGETS "apps/embench/${dir}/${dir}.elf" )
 list(APPEND CLEAN_TARGETS "apps/embench/${dir}/${dir}.s19" )
 list(APPEND CLEAN_TARGETS "apps/embench/${dir}/${dir}.read" )
 list(APPEND CLEAN_TARGETS "apps/embench/${dir}/${dir}.lst" )
 list(APPEND CLEAN_TARGETS "apps/embench/${dir}/transcript" )
 list(APPEND CLEAN_TARGETS "apps/embench/${dir}/vsim.wlf" )
 list(APPEND CLEAN_TARGETS "apps/embench/${dir}/vsim.log" )
 list(APPEND CLEAN_TARGETS "apps/embench/${dir}/slm_files/dram_dump.txt" )
 list(APPEND CLEAN_TARGETS "apps/embench/${dir}/slm_files/flash_stim.slm" )
 list(APPEND CLEAN_TARGETS "apps/embench/${dir}/slm_files/l2_ram.slm" )
 list(APPEND CLEAN_TARGETS "apps/embench/${dir}/slm_files/l2_ram_cut0_hi.slm" )
 list(APPEND CLEAN_TARGETS "apps/embench/${dir}/slm_files/l2_ram_cut0_lo.slm" )
 list(APPEND CLEAN_TARGETS "apps/embench/${dir}/slm_files/l2_stim.slm" )
 list(APPEND CLEAN_TARGETS "apps/embench/${dir}/slm_files/spi_stim.txt" )
 list(APPEND CLEAN_TARGETS "apps/embench/${dir}/slm_files/tcdm_bank0.slm" )

 list(APPEND CLEAN_TARGETS "apps/embench_mod/${dir}/${dir}.bin" )
 list(APPEND CLEAN_TARGETS "apps/embench_mod/${dir}/${dir}.elf" )
 list(APPEND CLEAN_TARGETS "apps/embench_mod/${dir}/${dir}.s19" )
 list(APPEND CLEAN_TARGETS "apps/embench_mod/${dir}/${dir}.read" )
 list(APPEND CLEAN_TARGETS "apps/embench_mod/${dir}/${dir}.lst" )
 list(APPEND CLEAN_TARGETS "apps/embench_mod/${dir}/transcript" )
 list(APPEND CLEAN_TARGETS "apps/embench_mod/${dir}/vsim.wlf" )
 list(APPEND CLEAN_TARGETS "apps/embench_mod/${dir}/vsim.log" )
 list(APPEND CLEAN_TARGETS "apps/embench_mod/${dir}/slm_files/dram_dump.txt" )
 list(APPEND CLEAN_TARGETS "apps/embench_mod/${dir}/slm_files/flash_stim.slm" )
 list(APPEND CLEAN_TARGETS "apps/embench_mod/${dir}/slm_files/l2_ram.slm" )
 list(APPEND CLEAN_TARGETS "apps/embench_mod/${dir}/slm_files/l2_ram_cut0_hi.slm" )
 list(APPEND CLEAN_TARGETS "apps/embench_mod/${dir}/slm_files/l2_ram_cut0_lo.slm" )
 list(APPEND CLEAN_TARGETS "apps/embench_mod/${dir}/slm_files/l2_stim.slm" )
 list(APPEND CLEAN_TARGETS "apps/embench_mod/${dir}/slm_files/spi_stim.txt" )
 list(APPEND CLEAN_TARGETS "apps/embench_mod/${dir}/slm_files/tcdm_bank0.slm" )
endforeach( )

set_directory_properties(PROPERTIES ADDITIONAL_MAKE_CLEAN_FILES "${CLEAN_TARGETS}")
                            

