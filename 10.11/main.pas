program main;
type
    Complejo = record
    re, im : Real;
    end;
procedure sumaComplejos (c1, c2 : Complejo; VAR c3 : Complejo);
begin
    c3.re := c1.re + c2.re;
    c3.im := c1.im + c2.im;
end;
procedure multComplejos (c1, c2 : Complejo; var c3 : Complejo);
begin
    c3.re := c1.re * c2.re - c1.im * c2.im;
    c3.im := c1.re * c2.im + c2.re * c1.im;
end;
var a,b,c: Complejo;
begin
    readln(a.re, a.im);
    readln(b.re, b.im);
    sumaComplejos(a,b,c);
    writeln('Suma = ', c.re:2:2, ',', c.im:2:2);
    multComplejos(a,b,c);
    writeln('Producto = ', c.re:2:2, ',', c.im:2:2);
end.