cmake_minimum_required(VERSION 2.8.3)
project(c3_hlac_core)

find_package(catkin REQUIRED COMPONENTS roscpp)

# actually we should run 
execute_process(COMMAND cmake -E chdir ${PROJECT_SOURCE_DIR} make -f Makefile.download)

install(FILES lib/libc3_hlac_core.so DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION})