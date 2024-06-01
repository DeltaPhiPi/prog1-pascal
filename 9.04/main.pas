program main;

type
    ran = 1..5;
    Matrix = array[ran, ran] of integer; 
procedure cargar(var mat: Matrix);
var i,j,k: integer;
begin
    for i := 1 to 5 do begin
        for j := 1 to 5 do begin
            read(k);
            mat[i,j] := k;
        end;
    end;
end;
procedure intercambiarFilas(var mat: matrix; m,n: ran);
var temp: array[ran] of integer;
begin
    temp := mat[m];
    mat[m] := mat[n];
    mat[n] := temp;
end;
var mat: Matrix;
    m,n,i,j: integer;
begin
    writeln('Ingrese la matriz: ');
    cargar(mat);
    write('Ingrese m n: ');
    readln(m,n);
    intercambiarFilas(mat, m, n);
    for i := 1 to 5 do begin
        for j := 1 to 5 do begin
            write(mat[i,j],' ');
        end;
        writeln();
    end;
end.