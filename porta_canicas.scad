// PORTA CANICAS

d = 60;

r=20;

N = 6;

size = N * d;
difference(){

color("green")
translate([0,0,-r])
cube([N*d+r*3,N*d+r*3,r*2],center=true);

#translate([-size/2,-size/2,0])	
	for(ix=[0:N])
		for(iy=[0:N])
			translate([ix*d,iy*d,0])
				sphere(r=r,$fn=16);
	

}