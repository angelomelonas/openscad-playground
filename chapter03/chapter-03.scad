$fa = 1;
$fs = 0.4;

// Car
base_height = 8;
top_height = 14;
body_roll = 0;

wheel_radius = 10;
wheel_width = 10;
wheels_turn = 0;
wheel_track = 16;

side_spheres_radius = 50;
hub_thickness = 4;
cylinder_height = wheel_width + 0.1;
cylinder_radius = 2;

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
translate([-20, -wheel_track, 0]) {
    rotate([0, 0, 0]) {
        resize([2 * wheel_radius, wheel_width, 2 * wheel_radius]) {
            difference() {
                sphere(r = wheel_radius, center = true);
                translate([0, -(side_spheres_radius + hub_thickness / 2), 0])
                    sphere(r = side_spheres_radius, center = true);
                translate([0, (side_spheres_radius + hub_thickness / 2), 0])
                    sphere(r = side_spheres_radius, center = true);

                translate([wheel_radius / 2, 0, 0])
                    rotate([90, 0, 0])
                        cylinder(r = cylinder_radius, h = cylinder_height + 20, center = true);
                translate([-(wheel_radius / 2), 0, 0])
                    rotate([90, 0, 0])
                        cylinder(r = cylinder_radius, h = cylinder_height + 20, center = true);
                translate([0, 0, wheel_radius / 2])
                    rotate([90, 0, 0])
                        cylinder(r = cylinder_radius, h = cylinder_height + 20, center = true);
                translate([0, 0, -(wheel_radius / 2)])
                    rotate([90, 0, 0])
                        cylinder(r = cylinder_radius, h = cylinder_height + 20, center = true);
            }
        }}}

translate([-20, wheel_track, 0]) {
    rotate([0, 0, 0]) {
        resize([2 * wheel_radius, wheel_width, 2 * wheel_radius]) {
            difference() {
                sphere(r = wheel_radius, center = true);
                translate([0, -(side_spheres_radius + hub_thickness / 2), 0])
                    sphere(r = side_spheres_radius, center = true);
                translate([0, (side_spheres_radius + hub_thickness / 2), 0])
                    sphere(r = side_spheres_radius, center = true);

                translate([wheel_radius / 2, 0, 0])
                    rotate([90, 0, 0])
                        cylinder(r = cylinder_radius, h = cylinder_height + 20, center = true);
                translate([-(wheel_radius / 2), 0, 0])
                    rotate([90, 0, 0])
                        cylinder(r = cylinder_radius, h = cylinder_height + 20, center = true);
                translate([0, 0, wheel_radius / 2])
                    rotate([90, 0, 0])
                        cylinder(r = cylinder_radius, h = cylinder_height + 20, center = true);
                translate([0, 0, -(wheel_radius / 2)])
                    rotate([90, 0, 0])
                        cylinder(r = cylinder_radius, h = cylinder_height + 20, center = true);
            }
        }}}

translate([20, -wheel_track, 0]) {
    rotate([0, 0, 0]) {
        resize([2 * wheel_radius, wheel_width, 2 * wheel_radius]) {
            difference() {
                sphere(r = wheel_radius, center = true);
                translate([0, -(side_spheres_radius + hub_thickness / 2), 0])
                    sphere(r = side_spheres_radius, center = true);
                translate([0, (side_spheres_radius + hub_thickness / 2), 0])
                    sphere(r = side_spheres_radius, center = true);

                translate([wheel_radius / 2, 0, 0])
                    rotate([90, 0, 0])
                        cylinder(r = cylinder_radius, h = cylinder_height + 20, center = true);
                translate([-(wheel_radius / 2), 0, 0])
                    rotate([90, 0, 0])
                        cylinder(r = cylinder_radius, h = cylinder_height + 20, center = true);
                translate([0, 0, wheel_radius / 2])
                    rotate([90, 0, 0])
                        cylinder(r = cylinder_radius, h = cylinder_height + 20, center = true);
                translate([0, 0, -(wheel_radius / 2)])
                    rotate([90, 0, 0])
                        cylinder(r = cylinder_radius, h = cylinder_height + 20, center = true);
            }
        }}}

translate([20, wheel_track, 0]) {
    rotate([0, 0, 0]) {
        resize([2 * wheel_radius, wheel_width, 2 * wheel_radius]) {
            difference() {
                sphere(r = wheel_radius, center = true);
                translate([0, -(side_spheres_radius + hub_thickness / 2), 0])
                    sphere(r = side_spheres_radius, center = true);
                translate([0, (side_spheres_radius + hub_thickness / 2), 0])
                    sphere(r = side_spheres_radius, center = true);

                translate([wheel_radius / 2, 0, 0])
                    rotate([90, 0, 0])
                        cylinder(r = cylinder_radius, h = cylinder_height + 20, center = true);
                translate([-(wheel_radius / 2), 0, 0])
                    rotate([90, 0, 0])
                        cylinder(r = cylinder_radius, h = cylinder_height + 20, center = true);
                translate([0, 0, wheel_radius / 2])
                    rotate([90, 0, 0])
                        cylinder(r = cylinder_radius, h = cylinder_height + 20, center = true);
                translate([0, 0, -(wheel_radius / 2)])
                    rotate([90, 0, 0])
                        cylinder(r = cylinder_radius, h = cylinder_height + 20, center = true);
            }
        }}}
// Axles
translate([20, 0, 0])
    rotate([90, 0, 0])
        cylinder(h = wheel_track * 2, r = 2, center = true);

translate([-20, 0, 0])
    rotate([90, 0, 0])
        cylinder(h = wheel_track * 2, r = 2, center = true);