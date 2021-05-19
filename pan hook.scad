width= 20;
nail = 5;
height= 5;
hook= 40;
$fn = 100;

union() {
    linear_extrude(height){
        //top part
        translate([0, width, 0]) {
            difference() {
                circle(d=width);
                    translate([0,3,0]) circle(d=nail, $fn=10);
            }
        }
        //base
        square([width, width*2], center=true);
    }   
    //bottom part
    linear_extrude(height*2) {
        translate([0, -width+5, 0]) square([width, width+5], center=true);
    }
        
    // hook       
    translate([0, -width, 2]){
        rotate(a=-30, v=[1,0,0]) {
           translate([0,0,3]) cylinder(h=hook, r1=width/3, r2=width/6);
        }

    }
}

