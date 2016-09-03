#====================================================================#
#  Get motherboard settings from Configuration.h                     #
#  setup_motherboard(TARGET Marlin_src_folder)                       #
#  Returns ${TARGET}_BOARD and ${TARGET}_CPU                         #
#                                                                    #
#  To set it manually:                                               #
#    set(${PROJECT_NAME}_BOARD mega)                                 #
#    set(${PROJECT_NAME}_CPU atmega2560)                             #
#====================================================================#
setup_motherboard(${PROJECT_NAME} ${CMAKE_CURRENT_LIST_DIR})

#====================================================================#
#  Setup all source files                                            #
#                                                                    #
#====================================================================#

file(GLOB SOURCES "*.cpp")
set(${PROJECT_NAME}_SRCS ${SOURCES})

#====================================================================#
#  Define the port for uploading code to the Arduino                 #
#  Can be set from commandline with:                                 #
#    cmake .. -DUPLOAD_PORT=/dev/ttyACM0                             #
#====================================================================#
if(UPLOAD_PORT)
    set(${PROJECT_NAME}_PORT ${UPLOAD_PORT})
else()
    set(${PROJECT_NAME}_PORT /dev/ttyACM0)
endif()

#====================================================================#
# Command to generate code arduino firmware (.hex file)              #
#====================================================================#
generate_arduino_firmware(${PROJECT_NAME})
