# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.30

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\CLion 2024.3\bin\cmake\win\x64\bin\cmake.exe"

# The command to remove a file.
RM = "D:\CLion 2024.3\bin\cmake\win\x64\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\Downloads\projeto04\projeto04

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\Downloads\projeto04\projeto04\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/projeto04.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/projeto04.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/projeto04.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/projeto04.dir/flags.make

CMakeFiles/projeto04.dir/main.c.obj: CMakeFiles/projeto04.dir/flags.make
CMakeFiles/projeto04.dir/main.c.obj: D:/Downloads/projeto04/projeto04/main.c
CMakeFiles/projeto04.dir/main.c.obj: CMakeFiles/projeto04.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:\Downloads\projeto04\projeto04\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/projeto04.dir/main.c.obj"
	"D:\CLion 2024.3\bin\mingw\bin\gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/projeto04.dir/main.c.obj -MF CMakeFiles\projeto04.dir\main.c.obj.d -o CMakeFiles\projeto04.dir\main.c.obj -c D:\Downloads\projeto04\projeto04\main.c

CMakeFiles/projeto04.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/projeto04.dir/main.c.i"
	"D:\CLion 2024.3\bin\mingw\bin\gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\Downloads\projeto04\projeto04\main.c > CMakeFiles\projeto04.dir\main.c.i

CMakeFiles/projeto04.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/projeto04.dir/main.c.s"
	"D:\CLion 2024.3\bin\mingw\bin\gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\Downloads\projeto04\projeto04\main.c -o CMakeFiles\projeto04.dir\main.c.s

CMakeFiles/projeto04.dir/cliente.c.obj: CMakeFiles/projeto04.dir/flags.make
CMakeFiles/projeto04.dir/cliente.c.obj: D:/Downloads/projeto04/projeto04/cliente.c
CMakeFiles/projeto04.dir/cliente.c.obj: CMakeFiles/projeto04.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:\Downloads\projeto04\projeto04\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/projeto04.dir/cliente.c.obj"
	"D:\CLion 2024.3\bin\mingw\bin\gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/projeto04.dir/cliente.c.obj -MF CMakeFiles\projeto04.dir\cliente.c.obj.d -o CMakeFiles\projeto04.dir\cliente.c.obj -c D:\Downloads\projeto04\projeto04\cliente.c

CMakeFiles/projeto04.dir/cliente.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/projeto04.dir/cliente.c.i"
	"D:\CLion 2024.3\bin\mingw\bin\gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\Downloads\projeto04\projeto04\cliente.c > CMakeFiles\projeto04.dir\cliente.c.i

CMakeFiles/projeto04.dir/cliente.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/projeto04.dir/cliente.c.s"
	"D:\CLion 2024.3\bin\mingw\bin\gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\Downloads\projeto04\projeto04\cliente.c -o CMakeFiles\projeto04.dir\cliente.c.s

CMakeFiles/projeto04.dir/livro.c.obj: CMakeFiles/projeto04.dir/flags.make
CMakeFiles/projeto04.dir/livro.c.obj: D:/Downloads/projeto04/projeto04/livro.c
CMakeFiles/projeto04.dir/livro.c.obj: CMakeFiles/projeto04.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:\Downloads\projeto04\projeto04\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/projeto04.dir/livro.c.obj"
	"D:\CLion 2024.3\bin\mingw\bin\gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/projeto04.dir/livro.c.obj -MF CMakeFiles\projeto04.dir\livro.c.obj.d -o CMakeFiles\projeto04.dir\livro.c.obj -c D:\Downloads\projeto04\projeto04\livro.c

CMakeFiles/projeto04.dir/livro.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/projeto04.dir/livro.c.i"
	"D:\CLion 2024.3\bin\mingw\bin\gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\Downloads\projeto04\projeto04\livro.c > CMakeFiles\projeto04.dir\livro.c.i

CMakeFiles/projeto04.dir/livro.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/projeto04.dir/livro.c.s"
	"D:\CLion 2024.3\bin\mingw\bin\gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\Downloads\projeto04\projeto04\livro.c -o CMakeFiles\projeto04.dir\livro.c.s

CMakeFiles/projeto04.dir/validacao.c.obj: CMakeFiles/projeto04.dir/flags.make
CMakeFiles/projeto04.dir/validacao.c.obj: D:/Downloads/projeto04/projeto04/validacao.c
CMakeFiles/projeto04.dir/validacao.c.obj: CMakeFiles/projeto04.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:\Downloads\projeto04\projeto04\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/projeto04.dir/validacao.c.obj"
	"D:\CLion 2024.3\bin\mingw\bin\gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/projeto04.dir/validacao.c.obj -MF CMakeFiles\projeto04.dir\validacao.c.obj.d -o CMakeFiles\projeto04.dir\validacao.c.obj -c D:\Downloads\projeto04\projeto04\validacao.c

CMakeFiles/projeto04.dir/validacao.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/projeto04.dir/validacao.c.i"
	"D:\CLion 2024.3\bin\mingw\bin\gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\Downloads\projeto04\projeto04\validacao.c > CMakeFiles\projeto04.dir\validacao.c.i

CMakeFiles/projeto04.dir/validacao.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/projeto04.dir/validacao.c.s"
	"D:\CLion 2024.3\bin\mingw\bin\gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\Downloads\projeto04\projeto04\validacao.c -o CMakeFiles\projeto04.dir\validacao.c.s

# Object files for target projeto04
projeto04_OBJECTS = \
"CMakeFiles/projeto04.dir/main.c.obj" \
"CMakeFiles/projeto04.dir/cliente.c.obj" \
"CMakeFiles/projeto04.dir/livro.c.obj" \
"CMakeFiles/projeto04.dir/validacao.c.obj"

# External object files for target projeto04
projeto04_EXTERNAL_OBJECTS =

projeto04.exe: CMakeFiles/projeto04.dir/main.c.obj
projeto04.exe: CMakeFiles/projeto04.dir/cliente.c.obj
projeto04.exe: CMakeFiles/projeto04.dir/livro.c.obj
projeto04.exe: CMakeFiles/projeto04.dir/validacao.c.obj
projeto04.exe: CMakeFiles/projeto04.dir/build.make
projeto04.exe: CMakeFiles/projeto04.dir/linkLibs.rsp
projeto04.exe: CMakeFiles/projeto04.dir/objects1.rsp
projeto04.exe: CMakeFiles/projeto04.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=D:\Downloads\projeto04\projeto04\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C executable projeto04.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\projeto04.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/projeto04.dir/build: projeto04.exe
.PHONY : CMakeFiles/projeto04.dir/build

CMakeFiles/projeto04.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\projeto04.dir\cmake_clean.cmake
.PHONY : CMakeFiles/projeto04.dir/clean

CMakeFiles/projeto04.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\Downloads\projeto04\projeto04 D:\Downloads\projeto04\projeto04 D:\Downloads\projeto04\projeto04\cmake-build-debug D:\Downloads\projeto04\projeto04\cmake-build-debug D:\Downloads\projeto04\projeto04\cmake-build-debug\CMakeFiles\projeto04.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/projeto04.dir/depend

