# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/philchen/ros_basic/src/ros_define_data

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/philchen/ros_basic/build/ros_define_data

# Include any dependencies generated for this target.
include CMakeFiles/server.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/server.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/server.dir/flags.make

CMakeFiles/server.dir/src/server.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/src/server.cpp.o: /home/philchen/ros_basic/src/ros_define_data/src/server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/philchen/ros_basic/build/ros_define_data/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/server.dir/src/server.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/server.dir/src/server.cpp.o -c /home/philchen/ros_basic/src/ros_define_data/src/server.cpp

CMakeFiles/server.dir/src/server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/src/server.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/philchen/ros_basic/src/ros_define_data/src/server.cpp > CMakeFiles/server.dir/src/server.cpp.i

CMakeFiles/server.dir/src/server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/src/server.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/philchen/ros_basic/src/ros_define_data/src/server.cpp -o CMakeFiles/server.dir/src/server.cpp.s

# Object files for target server
server_OBJECTS = \
"CMakeFiles/server.dir/src/server.cpp.o"

# External object files for target server
server_EXTERNAL_OBJECTS =

/home/philchen/ros_basic/devel/.private/ros_define_data/lib/ros_define_data/server: CMakeFiles/server.dir/src/server.cpp.o
/home/philchen/ros_basic/devel/.private/ros_define_data/lib/ros_define_data/server: CMakeFiles/server.dir/build.make
/home/philchen/ros_basic/devel/.private/ros_define_data/lib/ros_define_data/server: /opt/ros/melodic/lib/libroscpp.so
/home/philchen/ros_basic/devel/.private/ros_define_data/lib/ros_define_data/server: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/philchen/ros_basic/devel/.private/ros_define_data/lib/ros_define_data/server: /opt/ros/melodic/lib/librosconsole.so
/home/philchen/ros_basic/devel/.private/ros_define_data/lib/ros_define_data/server: /opt/ros/melodic/lib/librosconsole_log4cxx.so
/home/philchen/ros_basic/devel/.private/ros_define_data/lib/ros_define_data/server: /opt/ros/melodic/lib/librosconsole_backend_interface.so
/home/philchen/ros_basic/devel/.private/ros_define_data/lib/ros_define_data/server: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/philchen/ros_basic/devel/.private/ros_define_data/lib/ros_define_data/server: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/philchen/ros_basic/devel/.private/ros_define_data/lib/ros_define_data/server: /opt/ros/melodic/lib/libxmlrpcpp.so
/home/philchen/ros_basic/devel/.private/ros_define_data/lib/ros_define_data/server: /opt/ros/melodic/lib/libroscpp_serialization.so
/home/philchen/ros_basic/devel/.private/ros_define_data/lib/ros_define_data/server: /opt/ros/melodic/lib/librostime.so
/home/philchen/ros_basic/devel/.private/ros_define_data/lib/ros_define_data/server: /opt/ros/melodic/lib/libcpp_common.so
/home/philchen/ros_basic/devel/.private/ros_define_data/lib/ros_define_data/server: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/philchen/ros_basic/devel/.private/ros_define_data/lib/ros_define_data/server: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/philchen/ros_basic/devel/.private/ros_define_data/lib/ros_define_data/server: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/philchen/ros_basic/devel/.private/ros_define_data/lib/ros_define_data/server: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/philchen/ros_basic/devel/.private/ros_define_data/lib/ros_define_data/server: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/philchen/ros_basic/devel/.private/ros_define_data/lib/ros_define_data/server: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/philchen/ros_basic/devel/.private/ros_define_data/lib/ros_define_data/server: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/philchen/ros_basic/devel/.private/ros_define_data/lib/ros_define_data/server: CMakeFiles/server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/philchen/ros_basic/build/ros_define_data/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/philchen/ros_basic/devel/.private/ros_define_data/lib/ros_define_data/server"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/server.dir/build: /home/philchen/ros_basic/devel/.private/ros_define_data/lib/ros_define_data/server

.PHONY : CMakeFiles/server.dir/build

CMakeFiles/server.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/server.dir/cmake_clean.cmake
.PHONY : CMakeFiles/server.dir/clean

CMakeFiles/server.dir/depend:
	cd /home/philchen/ros_basic/build/ros_define_data && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/philchen/ros_basic/src/ros_define_data /home/philchen/ros_basic/src/ros_define_data /home/philchen/ros_basic/build/ros_define_data /home/philchen/ros_basic/build/ros_define_data /home/philchen/ros_basic/build/ros_define_data/CMakeFiles/server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/server.dir/depend

