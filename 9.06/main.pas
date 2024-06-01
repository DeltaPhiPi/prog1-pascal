program main;
const N = 3; {valor mayor estricto a 1}
type
    Matriz = array [1..N, 1..N] of integer;
procedure transpuestaMatrizAB(a:Matriz; VAR b:Matriz);
var i,j: integer;
begin
    for i := 1 to N do begin
        for j := 1 to N do begin
            b[i, j] := a[j, i];
        end;
    end;
end;
procedure transpuestaMatrizA(var a:Matriz);
var i,j,k: integer;
begin
    for i := 1 to N do begin
        for j := i to N do begin
            k := a[i,j];
            a[i, j] := a[j, i];
            a[j, i] := k;
        end;
    end;
end;
var ma: Matriz = ((1,2,3),(4,5,6),(7,8,9));
    mb: Matriz;
    i,j: integer;
begin
    transpuestaMatrizA(ma);
    for i := 1 to N do begin
        for j := 1 to N do begin
            write(ma[i,j],' ');
        end;
        writeln();
    end;

end.