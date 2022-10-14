set(SOURCES
    src/system_stm32f4xx.c
    src/main.c
    # src/dummy-libm.c
    # src/dummy-libgcc.c
    # src/dummy-libc.c
    # src/dummy-crt0.c
    src/chipsupport.c
    src/chip.c
    src/boardsupport.c
    src/board.c
    src/beebsc.c
    )

set(HEADERS
    inc/system_stm32f4xx.h
    inc/support.h
    inc/stm32f429xx.h
    # inc/mpu_armv7.h
    inc/core_cm4.h
    inc/cmsis_version.h
    # inc/cmsis_gcc.h
    # inc/cmsis_compiler.h
    inc/chipsupport.h
    inc/boardsupport.h
    inc/beebsc.h
    )

include_directories(inc/)

add_library(support STATIC ${SOURCES} ${HEADERS})