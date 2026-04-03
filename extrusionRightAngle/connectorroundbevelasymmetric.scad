use </../sevlib.scad>

$fn=100;



plug_looseness = 0.100;

wall_thick = 1.5875 + plug_looseness;
extrusion_height = 38.1;
extrusion_width_thin = 19.05; //thinner end
extrusion_width_thick = 38.1; //thicker end
leg_length = 40;
taper_rise = 0.79375;
taper_run = 3.175;

leg_height = extrusion_height - (2 * wall_thick);
leg_width_thin = extrusion_width_thin - (2 * wall_thick);

leg_width_thick = extrusion_width_thick - (2 * wall_thick);

taper_height = leg_height - (2 * taper_rise);
taper_width_thin = leg_width_thin - (2 * taper_rise);
taper_width_thick = leg_width_thick - (2 * taper_rise);

near_zero = 0.0001;

bevel_radius = 2;



intersection()
{
    color("red") cube([extrusion_width_thin, extrusion_width_thin, extrusion_height]);

    translate([extrusion_width_thin, extrusion_width_thin, 0])
    {
        color("red") cylinder(r=extrusion_width_thin, h = extrusion_height);
    }
}
translate([0, extrusion_width_thin, 0])
{
    cube([extrusion_width_thin, extrusion_width_thick - extrusion_width_thin, extrusion_height]);
}


color("blue") hull()
{
translate([wall_thick, extrusion_width_thick - bevel_radius, wall_thick])
{
    cubeBevel(leg_width_thin, leg_length - taper_run + bevel_radius, leg_height, bevel_radius);
}

translate([wall_thick + taper_rise, extrusion_width_thick + leg_length, wall_thick + taper_rise])
{
    cube([taper_width_thin, near_zero, taper_height]);
}
}
 
{
color("green") hull()
{
translate([extrusion_width_thin - bevel_radius, wall_thick, wall_thick])
{
     cubeBevel(leg_length - taper_run + bevel_radius, leg_width_thick, leg_height, bevel_radius);
}
translate([extrusion_width_thin + leg_length, wall_thick + taper_rise, wall_thick + taper_rise])
{
    cube([near_zero, taper_width_thick, taper_height]);
}

}
}
