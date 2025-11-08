$fa = 1;
$fs = 0.4;

// Car
base_height = 8;
top_height = 14;
body_roll = 10;

wheel_radius = 12;
wheel_width = 8;
wheels_turn = 25;
wheel_track = 20;

// Car body
rotate([body_roll, 0, 0]) {
    scale([1.2, 1, 1]) {
        // Car body base
        cube([60, 20, base_height], center = true);
        // Car body top
        translate([5, 0, ((base_height / 2) + (top_height / 2)) - 0.001])
            cube([30, 20, top_height], center = true);
    }
}

// Wheels
translate([-20, -wheel_track, 0])
    rotate([90, 0, -wheels_turn])
        cylinder(h = wheel_width, r = wheel_radius, center = true);

translate([-20, wheel_track, 0])
    rotate([90, 0, -wheels_turn])
        cylinder(h = wheel_width, r = wheel_radius, center = true);

translate([20, -wheel_track, 0])
    rotate([90, 0, 0])
        cylinder(h = wheel_width, r = wheel_radius, center = true);

translate([20, wheel_track, 0])
    rotate([90, 0, 0])
        cylinder(h = wheel_width, r = wheel_radius, center = true);

// Axles
translate([20, 0, 0])
    rotate([90, 0, 0])
        cylinder(h = wheel_track * 2, r = 2, center = true);

translate([-20, 0, 0])
    rotate([90, 0, 0])
        cylinder(h = wheel_track * 2, r = 2, center = true);