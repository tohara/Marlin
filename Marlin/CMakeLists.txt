include(${Marlin_SOURCE_DIR}/arduino.cmake)

	

link_libraries(arduinocore)

file(GLOB SOURCES "*.cpp")

add_executable(Marlin ${SOURCES})



