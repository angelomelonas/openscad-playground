use <vehicle_parts.scad>;

$fa = 1;
$fs = 0.4;

wheelbase_1 = 38;
wheelbase_2 = 72;
track = 35;
body_roll = 0;
wheels_turn = 0;
wheel_radius_rear = 12;

z_offset = 10;

// Car body
rotate([body_roll, 0, 0]) {
    scale([1.2, 1, 1]) {
        body(base_length = 60, top_length = 80, top_offset = 0);
    }
}

// Wheels
translate([-wheelbase_2 / 2, -track / 2, z_offset]) {
    rotate([wheels_turn, 0, 0]) {
        complex_wheel();
    }
}
translate([-wheelbase_2 / 2, track / 2, z_offset]) {
    rotate([wheels_turn, 0, 0]) {
        complex_wheel();
    }
}

translate([-wheelbase_1 / 2, -track / 2, 0]) {
    rotate([0, 0, wheels_turn]) {
        simple_wheel();
    }
}
translate([-wheelbase_1 / 2, track / 2, 0]) {
    rotate([0, 0, wheels_turn]) {
        simple_wheel();
    }
}

translate([0, -track / 2, 0]) {
    rotate([0, 0, wheels_turn]) {
        simple_wheel();
    }
}
translate([0, track / 2, 0]) {
    rotate([0, 0, wheels_turn]) {
        simple_wheel();
    }
}

translate([wheelbase_1 / 2, -track / 2, 0]) {
    rotate([0, 0, wheels_turn]) {
        simple_wheel();
    }
}
translate([wheelbase_1 / 2, track / 2, 0]) {
    rotate([0, 0, wheels_turn]) {
        simple_wheel();
    }
}

translate([wheelbase_2 / 2, -track / 2, z_offset]) {
    complex_wheel();
}
translate([wheelbase_2 / 2, track / 2, z_offset]) {
    complex_wheel();
}

// Axles
translate([wheelbase_2 / 2, 0, z_offset])
    axle();

translate([-wheelbase_2 / 2, 0, z_offset])
    axle();

translate([wheelbase_1 / 2, 0, 0])
    axle();

translate([-wheelbase_1 / 2, 0, 0])
    axle();

translate([0, 0, 0])
    axle();

translate([0, 0, 0])
    axle();

translate([wheelbase_1 / 2, 0, 0])
    axle();

translate([-wheelbase_1 / 2, 0, 0])
    axle();

translate([wheelbase_2 / 2, 0, z_offset])
    axle();

translate([-wheelbase_2 / 2, 0, z_offset])
    axle();