drill =4;
h1=10;
d=10;
//i=0;
n=4;

//taladro
//cylinder(r=drill/2,h=h1,$fn=20,center=true);
translate([0,-20,0])
    for(i=[0:n-1]){
    translate([i*d,0,0]) 
        cylinder(r=drill/2,h=h1,$fn=20,center=true);
    }
