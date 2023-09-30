
linear_extrude(height=8)
resize([9, 11])
circle(10);

translate([0, -5])
linear_extrude(height=1.5)
square([3, 2],center=true);

translate([0, 5])
linear_extrude(height=1.5)
square([3, 2],center=true);
