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
include demoapps/pagerank/CMakeFiles/simple_pagerank.dir/depend.make

# Include the progress variables for this target.
include demoapps/pagerank/CMakeFiles/simple_pagerank.dir/progress.make

# Include the compile flags for this target's objects.
include demoapps/pagerank/CMakeFiles/simple_pagerank.dir/flags.make

demoapps/pagerank/CMakeFiles/simple_pagerank.dir/simple_pagerank.cpp.o: demoapps/pagerank/CMakeFiles/simple_pagerank.dir/flags.make
demoapps/pagerank/CMakeFiles/simple_pagerank.dir/simple_pagerank.cpp.o: ../demoapps/pagerank/simple_pagerank.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object demoapps/pagerank/CMakeFiles/simple_pagerank.dir/simple_pagerank.cpp.o"
	cd /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/demoapps/pagerank && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/simple_pagerank.dir/simple_pagerank.cpp.o -c /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/demoapps/pagerank/simple_pagerank.cpp

demoapps/pagerank/CMakeFiles/simple_pagerank.dir/simple_pagerank.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simple_pagerank.dir/simple_pagerank.cpp.i"
	cd /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/demoapps/pagerank && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/demoapps/pagerank/simple_pagerank.cpp > CMakeFiles/simple_pagerank.dir/simple_pagerank.cpp.i

demoapps/pagerank/CMakeFiles/simple_pagerank.dir/simple_pagerank.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simple_pagerank.dir/simple_pagerank.cpp.s"
	cd /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/demoapps/pagerank && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/demoapps/pagerank/simple_pagerank.cpp -o CMakeFiles/simple_pagerank.dir/simple_pagerank.cpp.s

demoapps/pagerank/CMakeFiles/simple_pagerank.dir/simple_pagerank.cpp.o.requires:

.PHONY : demoapps/pagerank/CMakeFiles/simple_pagerank.dir/simple_pagerank.cpp.o.requires

demoapps/pagerank/CMakeFiles/simple_pagerank.dir/simple_pagerank.cpp.o.provides: demoapps/pagerank/CMakeFiles/simple_pagerank.dir/simple_pagerank.cpp.o.requires
	$(MAKE) -f demoapps/pagerank/CMakeFiles/simple_pagerank.dir/build.make demoapps/pagerank/CMakeFiles/simple_pagerank.dir/simple_pagerank.cpp.o.provides.build
.PHONY : demoapps/pagerank/CMakeFiles/simple_pagerank.dir/simple_pagerank.cpp.o.provides

demoapps/pagerank/CMakeFiles/simple_pagerank.dir/simple_pagerank.cpp.o.provides.build: demoapps/pagerank/CMakeFiles/simple_pagerank.dir/simple_pagerank.cpp.o


# Object files for target simple_pagerank
simple_pagerank_OBJECTS = \
"CMakeFiles/simple_pagerank.dir/simple_pagerank.cpp.o"

# External object files for target simple_pagerank
simple_pagerank_EXTERNAL_OBJECTS =

demoapps/pagerank/simple_pagerank: demoapps/pagerank/CMakeFiles/simple_pagerank.dir/simple_pagerank.cpp.o
demoapps/pagerank/simple_pagerank: demoapps/pagerank/CMakeFiles/simple_pagerank.dir/build.make
demoapps/pagerank/simple_pagerank: src/graphlab/libgraphlab.a
demoapps/pagerank/simple_pagerank: ../deps/local/lib/libboost_filesystem.a
demoapps/pagerank/simple_pagerank: ../deps/local/lib/libboost_program_options.a
demoapps/pagerank/simple_pagerank: ../deps/local/lib/libboost_system.a
demoapps/pagerank/simple_pagerank: ../deps/local/lib/libboost_iostreams.a
demoapps/pagerank/simple_pagerank: ../deps/local/lib/libboost_context.a
demoapps/pagerank/simple_pagerank: ../deps/local/lib/libboost_date_time.a
demoapps/pagerank/simple_pagerank: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi_cxx.so
demoapps/pagerank/simple_pagerank: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
demoapps/pagerank/simple_pagerank: /home/tjmaster/softwares/jdk1.8.0_151/jre/lib/amd64/server/libjvm.so
demoapps/pagerank/simple_pagerank: ../deps/local/lib/libboost_filesystem.a
demoapps/pagerank/simple_pagerank: ../deps/local/lib/libboost_program_options.a
demoapps/pagerank/simple_pagerank: ../deps/local/lib/libboost_system.a
demoapps/pagerank/simple_pagerank: ../deps/local/lib/libboost_iostreams.a
demoapps/pagerank/simple_pagerank: ../deps/local/lib/libboost_context.a
demoapps/pagerank/simple_pagerank: ../deps/local/lib/libboost_date_time.a
demoapps/pagerank/simple_pagerank: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi_cxx.so
demoapps/pagerank/simple_pagerank: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
demoapps/pagerank/simple_pagerank: /home/tjmaster/softwares/jdk1.8.0_151/jre/lib/amd64/server/libjvm.so
demoapps/pagerank/simple_pagerank: demoapps/pagerank/CMakeFiles/simple_pagerank.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable simple_pagerank"
	cd /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/demoapps/pagerank && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/simple_pagerank.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
demoapps/pagerank/CMakeFiles/simple_pagerank.dir/build: demoapps/pagerank/simple_pagerank

.PHONY : demoapps/pagerank/CMakeFiles/simple_pagerank.dir/build

demoapps/pagerank/CMakeFiles/simple_pagerank.dir/requires: demoapps/pagerank/CMakeFiles/simple_pagerank.dir/simple_pagerank.cpp.o.requires

.PHONY : demoapps/pagerank/CMakeFiles/simple_pagerank.dir/requires

demoapps/pagerank/CMakeFiles/simple_pagerank.dir/clean:
	cd /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/demoapps/pagerank && $(CMAKE_COMMAND) -P CMakeFiles/simple_pagerank.dir/cmake_clean.cmake
.PHONY : demoapps/pagerank/CMakeFiles/simple_pagerank.dir/clean

demoapps/pagerank/CMakeFiles/simple_pagerank.dir/depend:
	cd /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/demoapps/pagerank /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/demoapps/pagerank /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/demoapps/pagerank/CMakeFiles/simple_pagerank.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : demoapps/pagerank/CMakeFiles/simple_pagerank.dir/depend

