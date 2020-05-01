use <write/write.scad>

grosor=10;
size=20;

color("red")
translate([0,size*1.5,0])
    write("HOLA",t=grosor,h=size,center=true);

color("green")
write("comvid-19",t=grosor,h=size,center=true);