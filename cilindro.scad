// cilindro basico

//moneda
translate([-50,0,0])
 cylinder(r=40/2, h=5,$fn=100);

//hexagono
cylinder(r=40/2,h=5,$fn=5);

//triangulo equilatero
translate([50,0,0])
    cylinder(r=40/2,h=5,$fn=3);