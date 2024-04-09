program main;
var m,n,i,j: Integer;
    flag: boolean = false;
    last: Integer = 0;
begin
    write('Ingrese dos enteros positivos: ');
    readln(m, n);
    writeln('Los primos gemelos entre ', m, ' y ', n, ' son: ');
    for i := m to n do begin
        for j := 2 to trunc(sqrt(i)+1) do begin
            if i mod j = 0 then flag := true;
        end;
        if not flag then begin
            if (last <> 0) and (i-last = 2) then writeln(last, ' y ', i);
            last := i;
        end;
        flag := false;
    end;
end.