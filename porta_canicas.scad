// PORTA CANICAS

// diametro de las canicas

dc = 16;

// tamáño de cada cuadro
d=dc +2;

// numero de canicas
N = 3;

// tamaño total de la cuadricula
size = (N-1) * d;

// tamaño total de la caja de las canicas
box_size = N * d;
box_h = dc/2 + 1;

difference(){
	//caja de canicas
	color("green")
		translate([0,0,-box_h/2])
			cube([box_size,box_size,box_h],center=true);
	//canicas
	translate([-size/2,-size/2,0])	
		for(ix=[0:N-1])
			for(iy=[0:N-1])
				translate([ix*d,iy*d,0])
					sphere(r=dc/2,$fn=90);
	

}