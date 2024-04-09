program main;
var m,n, t: Integer;
begin
    write('Ingrese m y n: ');
    readln(m,n);
    repeat
        t := m;
        m := n;
        n := t mod n;
    until n = 0;
    writeln('El MCD es: ', m);
end.