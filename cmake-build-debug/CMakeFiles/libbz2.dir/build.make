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

# Utility rule file for libbz2.

# Include the progress variables for this target.
include CMakeFiles/libbz2.dir/progress.make

CMakeFiles/libbz2: CMakeFiles/libbz2-complete


CMakeFiles/libbz2-complete: ../deps/libbz2/src/libbz2-stamp/libbz2-install
CMakeFiles/libbz2-complete: ../deps/libbz2/src/libbz2-stamp/libbz2-mkdir
CMakeFiles/libbz2-complete: ../deps/libbz2/src/libbz2-stamp/libbz2-download
CMakeFiles/libbz2-complete: ../deps/libbz2/src/libbz2-stamp/libbz2-update
CMakeFiles/libbz2-complete: ../deps/libbz2/src/libbz2-stamp/libbz2-patch
CMakeFiles/libbz2-complete: ../deps/libbz2/src/libbz2-stamp/libbz2-configure
CMakeFiles/libbz2-complete: ../deps/libbz2/src/libbz2-stamp/libbz2-build
CMakeFiles/libbz2-complete: ../deps/libbz2/src/libbz2-stamp/libbz2-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'libbz2'"
	/home/tjmaster/ProgramIDE/clion-2017.2.3/bin/cmake/bin/cmake -E make_directory /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/CMakeFiles
	/home/tjmaster/ProgramIDE/clion-2017.2.3/bin/cmake/bin/cmake -E touch /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/CMakeFiles/libbz2-complete
	/home/tjmaster/ProgramIDE/clion-2017.2.3/bin/cmake/bin/cmake -E touch /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/deps/libbz2/src/libbz2-stamp/libbz2-done

../deps/libbz2/src/libbz2-stamp/libbz2-install: ../deps/libbz2/src/libbz2-stamp/libbz2-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "No install step for 'libbz2'"
	cd /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/deps/libbz2/src/libbz2 && /home/tjmaster/ProgramIDE/clion-2017.2.3/bin/cmake/bin/cmake -E echo_append
	cd /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/deps/libbz2/src/libbz2 && /home/tjmaster/ProgramIDE/clion-2017.2.3/bin/cmake/bin/cmake -E touch /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/deps/libbz2/src/libbz2-stamp/libbz2-install

../deps/libbz2/src/libbz2-stamp/libbz2-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Creating directories for 'libbz2'"
	/home/tjmaster/ProgramIDE/clion-2017.2.3/bin/cmake/bin/cmake -E make_directory /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/deps/libbz2/src/libbz2
	/home/tjmaster/ProgramIDE/clion-2017.2.3/bin/cmake/bin/cmake -E make_directory /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/deps/libbz2/src/libbz2
	/home/tjmaster/ProgramIDE/clion-2017.2.3/bin/cmake/bin/cmake -E make_directory /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/deps/local
	/home/tjmaster/ProgramIDE/clion-2017.2.3/bin/cmake/bin/cmake -E make_directory /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/deps/libbz2/tmp
	/home/tjmaster/ProgramIDE/clion-2017.2.3/bin/cmake/bin/cmake -E make_directory /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/deps/libbz2/src/libbz2-stamp
	/home/tjmaster/ProgramIDE/clion-2017.2.3/bin/cmake/bin/cmake -E make_directory /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/deps/libbz2/src
	/home/tjmaster/ProgramIDE/clion-2017.2.3/bin/cmake/bin/cmake -E touch /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/deps/libbz2/src/libbz2-stamp/libbz2-mkdir

../deps/libbz2/src/libbz2-stamp/libbz2-download: ../deps/libbz2/src/libbz2-stamp/libbz2-urlinfo.txt
../deps/libbz2/src/libbz2-stamp/libbz2-download: ../deps/libbz2/src/libbz2-stamp/libbz2-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (download, verify and extract) for 'libbz2'"
	cd /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/deps/libbz2/src && /home/tjmaster/ProgramIDE/clion-2017.2.3/bin/cmake/bin/cmake -P /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/deps/libbz2/src/libbz2-stamp/download-libbz2.cmake
	cd /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/deps/libbz2/src && /home/tjmaster/ProgramIDE/clion-2017.2.3/bin/cmake/bin/cmake -P /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/deps/libbz2/src/libbz2-stamp/verify-libbz2.cmake
	cd /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/deps/libbz2/src && /home/tjmaster/ProgramIDE/clion-2017.2.3/bin/cmake/bin/cmake -P /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/deps/libbz2/src/libbz2-stamp/extract-libbz2.cmake
	cd /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/deps/libbz2/src && /home/tjmaster/ProgramIDE/clion-2017.2.3/bin/cmake/bin/cmake -E touch /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/deps/libbz2/src/libbz2-stamp/libbz2-download

