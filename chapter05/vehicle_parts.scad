module simple_wheel(wheel_radius=10, wheel_width=6) {
    rotate([90,0,0])
        cylinder(h=wheel_width,r=wheel_radius,center=true);
}

module complex_wheel(
wheel_radius = 10,
side_spheres_radius = 50,
hub_thickness = 4,
cylinder_radius = 2,
) {
    cylinder_height = 2 * wheel_radius;

    difference() {
        sphere(r = wheel_radius);
        translate([0, -(side_spheres_radius + hub_thickness / 2), 0])
            sphere(r = side_spheres_radius);
        translate([0, (side_spheres_radius + hub_thickness / 2), 0])
            sphere(r = side_spheres_radius);

        translate([wheel_radius / 2, 0, 0])
            rotate([90, 0, 0])
                cylinder(r = cylinder_radius, h = cylinder_height, center = true);
        translate([-(wheel_radius / 2), 0, 0])
            rotate([90, 0, 0])
                cylinder(r = cylinder_radius, h = cylinder_height, center = true);
        translate([0, 0, wheel_radius / 2])
            rotate([90, 0, 0])
                cylinder(r = cylinder_radius, h = cylinder_height, center = true);
        translate([0, 0, -(wheel_radius / 2)])
            rotate([90, 0, 0])
                cylinder(r = cylinder_radius, h = cylinder_height, center = true);
    }
}

module body(
base_height = 8,
top_height = 14,
base_length = 60,
top_length = 30,
width = 20,
top_offset = 5,
) {
    // Car body base
    cube([base_length, width, base_height], center = true);
    // Car body top
    translate([top_offset, 0, ((base_height / 2) + (top_height / 2)) - 0.001])
        cube([top_length, width, top_height], center = true);
}

module axle(
track = 16,
radius = 2,
) {
    rotate([90, 0, 0])
        cylinder(h = track * radius, r = radius, center = true);
}
