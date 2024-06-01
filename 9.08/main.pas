program main;
const
    N = 5; {valor mayor estricto a 1}
type
    Digito = '0'..'9';
    Digitos = array [1..N] of Digito;
procedure leerArreglo(VAR a:Digitos);
var i: longint;
begin
    for i := 1 to N do begin
        read(a[i]);
    end;
end;
function conversion(a:Digitos) : longint;
var i: longint;
begin
    conversion := 0;
    for i := 1 to N do begin
        conversion := 10*conversion + ord(a[i]) - ord('0');
    end;
end;
var arr: Digitos;
begin
    leerArreglo(arr);
    writeln(conversion(arr));
end.