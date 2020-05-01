//apilando objetos


cuboBase = [30,30,10];
cuboPilar = [10,10,10];

x=0;
y=1;
z=2;

posicionPilar = [0,0,(cuboPilar[z]/2)+(cuboBase[z]/2)];


color("red") union(){
cube(cuboBase,center=true);



translate(posicionPilar)
cube(cuboPilar,center=true);
}