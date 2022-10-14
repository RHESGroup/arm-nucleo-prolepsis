#!/bin/bash

#export PATH=/compilerpath/:${PATH}

OBJDUMP=`which arm-none-eabi-objdump`
OBJCOPY=`which arm-none-eabi-objcopy`

COMPILER=`which arm-none-eabi-gcc`
RANLIB=`which arm-none-eabi-ranlib`

TARGET_C_FLAGS="-g3 -O3 -MMD -MP -mthumb --specs=nosys.specs -mcpu=cortex-m4 -mpure-code -nostartfiles -Wa,-mimplicit-it=thumb"
# TARGET_C_FLAGS="-g3 -O3 -MMD -MP -mthumb --specs=nosys.specs -mcpu=cortex-m4 -mpure-code"

NUCLEO_DIRECTORY=/media/sf_Shared/arm-nucleo-prolepsis/

cmake "$NUCLEO_DIRECTORY"/sw/ \
    -DCMAKE_C_COMPILER="$COMPILER" \
    -DCMAKE_C_FLAGS="$TARGET_C_FLAGS" \
    -DCMAKE_OBJCOPY="$OBJCOPY" \
    -DCMAKE_OBJDUMP="$OBJDUMP" \

