# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "/home/luisemmanuel/MPLABProjects/usbKeyboard/out/usbKeyboard/default.cmf"
  "/home/luisemmanuel/MPLABProjects/usbKeyboard/out/usbKeyboard/default.hex"
  "/home/luisemmanuel/MPLABProjects/usbKeyboard/out/usbKeyboard/default.hxl"
  "/home/luisemmanuel/MPLABProjects/usbKeyboard/out/usbKeyboard/default.mum"
  "/home/luisemmanuel/MPLABProjects/usbKeyboard/out/usbKeyboard/default.o"
  "/home/luisemmanuel/MPLABProjects/usbKeyboard/out/usbKeyboard/default.sdb"
  "/home/luisemmanuel/MPLABProjects/usbKeyboard/out/usbKeyboard/default.sym"
  )
endif()
