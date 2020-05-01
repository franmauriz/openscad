// con * ocultamos el objeto
// con la ! mostramos solo ese objeto
// con la # vemos las piezas que se restan del objeto


difference(){
    union(){
        //cuerpo
        color("blue")
        cube([167.8,30,5],center=true);
        //torre derecha
        color("green"){
            translate([167.8/2-20/2,0,13/2+5/2])
                cube([20,30,13],center=true);
            //torre izquierda
            translate([-167.8/2+20/2,0,13/2+5/2])
                cube([20,30,13],center=true);
        }
    }
    
    //taladros
    #translate([-167.8/2+10,0,0])
        cylinder(r=9/2,h=50,center=true);
    
    #translate([167.8/2-10,0,0])
        cylinder(r=9/2,h=50,center=true);
    
}