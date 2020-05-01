module rueda_simple(grosor=5,diametro=20,diam_eje=8){

    // construccion de larueda simple apartir de los parametros
    difference(){
        //base de la rueda
        cylinder(r=diametro/2,h=grosor,$fn=100);
        //taladro
        cylinder(r=diam_eje/2,h=3*grosor,$fn=80,center=true);
    }

}

// ejeplos de uso del modulo rueda_smple

rueda_simple(diametro=50,grosor=5,diam_eje=8);

translate([60,0,0]) rueda_simple(diametro=50,grosor=5,diam_eje=8);

translate([-60,0,0]) rueda_simple();

translate([0,50,0]) rueda_simple(grosor=20,diametro=20);