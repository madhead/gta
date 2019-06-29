use <pipe.scad>
use <fittings.scad>

rotate([0, 90, 0]) pipe(l = 100);
rotate([0, 0, 90]) elbow90();

pipe(l = 200);
translate([0, 0, 200]) pipe(l = 100);

translate([100, 0, 0]){
    rotate([0, 0, -90])  elbow90();
    pipe(l = 100);
    translate([0, 0, 100]) pipe(l = 200);
}

translate([0, 0, 300]){
    rotate([0, 90, 0]) pipe(l = 50);
    translate([50, 0, 0]) rotate([0, 90, 0]) pipe(l = 50);
}
translate([0, 0, 300]) rotate([90, 0, 90]) elbow90();
translate([100, 0, 300]) rotate([90, 0, -90]) elbow90();

translate([0, 0, 200]){
    l = 212;
    a = 45.03;

    rotate([90, 0, a]){
        tee();
        pipe(l = l);
    }
    translate([l * sin(a), -l * cos(a), 0]){
        rotate([-90, 0, a]) tee();
    }
}
translate([100, 0, 100]){
    l = 158;
    a = 18.45;

    rotate([90, 0, a]){
        tee();
        pipe(l = l);
    }
    translate([l * sin(a), -l * cos(a), 0]){
        rotate([-90, 0, a]) elbow90();
        pipe(l = 100);
        translate([0, 0, 100]) pipe(l = 200);
    }
}
translate([50, 0, 300]) rotate([0, -55, 90]){
    tee();
    pipe(l = 184);
}

translate([150, -150, 450]){
    translate([0, 0, -45]) rotate([-90, 0, 90]){
        tee();
        pipe(l=100);
    }
    translate([-100, 0, -45]) rotate([90, -55, 90]) elbow90();
}