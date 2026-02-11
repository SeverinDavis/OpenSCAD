use </../sevlib.scad>

$fn=100;

all_radius = 1;

base_length = 200;
base_depth = 100;
base_thickness = 3;

psul = 120;
psuw = 60;
psuh = 39;

psuh_extend = psuh+25;
psul_extend = psul+25;

psul_border = psul + 2*base_thickness;
psuw_border = psuw + 2*base_thickness;
psuh_border = psuh;

cutout_width = 18;
cutout_height = 8;

screwbase_length = 70;
screwbase_depth= 138;

screw_radius = 3.5;

screw_spacing_l = (35.3 +45)/2;
screw_spacing_w = (111.5 + 121)/2;

difference()
{
//psu cage
difference()
{
    translate([-psul_border/2,-psuw_border/2,0])
        color("red")  cubeBevel2(psul_border, psuw_border, psuh, all_radius);

    translate([-psul/2,-psuw/2,0])
        color("black")  cubeBevel2(psul, psuw, psuh_extend, all_radius);
}

{
    translate([-psul_extend/2,0,cutout_width/2 + cutout_height])
rotate([0,90,0])
color("pink") cylinder(psul_extend, cutout_width/2, cutout_width/2);

translate([-psul_extend/2,-cutout_width/2,cutout_height+cutout_width/2])
color("purple") cube([psul_extend,cutout_width,psuh_border]);
}



}


//base
translate([-psul_border/2,-psuw_border/2,0])
        color("green")  cubeBevel2(psul_border, psuw_border, base_thickness, all_radius);

difference()
{
//screwbase
translate([-screwbase_length/2,-screwbase_depth/2,0])
        color("green")  cubeBevel2(screwbase_length, screwbase_depth, base_thickness, all_radius);

{
translate([screw_spacing_l/2, screw_spacing_w/2, -1])
color("maroon") cylinder(psul_extend, screw_radius, screw_radius);

translate([screw_spacing_l/2, -screw_spacing_w/2, -1])
color("maroon") cylinder(psul_extend, screw_radius, screw_radius);

translate([-screw_spacing_l/2, screw_spacing_w/2, -1])
color("maroon") cylinder(psul_extend, screw_radius, screw_radius);

translate([-screw_spacing_l/2, -screw_spacing_w/2, -1])
color("maroon") cylinder(psul_extend, screw_radius, screw_radius);
}   
}

