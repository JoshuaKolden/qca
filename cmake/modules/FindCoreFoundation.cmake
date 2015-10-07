# Define:
# CoreFoundation_FOUND
# CoreFoundation_INCLUDE_DIR
# CoreFoundation_LIBRARY

set(COREFOUNDATION_FOUND false)
set(COREFOUNDATION_INCLUDE_DIR)
set(COREFOUNDATION_LIBRARY)

if(APPLE)
# The only platform it makes sense to check for CoreFoundation
    find_library(CoreFoundation CoreFoundation)
    if(CoreFoundation)
      message(STATUS "CoreFoundation: " ${CoreFoundation})
        set(COREFOUNDATION_FOUND true)
        set(COREFOUNDATION_INCLUDE_DIR ${CoreFoundation})
        set(COREFOUNDATION_LIBRARY "-framework CoreFoundation")
    endif(CoreFoundation)
endif(APPLE)