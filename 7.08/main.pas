program main;
function esPrimo(k: integer): boolean;
var i: integer;
begin
    esPrimo := true;
    if k < 2 then esPrimo := false;
    for i := 2 to trunc(sqrt(k))+1 do begin
        if k mod i = 0 then begin 
            esPrimo := false;
        end;
    end;
end;
var m,n,k: integer;
begin
    write('Ingrese un rango: ');
    readln(m,n);
    write('Primos entre ', m,' y ', n, ': ');
    for k := m to n do begin
        if(esPrimo(k)) then write(k, ' ');
    end;
end.