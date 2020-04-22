include <kbrick_panels.scad>

rotate([180, 0, 0])
  scale([0.75, 0.75, 0.5])
    import("original_small_round_box_lid.stl", convexity=3);

