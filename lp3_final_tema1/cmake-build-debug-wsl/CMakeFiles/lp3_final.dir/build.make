# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /mnt/c/Users/ericr/CLionProjects/lp3_final_tema1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/ericr/CLionProjects/lp3_final_tema1/cmake-build-debug-wsl

# Include any dependencies generated for this target.
include CMakeFiles/lp3_final.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/lp3_final.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/lp3_final.dir/flags.make

CMakeFiles/lp3_final.dir/main.c.o: CMakeFiles/lp3_final.dir/flags.make
CMakeFiles/lp3_final.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/ericr/CLionProjects/lp3_final_tema1/cmake-build-debug-wsl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/lp3_final.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lp3_final.dir/main.c.o   -c /mnt/c/Users/ericr/CLionProjects/lp3_final_tema1/main.c

CMakeFiles/lp3_final.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lp3_final.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/ericr/CLionProjects/lp3_final_tema1/main.c > CMakeFiles/lp3_final.dir/main.c.i

CMakeFiles/lp3_final.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lp3_final.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/ericr/CLionProjects/lp3_final_tema1/main.c -o CMakeFiles/lp3_final.dir/main.c.s

# Object files for target lp3_final
lp3_final_OBJECTS = \
"CMakeFiles/lp3_final.dir/main.c.o"

# External object files for target lp3_final
lp3_final_EXTERNAL_OBJECTS =

lp3_final: CMakeFiles/lp3_final.dir/main.c.o
lp3_final: CMakeFiles/lp3_final.dir/build.make
lp3_final: CMakeFiles/lp3_final.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/ericr/CLionProjects/lp3_final_tema1/cmake-build-debug-wsl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable lp3_final"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lp3_final.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/lp3_final.dir/build: lp3_final

.PHONY : CMakeFiles/lp3_final.dir/build

CMakeFiles/lp3_final.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/lp3_final.dir/cmake_clean.cmake
.PHONY : CMakeFiles/lp3_final.dir/clean

CMakeFiles/lp3_final.dir/depend:
	cd /mnt/c/Users/ericr/CLionProjects/lp3_final_tema1/cmake-build-debug-wsl && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/ericr/CLionProjects/lp3_final_tema1 /mnt/c/Users/ericr/CLionProjects/lp3_final_tema1 /mnt/c/Users/ericr/CLionProjects/lp3_final_tema1/cmake-build-debug-wsl /mnt/c/Users/ericr/CLionProjects/lp3_final_tema1/cmake-build-debug-wsl /mnt/c/Users/ericr/CLionProjects/lp3_final_tema1/cmake-build-debug-wsl/CMakeFiles/lp3_final.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/lp3_final.dir/depend
