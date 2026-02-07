$fn=100;

plug_looseness = 0.100;

wall_thick = 1.5875 + plug_looseness;
extrusion_height = 38.1;
extrusion_width = 19.05;
leg_length = 40;
taper_rise = 0.79375;
taper_run = 3.175;

leg_height = extrusion_height - (2 * wall_thick);
leg_width = extrusion_width - (2 * wall_thick);

taper_height = leg_height - (2 * taper_rise);
taper_width = leg_width - (2 * taper_rise);

near_zero = 0.0001;



intersection()
{
    cube([extrusion_width, extrusion_width, extrusion_height]);

    translate([extrusion_width, extrusion_width, 0])
    {
        cylinder(r=extrusion_width, h = extrusion_height);
    }
}

hull()
{
translate([wall_thick, extrusion_width - near_zero, wall_thick])
{
    cube([leg_width, leg_length - taper_run, leg_height]);
}

translate([wall_thick + taper_rise, extrusion_width + leg_length, wall_thick + taper_rise])
{
    cube([taper_width, near_zero, taper_height]);
}
}



hull()
{
translate([extrusion_width - near_zero, wall_thick, wall_thick])
{
    cube([leg_length - taper_run, leg_width, leg_height]);
}
translate([extrusion_width + leg_length, wall_thick + taper_rise, wall_thick + taper_rise])
{
    cube([near_zero, taper_width, taper_height]);
}

}
