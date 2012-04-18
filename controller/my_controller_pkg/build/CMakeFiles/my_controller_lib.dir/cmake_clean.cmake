FILE(REMOVE_RECURSE
  "../src/my_controller_pkg/srv"
  "../srv_gen"
  "../srv_gen"
  "CMakeFiles/my_controller_lib.dir/src/my_controller_file.o"
  "../lib/libmy_controller_lib.pdb"
  "../lib/libmy_controller_lib.so"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang CXX)
  INCLUDE(CMakeFiles/my_controller_lib.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
