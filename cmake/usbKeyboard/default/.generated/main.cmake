include("${CMAKE_CURRENT_LIST_DIR}/rule.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/file.cmake")

set(usbKeyboard_default_library_list )

set(OUTPUT_SUFFIX elf)
# Handle files with suffix (s|as|asm|AS|ASM|As|aS|Asm), for group default-XC8
if(usbKeyboard_default_default_XC8_FILE_TYPE_assemble)
add_library(usbKeyboard_default_default_XC8_assemble OBJECT ${usbKeyboard_default_default_XC8_FILE_TYPE_assemble})
    usbKeyboard_default_default_XC8_assemble_rule(usbKeyboard_default_default_XC8_assemble)
    list(APPEND usbKeyboard_default_library_list "$<TARGET_OBJECTS:usbKeyboard_default_default_XC8_assemble>")

endif()

# Handle files with suffix S, for group default-XC8
if(usbKeyboard_default_default_XC8_FILE_TYPE_assemblePreprocess)
add_library(usbKeyboard_default_default_XC8_assemblePreprocess OBJECT ${usbKeyboard_default_default_XC8_FILE_TYPE_assemblePreprocess})
    usbKeyboard_default_default_XC8_assemblePreprocess_rule(usbKeyboard_default_default_XC8_assemblePreprocess)
    list(APPEND usbKeyboard_default_library_list "$<TARGET_OBJECTS:usbKeyboard_default_default_XC8_assemblePreprocess>")

endif()

# Handle files with suffix [cC], for group default-XC8
if(usbKeyboard_default_default_XC8_FILE_TYPE_compile)
add_library(usbKeyboard_default_default_XC8_compile OBJECT ${usbKeyboard_default_default_XC8_FILE_TYPE_compile})
    usbKeyboard_default_default_XC8_compile_rule(usbKeyboard_default_default_XC8_compile)
    list(APPEND usbKeyboard_default_library_list "$<TARGET_OBJECTS:usbKeyboard_default_default_XC8_compile>")

endif()


# Main target for this project
add_executable(usbKeyboard_default_image_EaaGTcEU ${usbKeyboard_default_library_list})

set_target_properties(usbKeyboard_default_image_EaaGTcEU PROPERTIES
    OUTPUT_NAME "default"
    SUFFIX ".elf"
    ADDITIONAL_CLEAN_FILES "${output_extensions}"
    RUNTIME_OUTPUT_DIRECTORY "${usbKeyboard_default_output_dir}")
target_link_libraries(usbKeyboard_default_image_EaaGTcEU PRIVATE ${usbKeyboard_default_default_XC8_FILE_TYPE_link})
# Add the link options from the rule file.
usbKeyboard_default_link_rule( usbKeyboard_default_image_EaaGTcEU)



