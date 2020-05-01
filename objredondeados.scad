// objetos redondeados

radio = 5;
altura = 10;
longitudx = 50;
longitudy = 40;

x = longitudx/2-radio;
y = longitudy/2-radio;


Punto1 = [x,y,0];
Punto2 = [-x,y,0];
Punto3 = [-x,-y,0];
Punto4 = [x,-y,0];

hull(){
	translate(Punto1)
		cylinder(r=radio,h=altura,center=true,$fn=20);

	translate(Punto2)
		cylinder(r=radio,h=altura,center=true,$fn=20);

	translate(Punto3)
		cylinder(r=radio,h=altura,center=true,$fn=20);

	translate(Punto4)
		cylinder(r=radio,h=altura,center=true,$fn=20);
}