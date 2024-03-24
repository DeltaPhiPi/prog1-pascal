program main;
var i,n,k,j: Integer;
begin
    write('Ingrese un valor para n: ');
    readln(n);
    write('Ingrese n enteros: ');
    for i := 1 to n do begin
        read(k);
        for j := 1 to k do
            write('*');
        writeln();
    end;
end.