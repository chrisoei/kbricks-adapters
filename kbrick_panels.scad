
include <kbricks_core.scad>

module kbrick_bottom_panel(padding) {
  union() {
    intersection() {
      translate([0, 0, 3])
        plate(length=1, width=1);
      translate([-12, -12, 0])
        cube([24, 24, 4]);
    }
    translate([-12, -12, 4])
      cube([24, 24, padding]);
  }
}

module kbrick_top_panel(padding) {
  translate([0, 0, 4 + padding])
    scale([1, 1, -1])
      kbrick_bottom_panel(padding);
}

module kbrick_side_panel(padding) {
  translate([0, padding - 8, 0]) {
    union() {
      intersection() {
        translate([-12, 8, -12])
          cube([24, 24, 24]);
        cube_basic(support=true);
      }
      translate([-12, 8 - padding, -12])
        cube([24, padding, 24]);
    }
  }
}