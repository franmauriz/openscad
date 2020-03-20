module rcylinder(r=4, h=20,center=false,$fn=30){

}

//parametros para los ejemplos

r=4;
h=30;
center=false;
$fn=30;

// ejemplos

//cilindro normal

translate([-3*r,0,0])
	cylinder(r=r,h=h,center=center,$fn=$fn);

//cilindro con tapa superior redondeada

rcylinder(r=r,h=h,both=false,center=center,$fn=$fn);

// cilindro con ambas tapas redondeadas

translate([3*r,0,0])
	rcylinder(r=r,h=h,both=true,center=center,$fn=$fn);