use <pipe.scad>
use <fittings.scad>

rotate([0, 90, 0]) pipe(l = 100);
rotate([0, 0, 90]) elbow90();
translate([100, 0, 0]) rotate([0, 0, -90])  elbow90();

pipe(l = 300);
translate([100, 0, 0]) pipe(l = 300);

translate([0, 0, 300]) rotate([0, 90, 0]) pipe(l = 100);
translate([0, 0, 300]) rotate([90, 0, 90]) elbow90();
translate([100, 0, 300]) rotate([90, 0, -90]) elbow90();

translate([0, 0, 100]) rotate([90, 0, 0]) tee();
translate([100, 0, 100]) rotate([90, 0, 0]) tee();
translate([50, 0, 300]) rotate([0, -90, 90]) tee();