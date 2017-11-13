# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/tjmaster/ProgramIDE/clion-2017.2.3/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/tjmaster/ProgramIDE/clion-2017.2.3/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug

# Include any dependencies generated for this target.
include toolkits/computer_vision/CMakeFiles/stitch.dir/depend.make

# Include the progress variables for this target.
include toolkits/computer_vision/CMakeFiles/stitch.dir/progress.make

# Include the compile flags for this target's objects.
include toolkits/computer_vision/CMakeFiles/stitch.dir/flags.make

toolkits/computer_vision/CMakeFiles/stitch.dir/stitch_main.cpp.o: toolkits/computer_vision/CMakeFiles/stitch.dir/flags.make
toolkits/computer_vision/CMakeFiles/stitch.dir/stitch_main.cpp.o: ../toolkits/computer_vision/stitch_main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object toolkits/computer_vision/CMakeFiles/stitch.dir/stitch_main.cpp.o"
	cd /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/toolkits/computer_vision && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/stitch.dir/stitch_main.cpp.o -c /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/toolkits/computer_vision/stitch_main.cpp

toolkits/computer_vision/CMakeFiles/stitch.dir/stitch_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stitch.dir/stitch_main.cpp.i"
	cd /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/toolkits/computer_vision && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/toolkits/computer_vision/stitch_main.cpp > CMakeFiles/stitch.dir/stitch_main.cpp.i

toolkits/computer_vision/CMakeFiles/stitch.dir/stitch_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stitch.dir/stitch_main.cpp.s"
	cd /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/toolkits/computer_vision && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/toolkits/computer_vision/stitch_main.cpp -o CMakeFiles/stitch.dir/stitch_main.cpp.s

toolkits/computer_vision/CMakeFiles/stitch.dir/stitch_main.cpp.o.requires:

.PHONY : toolkits/computer_vision/CMakeFiles/stitch.dir/stitch_main.cpp.o.requires

toolkits/computer_vision/CMakeFiles/stitch.dir/stitch_main.cpp.o.provides: toolkits/computer_vision/CMakeFiles/stitch.dir/stitch_main.cpp.o.requires
	$(MAKE) -f toolkits/computer_vision/CMakeFiles/stitch.dir/build.make toolkits/computer_vision/CMakeFiles/stitch.dir/stitch_main.cpp.o.provides.build
.PHONY : toolkits/computer_vision/CMakeFiles/stitch.dir/stitch_main.cpp.o.provides

toolkits/computer_vision/CMakeFiles/stitch.dir/stitch_main.cpp.o.provides.build: toolkits/computer_vision/CMakeFiles/stitch.dir/stitch_main.cpp.o


# Object files for target stitch
stitch_OBJECTS = \
"CMakeFiles/stitch.dir/stitch_main.cpp.o"

# External object files for target stitch
stitch_EXTERNAL_OBJECTS =

toolkits/computer_vision/stitch: toolkits/computer_vision/CMakeFiles/stitch.dir/stitch_main.cpp.o
toolkits/computer_vision/stitch: toolkits/computer_vision/CMakeFiles/stitch.dir/build.make
toolkits/computer_vision/stitch: src/graphlab/libgraphlab.a
toolkits/computer_vision/stitch: ../deps/local/lib/libboost_filesystem.a
toolkits/computer_vision/stitch: ../deps/local/lib/libboost_program_options.a
toolkits/computer_vision/stitch: ../deps/local/lib/libboost_system.a
toolkits/computer_vision/stitch: ../deps/local/lib/libboost_iostreams.a
toolkits/computer_vision/stitch: ../deps/local/lib/libboost_context.a
toolkits/computer_vision/stitch: ../deps/local/lib/libboost_date_time.a
toolkits/computer_vision/stitch: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi_cxx.so
toolkits/computer_vision/stitch: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
toolkits/computer_vision/stitch: /home/tjmaster/softwares/jdk1.8.0_151/jre/lib/amd64/server/libjvm.so
toolkits/computer_vision/stitch: ../deps/local/lib/libboost_filesystem.a
toolkits/computer_vision/stitch: ../deps/local/lib/libboost_program_options.a
toolkits/computer_vision/stitch: ../deps/local/lib/libboost_system.a
toolkits/computer_vision/stitch: ../deps/local/lib/libboost_iostreams.a
toolkits/computer_vision/stitch: ../deps/local/lib/libboost_context.a
toolkits/computer_vision/stitch: ../deps/local/lib/libboost_date_time.a
toolkits/computer_vision/stitch: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi_cxx.so
toolkits/computer_vision/stitch: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
toolkits/computer_vision/stitch: /home/tjmaster/softwares/jdk1.8.0_151/jre/lib/amd64/server/libjvm.so
toolkits/computer_vision/stitch: toolkits/computer_vision/CMakeFiles/stitch.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable stitch"
	cd /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/toolkits/computer_vision && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/stitch.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
toolkits/computer_vision/CMakeFiles/stitch.dir/build: toolkits/computer_vision/stitch

.PHONY : toolkits/computer_vision/CMakeFiles/stitch.dir/build

toolkits/computer_vision/CMakeFiles/stitch.dir/requires: toolkits/computer_vision/CMakeFiles/stitch.dir/stitch_main.cpp.o.requires

.PHONY : toolkits/computer_vision/CMakeFiles/stitch.dir/requires

toolkits/computer_vision/CMakeFiles/stitch.dir/clean:
	cd /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/toolkits/computer_vision && $(CMAKE_COMMAND) -P CMakeFiles/stitch.dir/cmake_clean.cmake
.PHONY : toolkits/computer_vision/CMakeFiles/stitch.dir/clean

toolkits/computer_vision/CMakeFiles/stitch.dir/depend:
	cd /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/toolkits/computer_vision /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/toolkits/computer_vision /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/toolkits/computer_vision/CMakeFiles/stitch.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : toolkits/computer_vision/CMakeFiles/stitch.dir/depend

