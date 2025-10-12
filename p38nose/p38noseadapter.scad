$fn=100;

rearx = 50;
reary = 42.5;
nosediameter = 33;

cornerdiameter = 18;
corneroffset = cornerdiameter/2;

noselength = 40;

ZERO = 0.001;

camrearextend = 100;

cambase = 14.4;
cammid = 13.3;

camerawirelength = 6;
camerawiredepth = 2;

camerasink = 19;

stretchdiameter = reary;   
   
   
   
   translate([0,4,0])
    {
        difference()
        {
            sphere(d=stretchdiameter);
            translate([-stretchdiameter/2,-stretchdiameter/2,-stretchdiameter])
            {
                cube([stretchdiameter,stretchdiameter,stretchdiameter]);
            } 
        }
    }
    
    translate([0,-2,0])
    {
        difference()
        {
            sphere(d=stretchdiameter);
            translate([-stretchdiameter/2,-stretchdiameter/2,-stretchdiameter])
            {
                cube([stretchdiameter,stretchdiameter,stretchdiameter]);
            } 
        }
    }

 translate([(rearx/2)-corneroffset,(reary/2)-corneroffset,0])
    {
        difference()
        {
            sphere(d=cornerdiameter);
            translate([-cornerdiameter/2,-cornerdiameter/2,-cornerdiameter])
            {
                cube([cornerdiameter,cornerdiameter,cornerdiameter]);
            } 
        }
    }

translate([(-rearx/2)+corneroffset,(reary/2)-corneroffset,0])
    {
        difference()
        {
            sphere(d=cornerdiameter);
            translate([-cornerdiameter/2,-cornerdiameter/2,-cornerdiameter])
            {
                cube([cornerdiameter,cornerdiameter,cornerdiameter]);
            } 
        }
    }

translate([(-rearx/2)+corneroffset,(-reary/2)+corneroffset,0])
    {
        difference()
        {
            sphere(d=cornerdiameter);
            translate([-cornerdiameter/2,-cornerdiameter/2,-cornerdiameter])
            {
                cube([cornerdiameter,cornerdiameter,cornerdiameter]);
            } 
        }
    }

translate([(rearx/2)-corneroffset,(-reary/2)+corneroffset,0])
    {
        difference()
        {
            sphere(d=cornerdiameter);
            translate([-cornerdiameter/2,-cornerdiameter/2,-cornerdiameter])
            {
                cube([cornerdiameter,cornerdiameter,cornerdiameter]);
            } 
        }
    }