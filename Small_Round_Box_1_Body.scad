include <kbricks_core.scad>

union() {
  plate(length=1, width=1);
  translate([0, 0, 1])
    import("original_small_round_box_body.stl", convexity=3);
}
