X=0;
Y=1;
Z=2;

r = 4;
A = [30,30,50];

a =(A - [2*r,2*r,2*r])/2;

x=a[X];
y=a[Y];
z=a[Z];

vertice =[
	[x,y,z],
	[-x,y,z],
	[-x,-y,z],
	[x,-y,z],

	[x,y,-z],
	[-x,y,-z],
	[-x,-y,-z],
	[x,-y,-z]
];

%cube(A,center=true);

hull(){
	for(pos = vertice)
		translate(pos)
			sphere(r = r,$fn = 20);
}
