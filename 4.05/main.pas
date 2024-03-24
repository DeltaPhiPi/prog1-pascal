program main;
var i,n: Integer;
begin
    write('Ingrese un natural: ');
    readln(n);
    for i := 1 to n do
        if n mod i = 0 then write(i,' ');
    writeln();
end.