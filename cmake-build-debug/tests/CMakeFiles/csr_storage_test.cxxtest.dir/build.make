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
include tests/CMakeFiles/csr_storage_test.cxxtest.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/csr_storage_test.cxxtest.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/csr_storage_test.cxxtest.dir/flags.make

tests/csr_storage_test.cxx.cpp: ../tests/csr_storage_test.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating csr_storage_test.cxx.cpp"
	cd /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/tests && /usr/bin/python /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cxxtest/cxxtestgen --runner=ErrorPrinter -o /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/tests/csr_storage_test.cxx.cpp csr_storage_test.cxx

tests/CMakeFiles/csr_storage_test.cxxtest.dir/csr_storage_test.cxx.cpp.o: tests/CMakeFiles/csr_storage_test.cxxtest.dir/flags.make
tests/CMakeFiles/csr_storage_test.cxxtest.dir/csr_storage_test.cxx.cpp.o: tests/csr_storage_test.cxx.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tests/CMakeFiles/csr_storage_test.cxxtest.dir/csr_storage_test.cxx.cpp.o"
	cd /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -I/home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/tests -o CMakeFiles/csr_storage_test.cxxtest.dir/csr_storage_test.cxx.cpp.o -c /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/tests/csr_storage_test.cxx.cpp

tests/CMakeFiles/csr_storage_test.cxxtest.dir/csr_storage_test.cxx.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/csr_storage_test.cxxtest.dir/csr_storage_test.cxx.cpp.i"
	cd /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -I/home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/tests -E /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/tests/csr_storage_test.cxx.cpp > CMakeFiles/csr_storage_test.cxxtest.dir/csr_storage_test.cxx.cpp.i

tests/CMakeFiles/csr_storage_test.cxxtest.dir/csr_storage_test.cxx.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/csr_storage_test.cxxtest.dir/csr_storage_test.cxx.cpp.s"
	cd /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -I/home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/tests -S /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/tests/csr_storage_test.cxx.cpp -o CMakeFiles/csr_storage_test.cxxtest.dir/csr_storage_test.cxx.cpp.s

tests/CMakeFiles/csr_storage_test.cxxtest.dir/csr_storage_test.cxx.cpp.o.requires:

.PHONY : tests/CMakeFiles/csr_storage_test.cxxtest.dir/csr_storage_test.cxx.cpp.o.requires

tests/CMakeFiles/csr_storage_test.cxxtest.dir/csr_storage_test.cxx.cpp.o.provides: tests/CMakeFiles/csr_storage_test.cxxtest.dir/csr_storage_test.cxx.cpp.o.requires
	$(MAKE) -f tests/CMakeFiles/csr_storage_test.cxxtest.dir/build.make tests/CMakeFiles/csr_storage_test.cxxtest.dir/csr_storage_test.cxx.cpp.o.provides.build
.PHONY : tests/CMakeFiles/csr_storage_test.cxxtest.dir/csr_storage_test.cxx.cpp.o.provides

tests/CMakeFiles/csr_storage_test.cxxtest.dir/csr_storage_test.cxx.cpp.o.provides.build: tests/CMakeFiles/csr_storage_test.cxxtest.dir/csr_storage_test.cxx.cpp.o


# Object files for target csr_storage_test.cxxtest
csr_storage_test_cxxtest_OBJECTS = \
"CMakeFiles/csr_storage_test.cxxtest.dir/csr_storage_test.cxx.cpp.o"

# External object files for target csr_storage_test.cxxtest
csr_storage_test_cxxtest_EXTERNAL_OBJECTS =

tests/csr_storage_test.cxxtest: tests/CMakeFiles/csr_storage_test.cxxtest.dir/csr_storage_test.cxx.cpp.o
tests/csr_storage_test.cxxtest: tests/CMakeFiles/csr_storage_test.cxxtest.dir/build.make
tests/csr_storage_test.cxxtest: src/graphlab/libgraphlab.a
tests/csr_storage_test.cxxtest: ../deps/local/lib/libboost_filesystem.a
tests/csr_storage_test.cxxtest: ../deps/local/lib/libboost_program_options.a
tests/csr_storage_test.cxxtest: ../deps/local/lib/libboost_system.a
tests/csr_storage_test.cxxtest: ../deps/local/lib/libboost_iostreams.a
tests/csr_storage_test.cxxtest: ../deps/local/lib/libboost_context.a
tests/csr_storage_test.cxxtest: ../deps/local/lib/libboost_date_time.a
tests/csr_storage_test.cxxtest: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi_cxx.so
tests/csr_storage_test.cxxtest: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
tests/csr_storage_test.cxxtest: /home/tjmaster/softwares/jdk1.8.0_151/jre/lib/amd64/server/libjvm.so
tests/csr_storage_test.cxxtest: ../deps/local/lib/libboost_filesystem.a
tests/csr_storage_test.cxxtest: ../deps/local/lib/libboost_program_options.a
tests/csr_storage_test.cxxtest: ../deps/local/lib/libboost_system.a
tests/csr_storage_test.cxxtest: ../deps/local/lib/libboost_iostreams.a
tests/csr_storage_test.cxxtest: ../deps/local/lib/libboost_context.a
tests/csr_storage_test.cxxtest: ../deps/local/lib/libboost_date_time.a
tests/csr_storage_test.cxxtest: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi_cxx.so
tests/csr_storage_test.cxxtest: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
tests/csr_storage_test.cxxtest: /home/tjmaster/softwares/jdk1.8.0_151/jre/lib/amd64/server/libjvm.so
tests/csr_storage_test.cxxtest: tests/CMakeFiles/csr_storage_test.cxxtest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable csr_storage_test.cxxtest"
	cd /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/csr_storage_test.cxxtest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/csr_storage_test.cxxtest.dir/build: tests/csr_storage_test.cxxtest

.PHONY : tests/CMakeFiles/csr_storage_test.cxxtest.dir/build

tests/CMakeFiles/csr_storage_test.cxxtest.dir/requires: tests/CMakeFiles/csr_storage_test.cxxtest.dir/csr_storage_test.cxx.cpp.o.requires

.PHONY : tests/CMakeFiles/csr_storage_test.cxxtest.dir/requires

tests/CMakeFiles/csr_storage_test.cxxtest.dir/clean:
	cd /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/tests && $(CMAKE_COMMAND) -P CMakeFiles/csr_storage_test.cxxtest.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/csr_storage_test.cxxtest.dir/clean

tests/CMakeFiles/csr_storage_test.cxxtest.dir/depend: tests/csr_storage_test.cxx.cpp
	cd /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/tests /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/tests /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/tests/CMakeFiles/csr_storage_test.cxxtest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/csr_storage_test.cxxtest.dir/depend

