include <kbricks_core.scad>


$fn=150;

// remove specific colors for each module
color ("Gold")
union() {
  plate(length=1, width=1);
  translate([-12, -12, 2])
    cube([24, 24, 4]);
  translate([-9, 0, 4])
    rotate([0, 35, 0])
      cylinder(h=30, r=3);
}
