program main;
var n: Integer;
    i: Integer = 0;
    k: Integer;
    j: Integer;
    flag: boolean = false;
begin
    write('Ingrese n: ');
    readln(n);
    k := 2;
    while i <> n do begin
        for j := 2 to k-1 do begin
           if (k mod j) = 0 then flag := true;
        end;
        if not flag then begin 
            i := i + 1;
            writeln(i, ': Primo: ', k, ' Raiz cuadrada: ', sqrt(k):4:2);
        end;
        flag := false;
        k := k+1;
    end;
end.