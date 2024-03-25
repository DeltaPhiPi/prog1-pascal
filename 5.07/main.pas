program main;
var p: int64;
var s: int64 = 0;
var d: int64;
var m: int64;
var n,i: int64;
var flag: boolean = true;
begin
    write('Ingrese un entero positivo: ');
    readln(p);
    for i := 2 to trunc(sqrt(p))+1 do begin
        if p mod i = 0 then begin 
            flag := false; 
            break; 
        end;
    end;
    if flag then writeln('Es primo')
    else writeln('No es primo')
end.