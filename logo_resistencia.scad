ancho_cm =10;
color("red")
    scale([ancho_cm,ancho_cm,1])
        linear_extrude(height=5)
            import("resistencia.dxf");