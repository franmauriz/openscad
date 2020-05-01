di = 50;
ds  = 3;
d = di + 2 * ds;
h = ds + 2;

r1 = d/2;
r2 = ds/2;


*rotate_extrude($fn=100)
translate([r1/2 ,0,0])
difference(){
    square([r1,h],center=true);
    translate([r1/2,0,0])
        circle(d = ds, $fn=10);
}



rotate_extrude($fn=100)
translate([r1/2 ,0,0])
difference(){
square([r1,h],center=true);
    translate([r1/2 - r2,0,0])
polygon(points = [
    [0,0],
    [r2 + 1, r2 +1],
    [r2 +1,-r2 -1]
]);
}

color("grey")
rotate_extrude($fn=100)
translate([r1,0,0])
circle(d=ds);

