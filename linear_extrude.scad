

translate([0,50,0])
    linear_extrude(height=50,twist=90,$fn=90)
        square([10,10],center=true);

translate([-50,0,0])
    linear_extrude(height=50,twist=90,$fn=90)
        circle(d=10,$fn=3);
        
 translate([50,0,0])
    linear_extrude(height=50,twist=90,$fn=90)
        circle(d=10,$fn=6);
        
  translate([0,0,0])
    linear_extrude(height=60,twist=360*2,$fn=90)
    translate([15,0,0])
        circle(d=20,$fn=90);