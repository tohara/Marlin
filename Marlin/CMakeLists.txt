

#set(${PROJECT_NAME}_BOARD mega)

#set(${PROJECT_NAME}_CPU atmega2560)


#load_arduino_style_settings(Marlin_Boards ${Marlin_SOURCE_DIR}/cmake/boards.txt)

#print_list(Marlin_Boards)

#get_motherboard(${CMAKE_CURRENT_LIST_DIR})
setup_motherboard(${PROJECT_NAME} ${CMAKE_CURRENT_LIST_DIR})

#set(${PROJECT_NAME}_BOARD ${${MOTHERBOARD}.board})

#set(${PROJECT_NAME}_CPU ${${MOTHERBOARD}.mcu})


# Define the source code
file(GLOB SOURCES "*.cpp")
set(${PROJECT_NAME}_SRCS ${SOURCES})

# Define the port for uploading code to the Arduino
if(UPLOAD_PORT)
    set(${PROJECT_NAME}_PORT ${UPLOAD_PORT})
else()
    set(${PROJECT_NAME}_PORT /dev/ttyACM0)
endif()

# Command to generate code arduino firmware (.hex file)
generate_arduino_firmware(${PROJECT_NAME})
