x=0;
y=1;
z=0;


// para mertos del cubo
size = [20,20,10];
radio = 2;

// coordenadas de la esquina cuadrante 1
xc = size[x]/2 - radio;
yc = size[y]/2 - radio;
zc = size[z]/2;


col_size = [2*radio,2*radio,size[z]];

// tamaño de las columnas cuadradas
vertex = [
	[xc,yc,0],
	[-xc,yc,0],
	[-xc,-yc,0],
	[xc,-yc,0]
];


module example1(){
	hull(){
		for(v = [0:1]){
			translate(vertex[v])
				cube(col_size,center =true);
				//cylinder(r=r,h=size[z],center=true,$fn=4);
			translate(vertex[2])
				cylinder(r=radio,h=size[z],center=true,$fn=50);
			translate(vertex[3])
				cylinder(r=radio,h=size[z],center=true,$fn=4);
		}
	}
}

example1();
