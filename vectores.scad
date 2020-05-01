
radio = 5;
altura = 10;
longitudx = 50;
longitudy = 40;

x = longitudx/2-radio;
y = longitudy/2-radio;

POINT = [
	[x,y,0],
	[-x,y,0],
	[-x,-y,0],
	[x,-y,0],
	[0,0,altura]
];

color("purple")
translate([0,0,5])
hull(){
	for(pos=POINT)
		translate(pos)
			cylinder(r=radio,h=altura,center=true,$fn=60);
}