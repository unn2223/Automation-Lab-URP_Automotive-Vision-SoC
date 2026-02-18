# Open packaged Vivado snapshot project from repo root.
set script_dir [file normalize [file dirname [info script]]]
set repo_root [file normalize [file join $script_dir ".."]]
set xpr_path [file join $repo_root "prj" "prj.xpr"]

if {![file exists $xpr_path]} {
  error "Snapshot project not found: $xpr_path"
}

open_project $xpr_path
puts "Opened snapshot project: $xpr_path"
