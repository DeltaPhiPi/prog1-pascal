program main;
var x,y,n: Integer;
var greatest: Integer = -maxint;
begin
    write('Ingrese un valor para n: ');
    readln(n);
    for x := -n to n do
        for y := -n to n do
            if x*x - 9*x*y + y*y > greatest then greatest := x*x - 9*x*y + y*y;
    writeln('El valor máximo para x, y en el entorno ', -n, ' a ',n, ' es: ', greatest);
end.