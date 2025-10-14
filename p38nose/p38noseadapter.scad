$fn=100;

rearx = 50;
reary = 42.5;

innercutoutx = rearx - 8;
innercutouty = reary - 8;

adaptrearx =50;
adaptreary= 45;

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


//INDEXRODS
indexroddiameter = 2.6;
indexoffset = 1;
indexroddiameterouter = indexroddiameter + 1;


difference()
{
difference()
{
 hull(){ 
   
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
    
//upper end    
translate([0,0, 28])
   { 
rotate([0,180,0])
{
   translate([0,5,0])
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
    
    translate([0,-3,0])
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
  
 translate([(adaptrearx/2)-corneroffset,(adaptreary/2)-corneroffset,0])
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

translate([(-adaptrearx/2)+corneroffset,(adaptreary/2)-corneroffset,0])
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

translate([(-adaptrearx/2)+corneroffset,(-adaptreary/2)+corneroffset,0])
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

translate([(adaptrearx/2)-corneroffset,(-adaptreary/2)+corneroffset,0])
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
}
}
}//hull
translate([-innercutoutx/2,-innercutouty/2,-ZERO])
{
    cube([innercutoutx,innercutouty,stretchdiameter]);
}
}//difference


{
//INDEXROD1
 translate([0,21,-ZERO])
{
   translate([-.5,0,0])
{
    cylinder(10, indexroddiameter/2, indexroddiameter/2);
}
translate([.5,0,0])
{
    cylinder(10, indexroddiameter/2, indexroddiameter/2);
}
}

//INDEXROD2
 translate([0,-20,-ZERO])
{
   translate([-.5,0,0])
{
    cylinder(10, indexroddiameter/2, indexroddiameter/2);
}
translate([.5,0,0])
{
    cylinder(10, indexroddiameter/2, indexroddiameter/2);
}
}
}
}



