include <kbricks_core.scad>

src = "original_iPhone_XS_Harness_with_Interchangeable_Parts_stand_pt15.stl"

union() {
  translate([-6, -10, 11])
  rotate([-90, 0, 0])
  intersection() {
    translate([0, 45, 70])
      import(src, convexity=3);
    translate([0, -42, 0])
      cube([50, 50, 100]);
  };
  plate(length=1, width=1);
}
