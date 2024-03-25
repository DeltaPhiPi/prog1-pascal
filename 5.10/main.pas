program main;
var s: Integer = 0;
    k: Integer;
    d: Integer;
begin
    write('Ingrese un entero positivo: ');
    readln(k);
    d := k;
    while k mod 2 = 0 do begin
        s := s+1;
        k := k div 2;
    end;
    writeln(d, ' = ', k, ' * 2^',s);
end.