
cls = 0.1;

module pole() {
    translate([19/2,0])
    linear_extrude(height=19)
    offset(3)
    square([17, 36], center=true);
}

module pole_hole() {
    translate([19/2, 0, -1])
    linear_extrude(height=19+2)
    offset(cls)
    offset(1.5)
    square([16, 35], center=true);
}

module support() {
    translate([-19, 42/2, 0])
    rotate([90, 0, 0])
    linear_extrude(height=42)
    polygon(points=[[0, 2], [0,0], [19+1,0],[19+1,19], [19-2, 19]]);
}

module support_hole() {
    translate([-19/2 -2, 0, 2])
    linear_extrude(height=17)
    offset(1.5)
    square([16, 35], center=true);
}

module screw_hole() {
    linear_extrude(height=6)
    circle(1.5);
}

difference() {
    union() {
        pole();
        support();
    }
    union() {
        pole_hole();
        support_hole();
        
        translate([-9.5, 9.5, -1])
        screw_hole();
        translate([-9.5, -9.5, -1])
        screw_hole();
        
        translate([-5, 9.5, 9.5])
        rotate([0, 90])
        screw_hole();
        translate([-5, -9.5, 9.5])
        rotate([0, 90])
        screw_hole();
    }
}
