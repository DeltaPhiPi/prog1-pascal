program main;
var k: Integer;
var greatest: Integer = -maxint;
var least: Integer = maxint;
begin
    read(k);
    while k <> -1 do begin
        if k < least then least := k;
        if k > greatest then greatest := k;
        read(k);
    end;
    writeln('El máximo es ', greatest, ' y el mínimo ', least);
end.