program main;
procedure corrimiento(var a,b,c: integer);
var t: integer;
begin
    t := a;
    a := c;
    c := b;
    b := t;
end;
var a,b,c: integer;
begin
    write('Ingrese tres números: ');
    readln(a,b,c);
    corrimiento(a,b,c);
    writeln('El corrimiento es: ', a,' ',b,' ',c);
end.