include <kbricks_core.scad>

$fn = 100;

union() {
  difference() {
    translate([-12, 12, 0])
      cube([24, 24, 2], center=false);
    translate([0, 24, 0])
      cylinder(r = 2, h = 2);
  }
  translate([0, 0, 3])
    scale([1, 1, -1])
      plate(length=1, width=1);
}