program main;
const
    M = 2; {valor mayor estricto a 1}
    N = 3; {valor mayor estricto a 1}
    P = 2; {valor mayor estricto a 1}
type
    RangoM = 1..M;
    RangoN = 1..N;
    RangoP = 1..P;
    MatrizMN = array [RangoM, RangoN] of integer;
    MatrizNP = array [RangoN, RangoP] of integer;
    MatrizMP = array [RangoM, RangoP] of integer;
procedure multiplicarMatrices(a: MatrizMN; b: MatrizNP; var c: MatrizMP);
var i,j,v,k: integer;
begin
    for i := 1 to M do
    begin
        for j := 1 to P do
        begin
            v := 0;
            for k := 1 to N do
            begin
                v := v + a[i][k] * b[k][j];
            end;
            c[i][j] := v;
        end;
    end;
end;
var a: MatrizMN = ((1,2,3),(4,5,6));
b: MatrizNP = ((1,2),(3,4),(5,6));
c: MatrizMP;
var i,j: integer;
begin
    multiplicarMatrices(a,b,c);
    for i := 1 to M do
    begin
        for j := 1 to P do
        begin
            write(c[i][j],' ');
        end;
        writeln();
    end;
end.
