program main;
type
    Positivo = 1..MaxInt;
    ListaInt = ^TCelda;
    TCelda = record
        info : integer;
        sig : ListaInt
    end;
function multiplos(k : Positivo; num : Positivo) : ListaInt;
var i: integer;
    temp: ListaInt;
    head: ListaInt;
begin
    multiplos := new(ListaInt);
    multiplos^.info := num;
    head := multiplos;
    for i := 2 to k+1 do begin 
        temp := new(ListaInt);
        temp^.info := num * i;
        multiplos^.sig := temp;
        multiplos := temp;
    end;
    multiplos := head;
end;
var l: ListaInt;
begin
    l := multiplos(5,7);
    while l^.sig <> nil do begin
        write(l^.info,', ');
        l := l^.sig;
    end;
end.