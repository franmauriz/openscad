grosor =20;
diametro=50;
diam_eje=20;


// construccion de larueda simple apartir de los parametros
difference(){
    //base de la rueda
    cylinder(r=diametro/2,h=grosor,$fn=100);
    //taladro
    cylinder(r=diam_eje/2,h=3*grosor,$fn=80,center=true);
}