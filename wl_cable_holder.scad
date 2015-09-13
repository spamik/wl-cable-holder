module cable_holder(height) {
	union() {
		difference() {
			cylinder(d=9, h=height);
			translate([0, 0, -1]) cylinder(d=7, h=2*height);
			translate([0, -9/2+1, -1]) cube(size=[22, 4.8, 2*height]);
		}
		difference() {
			translate([0, -9/2, 0]) cube(size=[22, 1, height]);
			translate([16, 0, height/2]) rotate(a=[90, 0, 0]) cylinder(d=5.5, h=10);
		}
		translate([3.5, 0.5, 0]) rotate(a=[0, 0, 25]) cube(size=[4.4, 1, height]);
	}
}

cable_holder(22);