
size = [20,20,10];
radio = 2;

module pieza(){
	cube(size,center = true);

	translate([10,10,0])
		cube(size,center = true);

}

minkowski(){
	pieza();
	cylinder(r=radio,$fn=20);
}


translate([0,40,0])
	color("red")
		minkowski(){
			pieza();
			sphere(r=radio,$fn=20);
		}