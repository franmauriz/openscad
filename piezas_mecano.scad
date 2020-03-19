use </home/ptl28sev000/App/openscad/lego.scad>


pieza_mecano();

translate([0,15,0])
    pieza_mecano(nun_taladros=4);

translate([0,30,0])
    pieza_mecano(nun_taladros=3);
    
translate([0,45,0])
    pieza_mecano(nun_taladros=2);

translate([0,60,0])
    pieza_mecano(nun_taladros=1);