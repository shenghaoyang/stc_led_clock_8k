fsm.d ./fsm.rel: ../fsm.c /home/shenghao/workspace/TESTMCS51/fsm.h \
 /home/shenghao/workspace/TESTMCS51/stc15w408as.h \
 /home/shenghao/workspace/TESTMCS51/ds1302.h \
 /home/shenghao/workspace/TESTMCS51/crc.h \
 /home/shenghao/workspace/TESTMCS51/ledfonts.h \
 /home/shenghao/workspace/TESTMCS51/eeprom.h \
 /home/shenghao/workspace/TESTMCS51/display.h \
 /home/shenghao/workspace/TESTMCS51/board_config.h \
 /home/shenghao/workspace/TESTMCS51/uart.h \
 /home/shenghao/workspace/TESTMCS51/button.h \
 /home/shenghao/workspace/TESTMCS51/adc.h \
 /home/shenghao/workspace/TESTMCS51/alarm.h \
 /home/shenghao/workspace/TESTMCS51/timer.h
sdcc: Calling preprocessor...
sdcc: sdcpp -nostdinc -Wall -std=c11 -MM -I/usr/share/sdcc/include/mcs51 -I/usr/share/sdcc/include/ -I/home/shenghao/workspace/TESTMCS51 -obj-ext=.rel -D__SDCC_CHAR_UNSIGNED -D__SDCC_MODEL_SMALL -D__SDCC_FLOAT_REENT -D__SDCC=3_6_9 -D__SDCC_VERSION_MAJOR=3 -D__SDCC_VERSION_MINOR=6 -D__SDCC_VERSION_PATCH=9 -DSDCC=369 -D__SDCC_REVISION=9959 -D__SDCC_mcs51 -D__STDC_NO_COMPLEX__=1 -D__STDC_NO_THREADS__=1 -D__STDC_NO_ATOMICS__=1 -D__STDC_NO_VLA__=1 -D__STDC_ISO_10646__=201409L -D__STDC_UTF_16__=1 -D__STDC_UTF_32__=1 -isystem /usr/bin/../share/sdcc/include/mcs51 -isystem /usr/share/sdcc/include/mcs51 -isystem /usr/bin/../share/sdcc/include -isystem /usr/share/sdcc/include  ../fsm.c 
