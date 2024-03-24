program main;
var peso: Real;
begin
    write('Ingrese peso del paquete: ');
    readln(peso);
    writeln('Peso Coste');
    if frac(peso) <> 0.0 then
        writeln(peso:2:2, ' $', 21+(trunc(peso)+1)*56)
    else
        writeln(peso:2:2, ' $', 21+(trunc(peso))*56)
end.