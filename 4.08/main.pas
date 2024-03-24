program main;
var c: Char;
var i,j,n: Integer;

begin
    write('Ingrese un caracter: ');
    readln(c);
    write('Ingrese un valor para n: ');
    readln(n);
    for i := 1 to n do begin
        for j := i to n do begin
            write(c);
        end;
        writeln()
    end;
end.