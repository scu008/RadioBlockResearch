# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/lws/RadioBlockResearch/gr-customModule

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lws/RadioBlockResearch/gr-customModule/build

# Include any dependencies generated for this target.
include lib/CMakeFiles/gnuradio-customModule.dir/depend.make

# Include the progress variables for this target.
include lib/CMakeFiles/gnuradio-customModule.dir/progress.make

# Include the compile flags for this target's objects.
include lib/CMakeFiles/gnuradio-customModule.dir/flags.make

lib/CMakeFiles/gnuradio-customModule.dir/buffer_impl.cc.o: lib/CMakeFiles/gnuradio-customModule.dir/flags.make
lib/CMakeFiles/gnuradio-customModule.dir/buffer_impl.cc.o: ../lib/buffer_impl.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lws/RadioBlockResearch/gr-customModule/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/CMakeFiles/gnuradio-customModule.dir/buffer_impl.cc.o"
	cd /home/lws/RadioBlockResearch/gr-customModule/build/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gnuradio-customModule.dir/buffer_impl.cc.o -c /home/lws/RadioBlockResearch/gr-customModule/lib/buffer_impl.cc

lib/CMakeFiles/gnuradio-customModule.dir/buffer_impl.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gnuradio-customModule.dir/buffer_impl.cc.i"
	cd /home/lws/RadioBlockResearch/gr-customModule/build/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lws/RadioBlockResearch/gr-customModule/lib/buffer_impl.cc > CMakeFiles/gnuradio-customModule.dir/buffer_impl.cc.i

lib/CMakeFiles/gnuradio-customModule.dir/buffer_impl.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gnuradio-customModule.dir/buffer_impl.cc.s"
	cd /home/lws/RadioBlockResearch/gr-customModule/build/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lws/RadioBlockResearch/gr-customModule/lib/buffer_impl.cc -o CMakeFiles/gnuradio-customModule.dir/buffer_impl.cc.s

# Object files for target gnuradio-customModule
gnuradio__customModule_OBJECTS = \
"CMakeFiles/gnuradio-customModule.dir/buffer_impl.cc.o"

# External object files for target gnuradio-customModule
gnuradio__customModule_EXTERNAL_OBJECTS =

lib/libgnuradio-customModule.so.v1.0-compat-xxx-xunknown: lib/CMakeFiles/gnuradio-customModule.dir/buffer_impl.cc.o
lib/libgnuradio-customModule.so.v1.0-compat-xxx-xunknown: lib/CMakeFiles/gnuradio-customModule.dir/build.make
lib/libgnuradio-customModule.so.v1.0-compat-xxx-xunknown: /usr/lib/arm-linux-gnueabihf/libgnuradio-runtime.so.3.8.2.0
lib/libgnuradio-customModule.so.v1.0-compat-xxx-xunknown: /usr/lib/arm-linux-gnueabihf/libthrift.so
lib/libgnuradio-customModule.so.v1.0-compat-xxx-xunknown: /usr/lib/arm-linux-gnueabihf/libgnuradio-pmt.so.3.8.2.0
lib/libgnuradio-customModule.so.v1.0-compat-xxx-xunknown: /usr/lib/arm-linux-gnueabihf/libvolk.so.2.4
lib/libgnuradio-customModule.so.v1.0-compat-xxx-xunknown: /usr/lib/arm-linux-gnueabihf/libboost_program_options.so.1.74.0
lib/libgnuradio-customModule.so.v1.0-compat-xxx-xunknown: /usr/lib/arm-linux-gnueabihf/libboost_filesystem.so.1.74.0
lib/libgnuradio-customModule.so.v1.0-compat-xxx-xunknown: /usr/lib/arm-linux-gnueabihf/libboost_system.so.1.74.0
lib/libgnuradio-customModule.so.v1.0-compat-xxx-xunknown: /usr/lib/arm-linux-gnueabihf/libboost_regex.so.1.74.0
lib/libgnuradio-customModule.so.v1.0-compat-xxx-xunknown: /usr/lib/arm-linux-gnueabihf/libboost_thread.so.1.74.0
lib/libgnuradio-customModule.so.v1.0-compat-xxx-xunknown: /usr/lib/arm-linux-gnueabihf/libboost_atomic.so.1.74.0
lib/libgnuradio-customModule.so.v1.0-compat-xxx-xunknown: /usr/lib/arm-linux-gnueabihf/liblog4cpp.so
lib/libgnuradio-customModule.so.v1.0-compat-xxx-xunknown: /usr/lib/arm-linux-gnueabihf/libgmpxx.so
lib/libgnuradio-customModule.so.v1.0-compat-xxx-xunknown: /usr/lib/arm-linux-gnueabihf/libgmp.so
lib/libgnuradio-customModule.so.v1.0-compat-xxx-xunknown: lib/CMakeFiles/gnuradio-customModule.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lws/RadioBlockResearch/gr-customModule/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libgnuradio-customModule.so"
	cd /home/lws/RadioBlockResearch/gr-customModule/build/lib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gnuradio-customModule.dir/link.txt --verbose=$(VERBOSE)
	cd /home/lws/RadioBlockResearch/gr-customModule/build/lib && $(CMAKE_COMMAND) -E cmake_symlink_library libgnuradio-customModule.so.v1.0-compat-xxx-xunknown libgnuradio-customModule.so.1.0.0git libgnuradio-customModule.so

lib/libgnuradio-customModule.so.1.0.0git: lib/libgnuradio-customModule.so.v1.0-compat-xxx-xunknown
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libgnuradio-customModule.so.1.0.0git

lib/libgnuradio-customModule.so: lib/libgnuradio-customModule.so.v1.0-compat-xxx-xunknown
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libgnuradio-customModule.so

# Rule to build all files generated by this target.
lib/CMakeFiles/gnuradio-customModule.dir/build: lib/libgnuradio-customModule.so

.PHONY : lib/CMakeFiles/gnuradio-customModule.dir/build

lib/CMakeFiles/gnuradio-customModule.dir/clean:
	cd /home/lws/RadioBlockResearch/gr-customModule/build/lib && $(CMAKE_COMMAND) -P CMakeFiles/gnuradio-customModule.dir/cmake_clean.cmake
.PHONY : lib/CMakeFiles/gnuradio-customModule.dir/clean

lib/CMakeFiles/gnuradio-customModule.dir/depend:
	cd /home/lws/RadioBlockResearch/gr-customModule/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lws/RadioBlockResearch/gr-customModule /home/lws/RadioBlockResearch/gr-customModule/lib /home/lws/RadioBlockResearch/gr-customModule/build /home/lws/RadioBlockResearch/gr-customModule/build/lib /home/lws/RadioBlockResearch/gr-customModule/build/lib/CMakeFiles/gnuradio-customModule.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/CMakeFiles/gnuradio-customModule.dir/depend
