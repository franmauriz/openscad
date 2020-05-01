module pieza_mecano(drill=3,dist_taladro=10,nun_taladros=5,anchura=10,grosor=3){
    // calcular longitud de la pieza
    lx=nun_taladros*dist_taladro;

    difference(){
        //pieza
        cube([lx,anchura,grosor],center=true);
        //taladros
        translate([-lx/2+dist_taladro/2,0,0])
            for(i=[0:nun_taladros-1]){
                translate([i*dist_taladro,0,0])
                    cylinder(r=drill/2,h=grosor+5,$fn=20,center=true);
            }

    }

}

//ejemplos
//pieza_mecano();

for(i = [1:9])
    if(i%2==0){
        color("white")
        translate([0,i*20,0])
            pieza_mecano(nun_taladros=10);
    }else{
        color("green")
        translate([0,i*20,0])
            pieza_mecano(nun_taladros=10);
        }