program main;
var s,i,k: Integer;
begin
    read(k);
    while k <> -1 do begin
        s := s + k;
        i := i + 1;
        read(k);
    end;
    writeln('La suma es ', s, ' y el promedio ', s/i);
end.