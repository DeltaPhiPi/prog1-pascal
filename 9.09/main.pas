program main;
const N = 4;
type MatrizN = array[1..N, 1..N] of integer;
     ArregloUni = array[1..((N*N+(N)) div 2)] of integer;

function conversion(i,j: integer): integer;
begin
conversion := N*(N+1) div 2 - (N-i+1)*(N-1+2) div 2 + j - i + 1;
end;
procedure matriz2arreglo(a:MatrizN; VAR arreglo:ArregloUni);
var i,j: integer;                                                                                                            
begin
    for i := 1 to N do begin
        for j := i to N do begin
            arreglo[conversion(i, j)] := a[i, j];
        end;
    end;
end;
procedure arreglo2matriz(arreglo:ArregloUni; VAR a:MatrizN);
var i,j: integer;
begin
    for j := 1 to N do begin
        for i := 1 to j do begin
            a[i, j] := arreglo[conversion(i, j)];
        end;
    end;
end;
function obtSim(a:ArregloUni; i,j:integer) : integer;
begin
    obtSim := a[conversion(i,j)];
end;
var i,j,k: integer;
    arr: ArregloUni;
begin
    for i := 1 to N do begin
        for j := i to N do begin
            writeln('Ingrese valor para ', i, ' ', j,': ');
            readln(k);
            arr[conversion(i,j)] := k;
        end;
    end;
    // for i := 1 to (N*N+N) div 2 do begin
    //     write(arr[i], ', ');
    // end;
    writeln();
    read(i,j);
    while (i <> -1) and (j <> -1) do begin
        writeln('Coordenadas ', i, ' ', j);
        writeln('Valor almacenado: ', obtSim(arr, i,j));
        read(i,j);
    end;
end.