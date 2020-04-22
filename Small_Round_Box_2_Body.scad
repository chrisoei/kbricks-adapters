include <kbrick_panels.scad>

union() {
  kbrick_bottom_panel(0);
  translate([0, 0, 4])
    scale([0.75, 0.75, 0.5])
      import("original_small_round_box_body.stl", convexity=3);
}
