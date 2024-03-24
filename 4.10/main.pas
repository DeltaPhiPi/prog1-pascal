program main;
var m,k: int32;
begin
    write('Ingrese un valor para k: ');
    readln(k);
    for m := 1 to k-1 do
        k := k * m;
    writeln('k! es: ', k);
end.