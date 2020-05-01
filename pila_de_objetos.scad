//pila de objetos
cuboBase = [30,30,5];
cuboPilar1 = [20,20,10];
cuboPilar2 =[15,15,5];
cuboPilar3 =[5,5,15];

x=0;
y=1;
z=2;


posicionPilar1 = [0,0,(cuboPilar1[z]/2)+(cuboBase[z]/2)];
posicionPilar2 = [0,0,(cuboPilar2[z]/2)+(cuboBase[z]/2)+(cuboPilar1[z])];
posicionPilar3 = [0,0,(cuboPilar3[z]/2)+(cuboBase[z]/2)+(cuboPilar1[z])+(cuboPilar2[z])];



cube(cuboBase,center=true);



translate(posicionPilar1)
cube(cuboPilar1,center=true);

translate(posicionPilar2)
cube(cuboPilar2,center=true);

translate(posicionPilar3)
cube(cuboPilar3,center=true);

