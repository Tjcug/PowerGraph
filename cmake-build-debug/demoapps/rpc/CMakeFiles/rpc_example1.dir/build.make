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
include demoapps/rpc/CMakeFiles/rpc_example1.dir/depend.make

# Include the progress variables for this target.
include demoapps/rpc/CMakeFiles/rpc_example1.dir/progress.make

# Include the compile flags for this target's objects.
include demoapps/rpc/CMakeFiles/rpc_example1.dir/flags.make

demoapps/rpc/CMakeFiles/rpc_example1.dir/rpc_example1.cpp.o: demoapps/rpc/CMakeFiles/rpc_example1.dir/flags.make
demoapps/rpc/CMakeFiles/rpc_example1.dir/rpc_example1.cpp.o: ../demoapps/rpc/rpc_example1.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object demoapps/rpc/CMakeFiles/rpc_example1.dir/rpc_example1.cpp.o"
	cd /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/demoapps/rpc && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rpc_example1.dir/rpc_example1.cpp.o -c /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/demoapps/rpc/rpc_example1.cpp

demoapps/rpc/CMakeFiles/rpc_example1.dir/rpc_example1.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rpc_example1.dir/rpc_example1.cpp.i"
	cd /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/demoapps/rpc && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/demoapps/rpc/rpc_example1.cpp > CMakeFiles/rpc_example1.dir/rpc_example1.cpp.i

demoapps/rpc/CMakeFiles/rpc_example1.dir/rpc_example1.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rpc_example1.dir/rpc_example1.cpp.s"
	cd /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/demoapps/rpc && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/demoapps/rpc/rpc_example1.cpp -o CMakeFiles/rpc_example1.dir/rpc_example1.cpp.s

demoapps/rpc/CMakeFiles/rpc_example1.dir/rpc_example1.cpp.o.requires:

.PHONY : demoapps/rpc/CMakeFiles/rpc_example1.dir/rpc_example1.cpp.o.requires

demoapps/rpc/CMakeFiles/rpc_example1.dir/rpc_example1.cpp.o.provides: demoapps/rpc/CMakeFiles/rpc_example1.dir/rpc_example1.cpp.o.requires
	$(MAKE) -f demoapps/rpc/CMakeFiles/rpc_example1.dir/build.make demoapps/rpc/CMakeFiles/rpc_example1.dir/rpc_example1.cpp.o.provides.build
.PHONY : demoapps/rpc/CMakeFiles/rpc_example1.dir/rpc_example1.cpp.o.provides

demoapps/rpc/CMakeFiles/rpc_example1.dir/rpc_example1.cpp.o.provides.build: demoapps/rpc/CMakeFiles/rpc_example1.dir/rpc_example1.cpp.o


# Object files for target rpc_example1
rpc_example1_OBJECTS = \
"CMakeFiles/rpc_example1.dir/rpc_example1.cpp.o"

# External object files for target rpc_example1
rpc_example1_EXTERNAL_OBJECTS =

demoapps/rpc/rpc_example1: demoapps/rpc/CMakeFiles/rpc_example1.dir/rpc_example1.cpp.o
demoapps/rpc/rpc_example1: demoapps/rpc/CMakeFiles/rpc_example1.dir/build.make
demoapps/rpc/rpc_example1: src/graphlab/libgraphlab.a
demoapps/rpc/rpc_example1: ../deps/local/lib/libboost_filesystem.a
demoapps/rpc/rpc_example1: ../deps/local/lib/libboost_program_options.a
demoapps/rpc/rpc_example1: ../deps/local/lib/libboost_system.a
demoapps/rpc/rpc_example1: ../deps/local/lib/libboost_iostreams.a
demoapps/rpc/rpc_example1: ../deps/local/lib/libboost_context.a
demoapps/rpc/rpc_example1: ../deps/local/lib/libboost_date_time.a
demoapps/rpc/rpc_example1: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi_cxx.so
demoapps/rpc/rpc_example1: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
demoapps/rpc/rpc_example1: /home/tjmaster/softwares/jdk1.8.0_151/jre/lib/amd64/server/libjvm.so
demoapps/rpc/rpc_example1: ../deps/local/lib/libboost_filesystem.a
demoapps/rpc/rpc_example1: ../deps/local/lib/libboost_program_options.a
demoapps/rpc/rpc_example1: ../deps/local/lib/libboost_system.a
demoapps/rpc/rpc_example1: ../deps/local/lib/libboost_iostreams.a
demoapps/rpc/rpc_example1: ../deps/local/lib/libboost_context.a
demoapps/rpc/rpc_example1: ../deps/local/lib/libboost_date_time.a
demoapps/rpc/rpc_example1: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi_cxx.so
demoapps/rpc/rpc_example1: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
demoapps/rpc/rpc_example1: /home/tjmaster/softwares/jdk1.8.0_151/jre/lib/amd64/server/libjvm.so
demoapps/rpc/rpc_example1: demoapps/rpc/CMakeFiles/rpc_example1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable rpc_example1"
	cd /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/demoapps/rpc && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rpc_example1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
demoapps/rpc/CMakeFiles/rpc_example1.dir/build: demoapps/rpc/rpc_example1

.PHONY : demoapps/rpc/CMakeFiles/rpc_example1.dir/build

demoapps/rpc/CMakeFiles/rpc_example1.dir/requires: demoapps/rpc/CMakeFiles/rpc_example1.dir/rpc_example1.cpp.o.requires

.PHONY : demoapps/rpc/CMakeFiles/rpc_example1.dir/requires

demoapps/rpc/CMakeFiles/rpc_example1.dir/clean:
	cd /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/demoapps/rpc && $(CMAKE_COMMAND) -P CMakeFiles/rpc_example1.dir/cmake_clean.cmake
.PHONY : demoapps/rpc/CMakeFiles/rpc_example1.dir/clean

demoapps/rpc/CMakeFiles/rpc_example1.dir/depend:
	cd /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/demoapps/rpc /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/demoapps/rpc /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/demoapps/rpc/CMakeFiles/rpc_example1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : demoapps/rpc/CMakeFiles/rpc_example1.dir/depend

