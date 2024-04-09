program main;
var m,n,i,j: Integer;
    flag: boolean = false;
begin
    write('Ingrese dos enteros positivos: ');
    readln(m, n);
    writeln('Los números primos entre ', m, ' y ', n, ' son: ');
    for i := m to n do begin
        for j := 2 to trunc(sqrt(i)+1) do begin
            if i mod j = 0 then flag := true;
        end;
        if not flag then write(i,' ');
        flag := false;
    end;
end.