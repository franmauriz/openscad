ri = 20;
ds = 20;

*rotate_extrude($fn=100)
    translate([ds/2 + ri , 0 , 0])
        circle(d=ds);
       
rotate_extrude($fn=100)        
    translate([ds/2 + ri, 0, 0]){   
        translate([ds/2 ,0,0])   
            circle(d=ds);
        square([ds,ds],center=true);
    }