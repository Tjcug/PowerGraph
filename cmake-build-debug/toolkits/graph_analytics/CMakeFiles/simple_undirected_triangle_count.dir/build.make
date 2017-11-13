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
include toolkits/graph_analytics/CMakeFiles/simple_undirected_triangle_count.dir/depend.make

# Include the progress variables for this target.
include toolkits/graph_analytics/CMakeFiles/simple_undirected_triangle_count.dir/progress.make

# Include the compile flags for this target's objects.
include toolkits/graph_analytics/CMakeFiles/simple_undirected_triangle_count.dir/flags.make

toolkits/graph_analytics/CMakeFiles/simple_undirected_triangle_count.dir/simple_undirected_triangle_count.cpp.o: toolkits/graph_analytics/CMakeFiles/simple_undirected_triangle_count.dir/flags.make
toolkits/graph_analytics/CMakeFiles/simple_undirected_triangle_count.dir/simple_undirected_triangle_count.cpp.o: ../toolkits/graph_analytics/simple_undirected_triangle_count.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object toolkits/graph_analytics/CMakeFiles/simple_undirected_triangle_count.dir/simple_undirected_triangle_count.cpp.o"
	cd /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/toolkits/graph_analytics && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/simple_undirected_triangle_count.dir/simple_undirected_triangle_count.cpp.o -c /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/toolkits/graph_analytics/simple_undirected_triangle_count.cpp

toolkits/graph_analytics/CMakeFiles/simple_undirected_triangle_count.dir/simple_undirected_triangle_count.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simple_undirected_triangle_count.dir/simple_undirected_triangle_count.cpp.i"
	cd /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/toolkits/graph_analytics && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/toolkits/graph_analytics/simple_undirected_triangle_count.cpp > CMakeFiles/simple_undirected_triangle_count.dir/simple_undirected_triangle_count.cpp.i

toolkits/graph_analytics/CMakeFiles/simple_undirected_triangle_count.dir/simple_undirected_triangle_count.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simple_undirected_triangle_count.dir/simple_undirected_triangle_count.cpp.s"
	cd /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/toolkits/graph_analytics && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/toolkits/graph_analytics/simple_undirected_triangle_count.cpp -o CMakeFiles/simple_undirected_triangle_count.dir/simple_undirected_triangle_count.cpp.s

toolkits/graph_analytics/CMakeFiles/simple_undirected_triangle_count.dir/simple_undirected_triangle_count.cpp.o.requires:

.PHONY : toolkits/graph_analytics/CMakeFiles/simple_undirected_triangle_count.dir/simple_undirected_triangle_count.cpp.o.requires

toolkits/graph_analytics/CMakeFiles/simple_undirected_triangle_count.dir/simple_undirected_triangle_count.cpp.o.provides: toolkits/graph_analytics/CMakeFiles/simple_undirected_triangle_count.dir/simple_undirected_triangle_count.cpp.o.requires
	$(MAKE) -f toolkits/graph_analytics/CMakeFiles/simple_undirected_triangle_count.dir/build.make toolkits/graph_analytics/CMakeFiles/simple_undirected_triangle_count.dir/simple_undirected_triangle_count.cpp.o.provides.build
.PHONY : toolkits/graph_analytics/CMakeFiles/simple_undirected_triangle_count.dir/simple_undirected_triangle_count.cpp.o.provides

toolkits/graph_analytics/CMakeFiles/simple_undirected_triangle_count.dir/simple_undirected_triangle_count.cpp.o.provides.build: toolkits/graph_analytics/CMakeFiles/simple_undirected_triangle_count.dir/simple_undirected_triangle_count.cpp.o


# Object files for target simple_undirected_triangle_count
simple_undirected_triangle_count_OBJECTS = \
"CMakeFiles/simple_undirected_triangle_count.dir/simple_undirected_triangle_count.cpp.o"

# External object files for target simple_undirected_triangle_count
simple_undirected_triangle_count_EXTERNAL_OBJECTS =

