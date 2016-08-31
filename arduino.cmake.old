SET(CMAKE_SYSTEM_NAME Generic)

SET(CMAKE_C_COMPILER avr-gcc)
SET(CMAKE_CXX_COMPILER avr-g++)

#SET(CSTANDARD "-std=gnu99")
SET(CDEBUG "-gstabs")
SET(CWARN "-Wall -Wstrict-prototypes")
SET(CTUNING "-funsigned-char -funsigned-bitfields -fpack-struct -fshort-enums -w -ffunction-sections -fdata-sections -DARDUINO=10680")
SET(COPT "-Os")
SET(CINCS "-I${ArduinoCode_SOURCE_DIR}/arduino-1.6.8")
SET(CMCU "-mmcu=atmega2560")
SET(CDEFS "-DF_CPU=16000000")
SET(CEXTRA "-fno-use-cxa-atexit")


SET(CFLAGS "${CMCU} ${CDEBUG} ${CDEFS} ${CINCS} ${COPT} ${CWARN} ${CEXTRA} ${CTUNING}")
SET(CXXFLAGS "${CMCU} ${CDEFS} ${CINCS} ${COPT} -Wall ${CEXTRA} ${CTUNING}")

SET(CMAKE_C_FLAGS  ${CFLAGS})
SET(CMAKE_CXX_FLAGS ${CXXFLAGS})

SET(CMAKE_EXE_LINKER_FLAGS "-Wl,--gc-sections")

set(CMAKE_SHARED_LIBRARY_LINK_C_FLAGS "")   # remove -rdynamic for C
set(CMAKE_SHARED_LIBRARY_LINK_CXX_FLAGS "") # remove -rdynamic for CXX


SET(ARDUINO_PATH /home/tom/arduino-1.6.8)

SET(LIBDIR 
			
			${ARDUINO_PATH}/hardware/arduino/avr/cores/arduino
			${ARDUINO_PATH}/hardware/arduino/avr/variants/mega
			${ARDUINO_PATH}/hardware/arduino/avr/libraries/SPI/src
			${ARDUINO_PATH}/libraries/LiquidCrystal/src
			${ARDUINO_PATH}/libraries/U8glib
			${ARDUINO_PATH}/libraries/U8glib/utility
)
		
SET(LIBS
			wiring.c
			wiring_analog.c
			wiring_digital.c
			wiring_pulse.c
			wiring_shift.c
			WInterrupts.c
			hooks.c

			SPI.cpp
			WMath.cpp
			WString.cpp
			Print.cpp
			main.cpp
			Tone.cpp
			
)	

file(GLOB U8GLIB ${ARDUINO_PATH}/libraries/U8glib/utility/*.c)

include_directories(${LIBDIR})
LINK_DIRECTORIES(${LIBDIR})

foreach(DIR ${LIBDIR})
	foreach(LIB ${LIBS})
		file(GLOB SRCTMP ${DIR}/${LIB})
		list(APPEND SRC ${SRCTMP})
		
	endforeach()
endforeach()

add_library(arduinocore ${SRC})
add_library(U8glib ${U8GLIB})

