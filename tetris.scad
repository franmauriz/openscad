module pieza_cubo(x,y,z,colores){
	c1_x=x;
	c1_y=y;
	c1_z=z;
	c2_x=c1_x-1;
	c2_y=c1_y+0.5;
	c2_z=c1_z-1;
	color(colores)
	hull(){
		cube([c1_x,c1_y,c1_z]);
		translate([((c1_x-c2_x)-0.5),((c1_y-c2_y)-0.5),((c1_z-c2_z))-0.5])
		cube([c2_x,c2_y,c2_z]);
	}
	
}

module cubo_tetris(ancho,fondo,alto,colores){
	union(){
		for(c=[0:1]){
			for(f=[0:1]){
					translate([c*ancho,0,f*ancho])
						pieza_cubo(ancho,fondo,alto,colores);
			}
		}
	}
}

module barra_tetris(ancho,fondo,alto,colores){
	union(){	
		for(c=[0:3]){
				translate([c*ancho,0,0])
						pieza_cubo(ancho,fondo,alto,colores);
		}
	}
}

module t_tetris(ancho,fondo,alto,colores){
	union(){
		for(c=[0:2]){	
			for(f=[0:1]){
				if(c%2!=0){
					translate([c*ancho,0,f*ancho])
						pieza_cubo(ancho,fondo,alto,colores);
				}else if(f%2==0){
					translate([c*ancho,0,f*ancho])
						pieza_cubo(ancho,fondo,alto,colores);
				}
			}
		}
	}
}

module l_tetris(ancho,fondo,alto,colores){
	union(){
			for(c=[0:2]){	
					for(f=[0:1]){
						if(c%2!=0){
							if(f==1){
								translate([c*ancho*2,0,f*ancho])
									pieza_cubo(ancho,fondo,alto,colores);
							}else{
								translate([c*ancho,0,f*ancho])
									pieza_cubo(ancho,fondo,alto,colores);
							}					
						}else if(f%2==0){
							translate([c*ancho,0,f*ancho])
							pieza_cubo(ancho,fondo,alto,colores);
						}
					}
				}
		}
}

module z_tetris(ancho,fondo,alto,colores){
	union(){
			for(c=[0:1]){
				for(f=[0:0]){				
					translate([c*ancho,0,f*ancho])
						pieza_cubo(ancho,fondo,alto,colores);			
				}
			}
			translate([ancho,0,ancho])
			for(c=[0:1]){
				for(f=[0:0]){				
					translate([c*ancho,0,f*ancho])
						pieza_cubo(ancho,fondo,alto,colores);			
				}
			}
	}
}



translate([0,0,15])
rotate([-90,0,0]){
	cubo_tetris(15,15,15,"yellow");
	translate([40,0,0])
		barra_tetris(15,15,15,"red");
	translate([-50,0,0])
		t_tetris(15,15,15,"green");
	translate([-100,0,0])
		l_tetris(15,15,15,"purple"); 
	translate([110,0,0])
		z_tetris(15,15,15,"blue");
}
