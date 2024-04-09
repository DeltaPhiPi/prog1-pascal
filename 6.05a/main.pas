program main;
var k: Integer;
    last: Integer;
    next: Integer;
begin
    write('Ingrese k: ');
    readln(k);
    writeln('Secuencia de cuadrados: ');
    last := 0;
    next := 0;
    while next - last < k do begin
        last := next;
        next := last + 2 * trunc(sqrt(last)) + 1;
        write(next, ' ');
    end;
end.