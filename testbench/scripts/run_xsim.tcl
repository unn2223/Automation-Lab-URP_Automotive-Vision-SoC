# Run standalone RTL simulation for verification flow:
# input image -> input hex -> xsim result hex -> output image

set script_dir [file normalize [file dirname [info script]]]
set tb_root [file normalize [file join $script_dir ".."]]
set repo_root [file normalize [file join $tb_root ".."]]

set tb_rtl_dir [file join $tb_root "rtl"]
set hw_rtl_dir [file join $repo_root "hw" "rtl"]
set hw_mem_dir [file join $repo_root "hw" "mem"]
set sim_hex_dir [file join $tb_root "vectors" "sim_output_hex"]

file mkdir $sim_hex_dir

set required_files [list \
  [file join $hw_rtl_dir "axis_resize_half.v"] \
  [file join $hw_rtl_dir "bram.v"] \
  [file join $hw_rtl_dir "bram_con.v"] \
  [file join $hw_rtl_dir "fisheye_lut_ip_distorm.v"] \
  [file join $hw_rtl_dir "fisheye_reader_stream.v"] \
  [file join $tb_rtl_dir "top_for_testbench.v"] \
  [file join $tb_rtl_dir "testbench.v"] \
  [file join $hw_mem_dir "map_x.mem"] \
  [file join $hw_mem_dir "map_y.mem"] \
]

foreach f $required_files {
  if {![file exists $f]} {
    error "Required file not found: $f"
  }
}

set old_pwd [pwd]
cd $tb_root

# readmemh in fisheye_lut_ip_distorm.v uses local file names.
file copy -force [file join $hw_mem_dir "map_x.mem"] [file join $tb_root "map_x.mem"]
file copy -force [file join $hw_mem_dir "map_y.mem"] [file join $tb_root "map_y.mem"]

foreach f [glob -nocomplain [file join $sim_hex_dir "result_*.hex"]] {
  file delete -force $f
}

set compile_files [list \
  [file join $hw_rtl_dir "axis_resize_half.v"] \
  [file join $hw_rtl_dir "bram.v"] \
  [file join $hw_rtl_dir "bram_con.v"] \
  [file join $hw_rtl_dir "fisheye_lut_ip_distorm.v"] \
  [file join $hw_rtl_dir "fisheye_reader_stream.v"] \
  [file join $tb_rtl_dir "top_for_testbench.v"] \
  [file join $tb_rtl_dir "testbench.v"] \
]

puts "INFO: Running xvlog..."
eval [linsert $compile_files 0 xvlog]

puts "INFO: Running xelab..."
xelab testbench -s tb_sim

puts "INFO: Running xsim..."
xsim tb_sim -runall

cd $old_pwd
puts "INFO: Simulation complete. Output HEX files: $sim_hex_dir"
