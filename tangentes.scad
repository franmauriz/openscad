r1 = 25;
r2 = 10;
th = 5;

distancia = r1 + r2 + 10;


hull(){
translate([-distancia/2,0,0])
	
	cylinder(r=r1,h=th,$fn=50,center=true);

translate([distancia/2,0,0])
	
	cylinder(r=r2,h=th,$fn=50,center=true);

}