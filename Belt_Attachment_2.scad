include <kbricks_core.scad>

$fn = 50;

module belt_loop_curve(r1, r2, l, t) {
  intersection() {
    translate([0, -l/2, -t/2])
      cube([r2, l, t]);
    difference() {
      cylinder(h = t, r = r2, center = true);
      cylinder(h = t, r = r1, center = true);
    }
  }
}

module belt_loop_flats(r1, r2, l, t) {
  union() {
    translate([-2 * l, r1, -t/2])
      cube([2 * l, r2 - r1, t]);
    translate([-2 * l, -r2, -t/2])
      cube([2 * l, r2 - r1, t]);
  }
}

module belt_loop(r1, r2, l, t) {
  translate([l, 0, 0]) {
    union() {
      belt_loop_curve(r1, r2, l, t);
      translate([-2 * l, 0, 0]) {
        scale([-1, 1, 1]) belt_loop_curve(r1, r2, l, t);
      }
      belt_loop_flats(r1, r2, l, t);
    }
  }
}

union() {
  belt_loop(2, 5, 18, 24);
  translate([0, 17, 0])
    cube_basic(support=true);
}