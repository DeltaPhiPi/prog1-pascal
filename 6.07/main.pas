program main;
var m,n,i,j: Integer;
begin
    write('Ingrese m: ');
    read(m);
    write('Ingrese n: ');
    read(n);
    for i := m to n do begin
        writeln('>>> Tabla ', i, ' <<<');
        for j := 1 to 10 do begin
            writeln(j,'*',i,' = ',j*i);
        end;
    end;
end.