module cubeBevel(width, depth, length, radius) 
{
    hull()
    {
        translate([radius,radius,radius]){
        sphere(radius);
        }

        translate([width-radius,radius,radius]){
            sphere(radius);
        }

        translate([radius,depth-radius,radius]){
            sphere(radius);
        }

        translate([width-radius,depth-radius,radius]){
            sphere(radius);
        }

        translate([radius,radius,length-radius]){
        sphere(radius);
        }

        translate([width-radius,radius,length-radius]){
            sphere(radius);
        }

        translate([radius,depth-radius,length-radius]){
            sphere(radius);
        }

        translate([width-radius,depth-radius,length-radius]){
            sphere(radius);
        }
    }
}