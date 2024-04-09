program main;
var k: Integer;
    i: Integer;
begin
    write('Ingrese k: ');
    readln(k);
    writeln('Secuencia de cuadrados: ');
    for i := 1 to (k div 2) + 1 do begin
        write(sqr(i), ' ');
    end;
end.