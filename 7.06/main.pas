program main;
procedure raices(a,b,c : integer; var cant : integer; var raiz1, raiz2 : real);
var vert,disc: real;
begin
    vert := -b/a/2;
    disc := sqr(b)-4*a*c;
    if disc = 0 then begin 
        raiz1 := vert;
        cant := 1;
    end
    else if disc > 0 then begin
        raiz1 := vert + sqrt(disc)/2/a;
        raiz2 := vert - sqrt(disc)/2/a;
        cant := 2;
    end
    else cant := 0
end;
var a,b,c,cant: integer;
    r1,r2: real;
begin
    write('Ingrese los coeficientes: ');
    readln(a,b,c);
    raices(a,b,c,cant,r1,r2);
    case cant of
        0 : writeln('Resultado: cant = ', cant, ', raiz1: ?, raiz2: ?');
        1 : writeln('Resultado: cant = ', cant, ', raiz1: ',r1:4:2,', raiz2: ?');
        2 : writeln('Resultado: cant = ', cant, ', raiz1: ',r1:4:2,', raiz2: ', r2:4:2);
        end;
end.