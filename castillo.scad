//cubo de castillo
ancho_pared=200;
borde_pared=10;
alto_pared=80;
diametro_torre=13;
alto_torre=90;

altura_cono_torre=50;
radio_cono_torre=10;

centro_diametro_castillo=60;
centro_altura_castillo=100;
centro_radio_cono_torre=40;
centro_altura_cono_torre=80;

grosor_puerta=10;
alto_puerta=100;


//pared del castillo
difference(){
cube([ancho_pared,ancho_pared,alto_pared],center=true);
    translate([0,0,1])
        cube([ancho_pared-borde_pared,ancho_pared-borde_pared,alto_pared],center=true);
    
    // puerta
rotate([90,0,0])
    translate([0,-(alto_pared/2),(ancho_pared/2)-grosor_puerta])
color("green")
    cylinder(d=alto_puerta,h=20);
}

//torres
translate([ancho_pared/2,ancho_pared/2,-alto_pared/2])
cylinder(d=diametro_torre,h=alto_torre,$fn=100);
color("red")
    translate([ancho_pared/2,ancho_pared/2,(alto_torre/2)])
        cylinder(r1=radio_cono_torre,r2=0,h=altura_cono_torre,,$fn=100);


translate([-(ancho_pared/2),(ancho_pared/2),-alto_pared/2])
cylinder(d=diametro_torre,h=alto_torre,$fn=100);
color("red")
    translate([-(ancho_pared/2),ancho_pared/2,(alto_torre/2)])
        cylinder(r1=radio_cono_torre,r2=0,h=altura_cono_torre,$fn=100);

translate([-(ancho_pared/2),-(ancho_pared/2),-alto_pared/2])
cylinder(d=diametro_torre,h=alto_torre,$fn=100);
color("red")
    translate([-(ancho_pared/2),-(ancho_pared/2),(alto_torre/2)])
        cylinder(r1=radio_cono_torre,r2=0,h=altura_cono_torre,$fn=100);


translate([(ancho_pared/2),-(ancho_pared/2),-alto_pared/2])
cylinder(d=diametro_torre,h=alto_torre,$fn=100);
color("red")
    translate([ancho_pared/2,-(ancho_pared/2),(alto_torre/2)])
        cylinder(r1=radio_cono_torre,r2=0,h=altura_cono_torre,$fn=100);

//centro castillo
translate([0,0,-(alto_pared/2)])
cylinder(d=centro_diametro_castillo,h=centro_altura_castillo,$fn=100);
    color("red")
        translate([0,0,(centro_altura_castillo)-(alto_pared/2)])
        cylinder(r1=centro_radio_cono_torre,r2=0,h=centro_altura_cono_torre,$fn=100);
        



