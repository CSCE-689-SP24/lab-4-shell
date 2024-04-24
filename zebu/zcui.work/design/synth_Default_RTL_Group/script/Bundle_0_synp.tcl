-comp_unit { 
  -top {
    -lib default
    -primary fifo_0000
    -secondary ""
    -result_file edif/fifo_0000/fifo_0000.edf.gz
    -unit scm
  } 
  -dep {
    -kind top
    -lib default
    -primary fifo_0000
    -secondary ""
    -ver scm
    -input_file src/fifo_0000.scm
    -unit scm
  } 
}\
-comp_unit { 
  -top {
    -lib default
    -primary stb
    -secondary ""
    -result_file edif/stb/stb.edf.gz
    -unit scm
  } 
  -dep {
    -kind top
    -lib default
    -primary stb
    -secondary ""
    -ver scm
    -input_file src/stb.scm
    -unit scm
  } 
}\
