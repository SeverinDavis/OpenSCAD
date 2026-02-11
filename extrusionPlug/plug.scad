$fn=100;

wall_thick = 3.429
;
extrusion_length = 25.4;
extrusion_width = 25.4;
cap_height = 4.8;
plug_depth = 17;

radius = 2.4;

near_zero = 0.0001;

intersection()
{
translate([-(18.7)/2, -(18.7)/2,0])
{
    cube([18.7,18.7,plug_depth]);
    
}
translate([0, 0, 0])
{
    cylinder(r=11.25, h = plug_depth);
}
}


hull()
{
    translate([-extrusion_length/2 + radius, extrusion_width/2 - radius, radius])
    {
        sphere(r=radius);
    }
    translate([extrusion_length/2 - radius, extrusion_width/2 - radius, radius])
    {
        sphere(r=radius);
    }
    translate([-extrusion_length/2 + radius, -extrusion_width/2 + radius, radius])
    {
        sphere(r=radius);
    }
    translate([extrusion_length/2 - radius, -extrusion_width/2 + radius, radius])
    {
        sphere(r=radius);
    }



    translate([-extrusion_length/2 + radius, extrusion_width/2 - radius, cap_height])
    {
        cylinder(r=radius, h = near_zero);
    }

    translate([extrusion_length/2 - radius, extrusion_width/2 - radius, cap_height])
    {
        cylinder(r=radius, h = near_zero);
    }


    translate([-extrusion_length/2 + radius, -extrusion_width/2 + radius, cap_height])
    {
        cylinder(r=radius, h = near_zero);
    }


    translate([extrusion_length/2 - radius, -extrusion_width/2 + radius, cap_height])
    {
        cylinder(r=radius, h = near_zero);
    }
}