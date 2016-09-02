
function(read_define_value_from_header PATH VARIABLE)
	
    if(EXISTS ${PATH})
	    file(STRINGS ${PATH} FILE_ENTRIES)  # Settings file split into lines
	
	    foreach(FILE_ENTRY ${FILE_ENTRIES})
	        if("${FILE_ENTRY}" MATCHES "^[ ]*#define[ ]+${VARIABLE}([ ]+([^/]*))?")
	        	
	        	set(FOUND 1)
	        	set(VALUE ${CMAKE_MATCH_1})
	        	
	        	if(VALUE)
	        		STRING(STRIP ${VALUE} VALUE)
	        	endif()
	        	
	        	message(STATUS "Variable ${VARIABLE} found in line: " ${FILE_ENTRY})
	        	message(STATUS "${VARIABLE}'s value is: " '${VALUE}')
	        	
	            break()
	       
	        endif()
	
		endforeach()
		
		if(NOT FOUND)
			message(STATUS "Variable ${VARIABLE} not found")
		endif()
		
	else()
		message(STATUS "Header path ${PATH} does not exist")
	endif()
  
  
  set(${VARIABLE}_FOUND ${FOUND} PARENT_SCOPE)
  set(${VARIABLE}_VALUE ${VALUE} PARENT_SCOPE)
  
  
endfunction()

function(get_motherboard SRCPATH)
	read_define_value_from_header(${SRCPATH}/Configuration.h MOTHERBOARD)
endfunction()