toolkits/graph_analytics/simple_undirected_triangle_count: toolkits/graph_analytics/CMakeFiles/simple_undirected_triangle_count.dir/simple_undirected_triangle_count.cpp.o
toolkits/graph_analytics/simple_undirected_triangle_count: toolkits/graph_analytics/CMakeFiles/simple_undirected_triangle_count.dir/build.make
toolkits/graph_analytics/simple_undirected_triangle_count: src/graphlab/libgraphlab.a
toolkits/graph_analytics/simple_undirected_triangle_count: ../deps/local/lib/libboost_filesystem.a
toolkits/graph_analytics/simple_undirected_triangle_count: ../deps/local/lib/libboost_program_options.a
toolkits/graph_analytics/simple_undirected_triangle_count: ../deps/local/lib/libboost_system.a
toolkits/graph_analytics/simple_undirected_triangle_count: ../deps/local/lib/libboost_iostreams.a
toolkits/graph_analytics/simple_undirected_triangle_count: ../deps/local/lib/libboost_context.a
toolkits/graph_analytics/simple_undirected_triangle_count: ../deps/local/lib/libboost_date_time.a
toolkits/graph_analytics/simple_undirected_triangle_count: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi_cxx.so
toolkits/graph_analytics/simple_undirected_triangle_count: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
toolkits/graph_analytics/simple_undirected_triangle_count: /home/tjmaster/softwares/jdk1.8.0_151/jre/lib/amd64/server/libjvm.so
toolkits/graph_analytics/simple_undirected_triangle_count: ../deps/local/lib/libboost_filesystem.a
toolkits/graph_analytics/simple_undirected_triangle_count: ../deps/local/lib/libboost_program_options.a
toolkits/graph_analytics/simple_undirected_triangle_count: ../deps/local/lib/libboost_system.a
toolkits/graph_analytics/simple_undirected_triangle_count: ../deps/local/lib/libboost_iostreams.a
toolkits/graph_analytics/simple_undirected_triangle_count: ../deps/local/lib/libboost_context.a
toolkits/graph_analytics/simple_undirected_triangle_count: ../deps/local/lib/libboost_date_time.a
toolkits/graph_analytics/simple_undirected_triangle_count: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi_cxx.so
toolkits/graph_analytics/simple_undirected_triangle_count: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
toolkits/graph_analytics/simple_undirected_triangle_count: /home/tjmaster/softwares/jdk1.8.0_151/jre/lib/amd64/server/libjvm.so
toolkits/graph_analytics/simple_undirected_triangle_count: toolkits/graph_analytics/CMakeFiles/simple_undirected_triangle_count.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable simple_undirected_triangle_count"
	cd /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/toolkits/graph_analytics && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/simple_undirected_triangle_count.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
toolkits/graph_analytics/CMakeFiles/simple_undirected_triangle_count.dir/build: toolkits/graph_analytics/simple_undirected_triangle_count

.PHONY : toolkits/graph_analytics/CMakeFiles/simple_undirected_triangle_count.dir/build

toolkits/graph_analytics/CMakeFiles/simple_undirected_triangle_count.dir/requires: toolkits/graph_analytics/CMakeFiles/simple_undirected_triangle_count.dir/simple_undirected_triangle_count.cpp.o.requires

.PHONY : toolkits/graph_analytics/CMakeFiles/simple_undirected_triangle_count.dir/requires

toolkits/graph_analytics/CMakeFiles/simple_undirected_triangle_count.dir/clean:
	cd /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/toolkits/graph_analytics && $(CMAKE_COMMAND) -P CMakeFiles/simple_undirected_triangle_count.dir/cmake_clean.cmake
.PHONY : toolkits/graph_analytics/CMakeFiles/simple_undirected_triangle_count.dir/clean

toolkits/graph_analytics/CMakeFiles/simple_undirected_triangle_count.dir/depend:
	cd /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/toolkits/graph_analytics /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/toolkits/graph_analytics /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/toolkits/graph_analytics/CMakeFiles/simple_undirected_triangle_count.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : toolkits/graph_analytics/CMakeFiles/simple_undirected_triangle_count.dir/depend

