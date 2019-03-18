/*
    d                Elbow's inner diameter, millimeters
    D                Elbow's outer diameter, millimeters
    l1               Elbow's first shoulder length, millimeters
    l2               Elbow's second shoulder length, millimeters
*/
module elbow90(d = 20, D = 30.5, l1 = 28, l2 = 28) {
    difference(){
        union(){
            linear_extrude(height = l1) {
                circle(d = D);
            }
            rotate(a = [90, 0, 0]) {
                linear_extrude(height = l2) {
                    circle(d = D);
                }
            }
            sphere(d = D);
        }
        linear_extrude(height = l1 + 1) {
            circle(d = d);
        }
        rotate(a = [90, 0, 0]) {
            linear_extrude(height = l2 + 1) {
                circle(d = d);
            }
        }
        sphere(d = d);
    }
}

/*
    d                Elbow's inner diameter, millimeters
    D                Elbow's outer diameter, millimeters
    l1               Elbow's first shoulder length, millimeters
    l2               Elbow's second shoulder length, millimeters
*/
module elbow45(d = 20, D = 30.5, l1 = 28, l2 = 28) {
    difference(){
        union(){
            linear_extrude(height = l1) {
                circle(d = D);
            }
            rotate(a = [135, 0, 0]) {
                linear_extrude(height = l2) {
                    circle(d = D);
                }
            }
            sphere(d = D);
        }
        linear_extrude(height = l1 + 1) {
            circle(d = d);
        }
        rotate(a = [135, 0, 0]) {
            linear_extrude(height = l2 + 1) {
                circle(d = d);
            }
        }
        sphere(d = d);
    }
}

/*
    d                Tee's inner diameter, millimeters
    D                Tee's outer diameter, millimeters
    l1               Tee's first shoulder length, millimeters
    l2               Tee's second shoulder length, millimeters
    l3               Tee's third shoulder length, millimeters
*/
module tee(d = 20, D = 30.5, l1 = 28, l2 = 28, l3 = 28) {
    difference(){
        union(){
            translate([0, l1, 0]){
                rotate(a = [90, 0, 0]) {
                    linear_extrude(height = l1 + l2) {
                        circle(d = D);
                    }
                }
            }
            rotate(a = [0, 0, 0]) {
                linear_extrude(height = l3) {
                    circle(d = D);
                }
            }
        }
        translate([0, l1+1, 0]){
            rotate(a = [90, 0, 0]) {
                linear_extrude(height = l1 + l2 + 2) {
                    circle(d = d);
                }
            }
        }
        rotate(a = [0, 0, 0]) {
            linear_extrude(height = l3 + 1) {
                circle(d = d);
            }
        }
    }
}
