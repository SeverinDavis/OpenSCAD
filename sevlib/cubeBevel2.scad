module cubeBevel2(width, depth, length, radius) 
{
    hull()
    {
        translate([radius,radius,0]){
            cylinder(length, r = radius);
        }
        translate([width-radius,radius,0]){
            cylinder(length, r = radius);
        }
        translate([radius,depth-radius,0]){
            cylinder(length, r = radius);
        }
        translate([width-radius,depth-radius,0]){
            cylinder(length, r = radius);
        }
    }
}