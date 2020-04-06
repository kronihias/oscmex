#!/bin/sh
# change lib path


install_name_tool -change /usr/local/opt/liblo/lib/liblo.7.dylib @loader_path/liblo.7.dylib  osc_free_address.mexmaci64

install_name_tool -change /usr/local/opt/liblo/lib/liblo.7.dylib @loader_path/liblo.7.dylib  osc_free_server.mexmaci64

install_name_tool -change /usr/local/opt/liblo/lib/liblo.7.dylib @loader_path/liblo.7.dylib  osc_new_address.mexmaci64

install_name_tool -change /usr/local/opt/liblo/lib/liblo.7.dylib @loader_path/liblo.7.dylib  osc_new_server.mexmaci64

install_name_tool -change /usr/local/opt/liblo/lib/liblo.7.dylib @loader_path/liblo.7.dylib  osc_recv.mexmaci64

install_name_tool -change /usr/local/opt/liblo/lib/liblo.7.dylib @loader_path/liblo.7.dylib  osc_send.mexmaci64



# liblo.7.dylib
install_name_tool -id @loader_path/liblo.7.dylib  liblo.7.dylib