//Esferas

d = 30;

r = 2;

N = 10;

size = N * d;

//rejilla
translate([-size/2,-size/2,0])
color("yellow")
for(ix=[0:N]) //eje x
	for(iy=[0:N]) // eje y
		translate([ix * d, iy * d,0])
			sphere(r=r,$fn=15);


//cubo
translate([2 * d , 2 * d , 0])
	color("red")
		cube([20,20,20],center=true);