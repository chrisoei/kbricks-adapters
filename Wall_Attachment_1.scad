include <kbricks_core.scad>

$fn = 100;

union() {
  translate([-10, 12, 0])
    cube([20, 80 - 24, 2], center=false);
  translate([0, 0, 3])
    scale([1, 1, -1])
      plate(length=1, width=1);
}