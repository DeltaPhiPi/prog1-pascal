program main;
var i,n,n2: Integer;
var largest: Integer = -maxint;
var least: Integer = maxint;
begin
    write('Ingrese un valor para n: ');
    readln(n);
    write('Ingrese ', n, ' enteros: ');
    for i := 1 to n do begin
        read(n2);
        if n2 > largest then largest := n2;
        if n2 < least then least := n2;
    end;
    writeln('El mayor entero ingresado es: ', largest);
    writeln('El menor entero ingresado es: ', least);
end.