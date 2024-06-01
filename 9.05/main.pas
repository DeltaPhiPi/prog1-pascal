program main;
const M = 3; {valor mayor estricto a 1}
const N = 11; {valor mayor estricto a M}
type
    CadenaM = array [1..M] of char;
    CadenaN = array [1..N] of char;
function indiceSubCadena(c1: CadenaM; c2: CadenaN): integer;
var i,j: integer;
begin
    i := 0;
    j := 1;
    repeat
        i := i + 1;
        j := 1;
        while (j <= M) and (c1[j] = c2[i+j-1]) do
        begin
            j := j + 1;
        end;
    until (i >= N) or (j >= M);
    if j >= M then
        indiceSubCadena := i
    else
        indiceSubCadena := 0
end;
procedure leerCadenaM(var cadm: CadenaM);
var i: integer;
begin
    for i := 1 to M do begin
        read(cadm[i]);
    end;
    readln();
end;
procedure leerCadenaN(var cadn: CadenaN);
var i: integer;
begin
    for i := 1 to N do begin
        read(cadn[i]);
    end;
    readln();
end;
var c1: CadenaM = '123';
    c2: CadenaN = '00012311111';
begin
    leerCadenaM(c1);
    leerCadenaN(c2);

    writeln(indiceSubCadena(c1,c2));
end.