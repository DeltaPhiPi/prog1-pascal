program main;
const
    N = 5; {valor mayor estricto a 1}
type
    CadenaN = array [1..N] of integer;
function cantidadMayores(arr: CadenaN; num: integer): integer;
var i: integer;
begin
    cantidadMayores := 0;
    for i := 1 to N do begin
        if arr[i] > num then
            cantidadMayores := cantidadMayores + 1;
    end;
end;
function ordenado(arr: CadenaN): boolean;
var i: integer;
begin
    i := 1;
    while (i < N) and (arr[i] < arr[i+1]) do
        i := i + 1;
    ordenado := i >= N;
end;
procedure maxValorPos(cadn:CadenaN; VAR valor, pos:integer);
var i: integer;
begin
    valor := -maxint-1;
    for i := 1 to N do begin
        if cadn[i] > valor then begin
            valor := cadn[i];
            pos := i;
        end;
    end;
end;
var arr: CadenaN = (1,6,3,4,5);
    i: integer;
    k: integer;
begin
    maxValorPos(arr,k,i);
    writeln(k,i);
end.