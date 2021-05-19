width= 20;
nail = 5;
height= 5;
hook= 40;
$fn = 60;

        union(){
            linear_extrude(height){
            //top part
            translate([0,width,0]) {
                difference(){
                    circle(d=width);
                    translate([0,3,0]) circle(d=nail);
                }
            }
            //base
            square([width,width*2], center=true);
        }   
        //bottom part
        linear_extrude(height+3){
            translate([0,-width,0]) circle(d=width);
        }
        }
           
 
    translate([0,-width,3]){
        rotate(a=-30, v=[1,0,0]) {
           translate([0,0,0]) cylinder(h=hook,d=width/2);
        }

    }


