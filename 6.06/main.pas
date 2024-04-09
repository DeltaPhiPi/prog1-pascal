program main;
var publicidad: integer;
    last: integer;
    next: integer;
    ventas: Integer = 20;
begin
    write('Ingrese el gasto inicial en publicidad: ');
    readln(publicidad);
    writeln('Gastado publicidad    Ventas     Beneficio neto');
    next := 600 - publicidad - 100;
    writeln(publicidad, '                    ', ventas, '             ', next);
    repeat
        ventas := trunc(ventas * 1.5);
        publicidad := publicidad * 2;
        last := next;
        next := ventas * 30 - 100 - publicidad;
        writeln(publicidad, '                    ', ventas, '             ', next);
    until next < last;
end.