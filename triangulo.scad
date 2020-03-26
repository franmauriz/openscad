
difference(){      
        translate([0,0,12])
                linear_extrude(height=10,$fn=100)
                   import("triangulo.dxf",layer="0");            
        translate([0,0,13])
                linear_extrude(height=11,$fn=100)
                   import("triangulo.dxf",layer="capa 3");
}


translate([0,0,1])
            linear_extrude(height=11,$fn=100)
                import("triangulo.dxf",layer="capa 1");

           
linear_extrude(height=1,$fn=100)
                import("triangulo.dxf",layer="capa 2");

