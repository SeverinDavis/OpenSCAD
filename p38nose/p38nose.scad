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


difference()
{



hull()
{

    //translate([-rearx/2,-reary/2,0])
    //{
        //cube([rearx,reary,ZERO]);  
    //}


    translate([0,0,noselength - (nosediameter/2)])
    {
        sphere(d=nosediameter);
    }

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


} //hull





//camera

translate([0,0,camerasink])
{
    translate([-cammid/2,-cammid/2,0])
    {
        cube([cammid,cammid,7.3]);
    };

    translate([-cambase/2,-cambase/2,-camrearextend])
    {
        cube([cambase,cambase,2.3+camrearextend]);
    };
    
    translate([(cambase/2)-camerawirelength,cambase/2,-camrearextend])
    {
        cube([camerawirelength,camerawiredepth,2.3+camrearextend]);
    };
    
    translate([-camerawirelength - (cambase/2) + camerawirelength,-camerawiredepth -(cambase/2),-camrearextend])
    {
        cube([camerawirelength,camerawiredepth,2.3+camrearextend]);
    };
    
    translate([-camerawiredepth -(cambase/2),(cambase/2)-camerawirelength,-camrearextend])
    {
        cube([camerawiredepth,camerawirelength,2.3+camrearextend]);
    };
    
    translate([(cambase/2),-camerawirelength - (cambase/2) + camerawirelength,-camrearextend])
    {
        cube([camerawiredepth,camerawirelength,2.3+camrearextend]);
    };

    cylinder(14,6.1,6.1);
    translate([0,0,14-ZERO])
    {
        cylinder(17,6.1,25);
    }
};
}




 