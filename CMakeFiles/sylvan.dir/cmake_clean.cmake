file(REMOVE_RECURSE
  "libsylvan.pdb"
  "libsylvan.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/sylvan.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
