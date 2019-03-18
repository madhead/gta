/*
    d                Pipe's inner diameter, millimeters
    D                Pipe's outer diameter, millimeters
    l                Pipe's length, millimeters
*/
module pipe(d = 16.2, D = 20, l) {
    linear_extrude(height = l) {
        difference() {
            circle(d = D);
            circle(d = d);
        };
    }
}
