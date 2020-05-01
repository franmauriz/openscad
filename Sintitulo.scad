use </home/ptl28sev000/App/openscad/rueda_simple_m.scad>

// chasis de coche
translate([30,0,0])
cube([100,60,10],center=true);

// rueda delantera izquierda
translate([0,-30,0])
    rotate([90,0,0])
rueda_simple(diam_eje=4,grosor=5,diametro=50/2);
//rueda trasera izquierda
translate([60,-30,0])
    rotate([90,0,0])
rueda_simple(diam_eje=4,grosor=10,diametro=30);

//espejo de las ruedas izquierda para hacer las
//ruedas derechas
mirror([0,1,0]){
translate([0,-30,0])
    rotate([90,0,0])
rueda_simple(diam_eje=4,grosor=5,diametro=50/2);

translate([60,-30,0])
    rotate([90,0,0])
rueda_simple(diam_eje=4,grosor=10,diametro=30);
}