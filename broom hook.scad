width= 20;
height = 5;
length = 40;
broom= 25;

linear_extrude(height){
    square([width, length], center=true);
}
translate([0,0,height*3]){
    rotate ([90,0,0]) cylinder (h = 10, r=broom, center = true);
}