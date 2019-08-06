# export CMAKE_INCLUDE_PATH=/tmp/usr/include/hello:$CMAKE_INCLUDE_PATH 
#FIND_PATH(HELLO_INCLUDE_DIR hello.h)  
# or
FIND_PATH(HELLO_INCLUDE_DIR hello.h  /usr/include/hello  
	/usr/local/include/hello  /tmp/usr/include/hello )

# export CMAKE_LIBRARY_PATH=/tmp/usr/lib/:$CMAKE_LIBRARY_PATH
# FIND_LIBRARY(HELLO_LIBRARY  hello )
# or
FIND_LIBRARY(HELLO_LIBRARY  hello  /usr/lib/usr/local/lib  /tmp/usr/lib)

IF (HELLO_INCLUDE_DIR AND HELLO_LIBRARY)
	SET(HELLO_FOUND TRUE)
    MESSAGE(STATUS "HELLO library found")
ENDIF (HELLO_INCLUDE_DIR AND HELLO_LIBRARY)

IF (HELLO_FOUND)
	IF (NOT HELLO_FIND_QUIETLY)
		MESSAGE(STATUS "Found Hello.h Path: ${HELLO_INCLUDE_DIR}")
		MESSAGE(STATUS "Found Hello: ${HELLO_LIBRARY}")
	ENDIF (NOT HELLO_FIND_QUIETLY)
ELSE (HELLO_FOUND)
	IF (HELLO_FIND_REQUIRED)
		MESSAGE(FATAL_ERROR "Could not find hello library")
	ENDIF (HELLO_FIND_REQUIRED)
ENDIF (HELLO_FOUND)