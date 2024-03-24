program main;
var x,x2,n: Integer;
begin
    write('Ingrese un valor para x: ');
    readln(x);
    write('Ingrese un valor para n: ');
    readln(n);
    x2 := x;
    for n := n downto 2 do
        x := x * x2;
    writeln('El resultado de ', x2, ' elevado a la ',n, ' es: ', x);
end.