program main;
function dist2(a,b,c,d: real): real;
begin
    dist2 := sqrt(sqr(a-c) + sqr(b-d));
end;
var a,b,c,d: real;
begin
    write('Ingrese las coordenadas del primer punto: ');
    readln(a,b);
    write('Ingrese las coordenadas del segundo punto: ');
    readln(c,d);
    writeln('La distancia entre los puntos es: ', dist2(a,b,c,d):4:2)
end.