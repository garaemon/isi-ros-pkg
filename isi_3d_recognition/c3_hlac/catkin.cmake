cmake_minimum_required(VERSION 2.8.3)
project(c3_hlac)

find_package(catkin REQUIRED COMPONENTS c3_hlac_core pcl_ros)

include_directories(include ${catkin_INCLUDE_DIRS})

add_library(c3_hlac src/c3_hlac.cpp)
target_link_libraries(c3_hlac ${catkin_LIBRARIES})
#add_executable(example_c3_hlac test/example_c3_hlac.cpp)
#target_link_libraries(example_c3_hlac c3_hlac)

catkin_package(
  DEPENDS pcl
  CATKIN_DEPENDS c3_hlac_core
  INCLUDE_DIRS
  LIBRARIES c3_hlac
  )

install(TARGETS c3_hlac
  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
  ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION})
