set(UTILS_DIR ${CMAKE_SOURCE_DIR}/utils)

set(BOOT_MODE "crt0_boot_M")     


################################################################################
# main application macro
# Optional arguments:
#  - SUBDIR prefix   (prefix application with prefix)
#
# Attention: Every application name has to be unique and must have its own
#            build folder, so if you have multiple applications in one folder,
#            use SUBDIR to separate them
################################################################################
macro(add_application NAME SOURCE_FILES)
  # optional argument parsing
  set(oneValueArgs SUBDIR TB TB_TEST LABELS FLAGS)
  set(multiValueArgs LIBS)
  cmake_parse_arguments(ARG "${options}" "${oneValueArgs}" "${multiValueArgs}" ${ARGN})
  set(SUBDIR ${ARG_SUBDIR})

  include_directories(
    ${CMAKE_SOURCE_DIR}/support/inc
  )

  add_executable(${NAME}.elf $<TARGET_OBJECTS:${BOOT_MODE}> ${SOURCE_FILES}) 

  # set subdirectory for add_executable
  if(NOT "${SUBDIR}" STREQUAL "")
    set_target_properties(${NAME}.elf PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${SUBDIR})
  endif()

  # set optional compile flags per application
  if(NOT "${ARG_FLAGS}" STREQUAL "")
    set_target_properties(${NAME}.elf PROPERTIES COMPILE_FLAGS ${ARG_FLAGS})
  endif()

  set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -lm")

  target_link_libraries(${NAME}.elf support)

  # this specifies the testbench to use for simulation
  if(ARG_TB)
    set_target_properties(${NAME}.elf PROPERTIES TB ${ARG_TB})
  else()
    set_target_properties(${NAME}.elf PROPERTIES TB run.tcl)
  endif()

  # this specifies the TEST parameter argument for the testbench (if any)
  if(ARG_TB_TEST)
    set_target_properties(${NAME}.elf PROPERTIES TB_TEST ${ARG_TB_TEST})
  else()
    set_target_properties(${NAME}.elf PROPERTIES TB_TEST "")
  endif()

  add_custom_target(${NAME}.read)
  add_custom_command(TARGET ${NAME}.read
    POST_BUILD
    COMMAND ${CMAKE_OBJDUMP} ${CMAKE_OBJDUMP_FLAGS} $<TARGET_FILE:${NAME}.elf> > ${NAME}.read
    WORKING_DIRECTORY ./${SUBDIR}
    DEPENDS ${NAME}.elf)

  add_custom_target(${NAME}.list)
  add_custom_command(TARGET ${NAME}.list
    POST_BUILD
    COMMAND ${CMAKE_OBJDUMP} -D $<TARGET_FILE:${NAME}.elf> > ${NAME}.lst
    WORKING_DIRECTORY ./${SUBDIR}
    DEPENDS ${NAME}.elf)

  add_custom_target(${NAME}.annotate)
  add_custom_command(TARGET ${NAME}.annotate
    COMMAND  ${UTILS_DIR}/annotate.py ${NAME}.read
    WORKING_DIRECTORY ./${SUBDIR}
    DEPENDS ${NAME}.read)

  add_custom_target(${NAME}.bin)
  add_custom_command(TARGET ${NAME}.bin
    POST_BUILD
    COMMAND ${CMAKE_OBJCOPY} -O binary $<TARGET_FILE:${NAME}.elf> ${NAME}.bin
    WORKING_DIRECTORY ./${SUBDIR}
    DEPENDS ${NAME}.elf)

  add_custom_target(${NAME}.flash)
  add_custom_command(TARGET ${NAME}.flash
    POST_BUILD
    COMMAND st-flash write ${NAME}.bin 0x8000000
    WORKING_DIRECTORY ./${SUBDIR}
    DEPENDS ${NAME}.bin)

 if(ARG_LABELS)
    set_tests_properties(${NAME}.test PROPERTIES LABELS "${ARG_LABELS}")
  endif()

endmacro()


################################################################################

add_subdirectory(embench)
add_subdirectory(embench_mod)
