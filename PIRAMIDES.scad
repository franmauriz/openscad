
distancia = 60;

translate([-2*distancia/2,-distancia/2,0]){
		//CILINDRO NORMAL
		translate([0,0,0])
			color("gold")
				cylinder(r=30/2,h=10,center=true,$fn=100);

		// CONO TRUNCADO
		translate([distancia,0,0])
			color("green")
				cylinder(r1=20,r2=10,h=20,$fn=100);

		//CONO
		translate([distancia*2,0,0])
			color("red")
				cylinder(r1=20,r2=0,h=20,$fn=100);

		//PIRAMIDE
		translate([0,distancia,0])
			color("blue")
				cylinder(r1=20,r2=0,h=20,$fn=4);


		//HEXAGONO
		translate([distancia,distancia,0])
			color("orange")
				cylinder(r1=20,r2=20,h=20,$fn=6);

		//TETAEDRO
		translate([distancia * 2,distancia,0])
			color("purple")
				cylinder(r1=20,r2=0,h=20,$fn=3);
}