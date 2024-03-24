program main;
var m,n: Integer;
var greatest: int32 = -maxint;
begin
    write('Ingrese el valor para m: ');
    readln(m);
    write('Ingrese el valor para n: ');
    readln(n);
    for m := m to n do
        if m * m - 18 * m + 5 > greatest then greatest := m * m - 18 * m + 5; 
    writeln('El valor máximo en el entorno ',m,' a ',n,' es: ', greatest);
end.