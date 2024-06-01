program main;
type TipoMes = (Enero, Febrero, Marzo, Abril, Mayo, Junio, Julio, Agosto, Septiembre, Octubre, Noviembre, Diciembre);
     TipoMesRango = 1..12;
procedure imprimirMes(mes: TipoMes);
begin
    case mes of
        Enero: writeln('Enero');
        Febrero: writeln('Febrero');
        Marzo: writeln('Marzo');
        Abril: writeln('Abril');
        Mayo: writeln('Mayo');
        Junio: writeln('Junio');
        Julio: writeln('Julio');
        Agosto: writeln('Agosto');
        Septiembre: writeln('Septiembre');
        Octubre: writeln('Octubre');
        Noviembre: writeln('Noviembre');
        Diciembre: writeln('Diciembre');
    end;
end;
procedure leerYMostrarMes();
var i: integer;
begin
    read(i);
    imprimirMes(TipoMes(i-1));
end;
begin
    leerYMostrarMes();
end.