program main;
var s: Integer = 0;
    k,d,base: Integer;
    
begin
    write('Ingrese número: ');
    readln(k);
    write('Ingrese base: ');
    readln(base);
    d := k;
    while k div base > 0 do begin
        s := s+1;
        k := k div base;
    end;
    writeln('Resultado: ', s);
end.