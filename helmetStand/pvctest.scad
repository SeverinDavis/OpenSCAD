base_radius = 44.45;

pipe_radius = 13.335;
zero = 0.001;


difference()
{
    
     cylinder(16, base_radius, base_radius);
    cylinder(16+zero, pipe_radius, pipe_radius+.4);

   
}
cylinder(3, pipe_radius+1, pipe_radius+1);