batt_height = 25.5;
batt_width = 35.5;
batt_length = 114;

body_width = 50;
body_length = 130;
body_height = 36;

blocker_dim = 500;

ZERO=0.001;

difference()

{
//battery diff
difference()
{

intersection()
{
    hull()
    {
    translate([0,body_length - (body_width/2), 0])
    sphere(body_width/2);

    translate([0,0, body_height - body_width])
    sphere(body_width);
    }
    
    //block out bottom
    translate([0,0, blocker_dim/2])
    cube([body_width,blocker_dim, blocker_dim], center = true);
    
}

    //battery
    {
    translate([0,-batt_length/2 +(batt_length- 25), batt_height/2 - ZERO])
    cube([batt_width,batt_length, batt_height], center = true);
   }

}//battery diff


{
  translate([25+25-4.5,-25, 25-ZERO])
   cube([50,50, 50], center = true);
    
    translate([-25-25+4.5,-25, 25-ZERO])
   cube([50,50, 50], center = true);
}
}