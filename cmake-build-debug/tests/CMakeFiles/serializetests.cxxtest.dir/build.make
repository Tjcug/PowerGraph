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
include tests/CMakeFiles/serializetests.cxxtest.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/serializetests.cxxtest.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/serializetests.cxxtest.dir/flags.make

tests/serializetests.cxx.cpp: ../tests/serializetests.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating serializetests.cxx.cpp"
	cd /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/tests && /usr/bin/python /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cxxtest/cxxtestgen --runner=ErrorPrinter -o /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/tests/serializetests.cxx.cpp serializetests.cxx

tests/CMakeFiles/serializetests.cxxtest.dir/serializetests.cxx.cpp.o: tests/CMakeFiles/serializetests.cxxtest.dir/flags.make
tests/CMakeFiles/serializetests.cxxtest.dir/serializetests.cxx.cpp.o: tests/serializetests.cxx.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tests/CMakeFiles/serializetests.cxxtest.dir/serializetests.cxx.cpp.o"
	cd /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -I/home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/tests -o CMakeFiles/serializetests.cxxtest.dir/serializetests.cxx.cpp.o -c /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/tests/serializetests.cxx.cpp

tests/CMakeFiles/serializetests.cxxtest.dir/serializetests.cxx.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/serializetests.cxxtest.dir/serializetests.cxx.cpp.i"
	cd /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -I/home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/tests -E /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/tests/serializetests.cxx.cpp > CMakeFiles/serializetests.cxxtest.dir/serializetests.cxx.cpp.i

tests/CMakeFiles/serializetests.cxxtest.dir/serializetests.cxx.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/serializetests.cxxtest.dir/serializetests.cxx.cpp.s"
	cd /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -I/home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/tests -S /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/tests/serializetests.cxx.cpp -o CMakeFiles/serializetests.cxxtest.dir/serializetests.cxx.cpp.s

tests/CMakeFiles/serializetests.cxxtest.dir/serializetests.cxx.cpp.o.requires:

.PHONY : tests/CMakeFiles/serializetests.cxxtest.dir/serializetests.cxx.cpp.o.requires

tests/CMakeFiles/serializetests.cxxtest.dir/serializetests.cxx.cpp.o.provides: tests/CMakeFiles/serializetests.cxxtest.dir/serializetests.cxx.cpp.o.requires
	$(MAKE) -f tests/CMakeFiles/serializetests.cxxtest.dir/build.make tests/CMakeFiles/serializetests.cxxtest.dir/serializetests.cxx.cpp.o.provides.build
.PHONY : tests/CMakeFiles/serializetests.cxxtest.dir/serializetests.cxx.cpp.o.provides

tests/CMakeFiles/serializetests.cxxtest.dir/serializetests.cxx.cpp.o.provides.build: tests/CMakeFiles/serializetests.cxxtest.dir/serializetests.cxx.cpp.o


# Object files for target serializetests.cxxtest
serializetests_cxxtest_OBJECTS = \
"CMakeFiles/serializetests.cxxtest.dir/serializetests.cxx.cpp.o"

# External object files for target serializetests.cxxtest
serializetests_cxxtest_EXTERNAL_OBJECTS =

tests/serializetests.cxxtest: tests/CMakeFiles/serializetests.cxxtest.dir/serializetests.cxx.cpp.o
tests/serializetests.cxxtest: tests/CMakeFiles/serializetests.cxxtest.dir/build.make
tests/serializetests.cxxtest: src/graphlab/libgraphlab.a
tests/serializetests.cxxtest: ../deps/local/lib/libboost_filesystem.a
tests/serializetests.cxxtest: ../deps/local/lib/libboost_program_options.a
tests/serializetests.cxxtest: ../deps/local/lib/libboost_system.a
tests/serializetests.cxxtest: ../deps/local/lib/libboost_iostreams.a
tests/serializetests.cxxtest: ../deps/local/lib/libboost_context.a
tests/serializetests.cxxtest: ../deps/local/lib/libboost_date_time.a
tests/serializetests.cxxtest: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi_cxx.so
tests/serializetests.cxxtest: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
tests/serializetests.cxxtest: /home/tjmaster/softwares/jdk1.8.0_151/jre/lib/amd64/server/libjvm.so
tests/serializetests.cxxtest: ../deps/local/lib/libboost_filesystem.a
tests/serializetests.cxxtest: ../deps/local/lib/libboost_program_options.a
tests/serializetests.cxxtest: ../deps/local/lib/libboost_system.a
tests/serializetests.cxxtest: ../deps/local/lib/libboost_iostreams.a
tests/serializetests.cxxtest: ../deps/local/lib/libboost_context.a
tests/serializetests.cxxtest: ../deps/local/lib/libboost_date_time.a
tests/serializetests.cxxtest: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi_cxx.so
tests/serializetests.cxxtest: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
tests/serializetests.cxxtest: /home/tjmaster/softwares/jdk1.8.0_151/jre/lib/amd64/server/libjvm.so
tests/serializetests.cxxtest: tests/CMakeFiles/serializetests.cxxtest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable serializetests.cxxtest"
	cd /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/serializetests.cxxtest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/serializetests.cxxtest.dir/build: tests/serializetests.cxxtest

.PHONY : tests/CMakeFiles/serializetests.cxxtest.dir/build

tests/CMakeFiles/serializetests.cxxtest.dir/requires: tests/CMakeFiles/serializetests.cxxtest.dir/serializetests.cxx.cpp.o.requires

.PHONY : tests/CMakeFiles/serializetests.cxxtest.dir/requires

tests/CMakeFiles/serializetests.cxxtest.dir/clean:
	cd /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/tests && $(CMAKE_COMMAND) -P CMakeFiles/serializetests.cxxtest.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/serializetests.cxxtest.dir/clean

tests/CMakeFiles/serializetests.cxxtest.dir/depend: tests/serializetests.cxx.cpp
	cd /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/tests /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/tests /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/tests/CMakeFiles/serializetests.cxxtest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/serializetests.cxxtest.dir/depend

