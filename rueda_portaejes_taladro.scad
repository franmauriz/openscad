// rueda con portaejes y taladro para el eje
difference(){
    
union(){
    //base de la rueda
    cylinder(r=50/2,h=5,$fn=100);
    //portaejes
    cylinder(r=20/2,h=20,$fn=80);
}
    //taladro
    cylinder(r=8/2,h=80,$fn=30,center=true);
}