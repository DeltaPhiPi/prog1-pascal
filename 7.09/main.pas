program main;
function multiplo(m,n: integer): boolean;
begin
    multiplo := ((m mod n) = 0) or ((n mod m) = 0);
end;
var m,n: integer;
begin
    read(m);
    while m <> -1 do begin
        read(n);
        if multiplo(m,n) then writeln('Si')
        else writeln('No');
        read(m);
    end;
end.