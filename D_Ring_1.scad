include <kbricks_core.scad>

$fn=150;

union() {
  translate([0, 0, 3])
    rotate([90, 0, 0])
      rotate_extrude(angle=180, convexity=2)
        translate([10, 0, 0])
          circle(r=2);
  plate(length=1, width=1);
}


