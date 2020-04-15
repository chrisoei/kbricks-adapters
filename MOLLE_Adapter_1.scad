// Use "Molle translator for merges, turns, and diagonal angle changes"
// from https://www.thingiverse.com/thing:351866

include <kbricks_core.scad>

scale([1, 1, -1])
  union() {
    plate(length=1, width=1);
    translate([-13, -13, 1])
      cube([27, 27, 3]);
    translate([-22, -22, 1])
      import("original_molle_translator.stl", convexity=3);
  }
