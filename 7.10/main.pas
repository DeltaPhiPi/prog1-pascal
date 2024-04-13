program main;
procedure multiplicidadFactor(numero, factor : integer; var multiplicidad, residuo : integer);
begin
    multiplicidad := 0;
    while (numero mod factor) = 0 do begin
        numero := numero div factor;
        multiplicidad := multiplicidad + 1;
    end;
    residuo := numero;
end;
var k,i,n,j: Integer;
    mult,res: Integer;
begin
    read(k);
    while k <> -1 do begin
        write(k, ' = ');
        i := 2;
        while k <> 1 do begin
            multiplicidadFactor(k,i,mult,res);
            k := res;
            for j := 1 to mult do begin
                write(i);
                if (j <> mult) or (k <> 1) then write(' * ');
            end;
            i := i+1;
        end;
        writeln();
        read(k);
    end;
end.