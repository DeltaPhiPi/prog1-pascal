program main;
var a,b,n: Integer; 
begin
    write('Ingrese en order los enteros a,b,n: ');
    readln(a,b,n);
    for a := (a div n) * n + n to (b div n) * n do begin
        if a mod n = 0 then write(a,' ');
    end;
    writeln();
end.