../deps/libbz2/src/libbz2-stamp/libbz2-update: ../deps/libbz2/src/libbz2-stamp/libbz2-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No update step for 'libbz2'"
	/home/tjmaster/ProgramIDE/clion-2017.2.3/bin/cmake/bin/cmake -E echo_append
	/home/tjmaster/ProgramIDE/clion-2017.2.3/bin/cmake/bin/cmake -E touch /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/deps/libbz2/src/libbz2-stamp/libbz2-update

../deps/libbz2/src/libbz2-stamp/libbz2-patch: ../deps/libbz2/src/libbz2-stamp/libbz2-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Performing patch step for 'libbz2'"
	cd /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/deps/libbz2/src/libbz2 && patch -N -p0 -i /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/patches/libbz2_fpic.patch || true
	cd /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/deps/libbz2/src/libbz2 && /home/tjmaster/ProgramIDE/clion-2017.2.3/bin/cmake/bin/cmake -E touch /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/deps/libbz2/src/libbz2-stamp/libbz2-patch

../deps/libbz2/src/libbz2-stamp/libbz2-configure: ../deps/libbz2/tmp/libbz2-cfgcmd.txt
../deps/libbz2/src/libbz2-stamp/libbz2-configure: ../deps/libbz2/src/libbz2-stamp/libbz2-update
../deps/libbz2/src/libbz2-stamp/libbz2-configure: ../deps/libbz2/src/libbz2-stamp/libbz2-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "No configure step for 'libbz2'"
	cd /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/deps/libbz2/src/libbz2 && /home/tjmaster/ProgramIDE/clion-2017.2.3/bin/cmake/bin/cmake -E echo_append
	cd /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/deps/libbz2/src/libbz2 && /home/tjmaster/ProgramIDE/clion-2017.2.3/bin/cmake/bin/cmake -E touch /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/deps/libbz2/src/libbz2-stamp/libbz2-configure

../deps/libbz2/src/libbz2-stamp/libbz2-build: ../deps/libbz2/src/libbz2-stamp/libbz2-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Performing build step for 'libbz2'"
	cd /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/deps/libbz2/src/libbz2 && make install PREFIX=/home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/deps/local
	cd /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/deps/libbz2/src/libbz2 && /home/tjmaster/ProgramIDE/clion-2017.2.3/bin/cmake/bin/cmake -E touch /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/deps/libbz2/src/libbz2-stamp/libbz2-build

libbz2: CMakeFiles/libbz2
libbz2: CMakeFiles/libbz2-complete
libbz2: ../deps/libbz2/src/libbz2-stamp/libbz2-install
libbz2: ../deps/libbz2/src/libbz2-stamp/libbz2-mkdir
libbz2: ../deps/libbz2/src/libbz2-stamp/libbz2-download
libbz2: ../deps/libbz2/src/libbz2-stamp/libbz2-update
libbz2: ../deps/libbz2/src/libbz2-stamp/libbz2-patch
libbz2: ../deps/libbz2/src/libbz2-stamp/libbz2-configure
libbz2: ../deps/libbz2/src/libbz2-stamp/libbz2-build
libbz2: CMakeFiles/libbz2.dir/build.make

.PHONY : libbz2

# Rule to build all files generated by this target.
CMakeFiles/libbz2.dir/build: libbz2

.PHONY : CMakeFiles/libbz2.dir/build

CMakeFiles/libbz2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/libbz2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/libbz2.dir/clean

CMakeFiles/libbz2.dir/depend:
	cd /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug /home/tjmaster/ProgramProjects/CLionProjects/PowerGraph/cmake-build-debug/CMakeFiles/libbz2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/libbz2.dir/depend

