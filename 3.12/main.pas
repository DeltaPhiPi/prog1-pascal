program main;
var a,b,c: Real;
var cx, det, delta: Real;
begin
    write('Ingrese coeficientes de la ecuación: ');
    readln(a,b,c);
    cx := -b/2/a;
    det := 4*c*a;
    delta := sqrt(abs(sqr(b) - det))/2/a;
    if sqr(b) = det then writeln('Dos raices reales iguales: ', cx)
    else begin
        if sqr(b) > det then
        begin
            writeln('Dos raices reales diferentes: ', cx + delta, ' y ', cx - delta);
        end
        else
        begin
            writeln('Dos raices complejas diferentes: ', cx, ' (+/-) i ', delta);
        end;
    end;
end.