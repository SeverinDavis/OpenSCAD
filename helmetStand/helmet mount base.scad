
base_radius = 88.9;

angle = 30;

pipe_radius = 13.335;


sphere_radius = base_radius / cos(angle);

sphere_offset = base_radius * tan(angle);

echo(angle=angle);
echo(sphere_offset=sphere_offset);
echo(sphere_radius=sphere_radius);
difference()
{
    intersection()
    {
        translate([-sphere_radius,-sphere_radius,0])
        {
            cube(sphere_radius*2);
        }

        translate([0,0,-sphere_offset])
        {
            sphere(sphere_radius, $fn=100);
        }
    }
    
    cylinder(sphere_radius - sphere_offset, pipe_radius, pipe_radius+0.4);
}


cylinder(3, pipe_radius+1, pipe_radius+1);