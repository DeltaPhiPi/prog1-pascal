program main;
var w: Real;
    acc: Real;
    coeff: Real;
begin
    write('Ingrese un número real: ');
    readln(w);
    write('Ingrese los coeficientes: ');
    read(coeff);
    while coeff <> -1.0 do begin
        acc := acc * w + coeff;
        read(coeff);
    end;
    writeln('El valor del polinomio evaluado en ', w:4:2, ' es ', acc:4:2);
end.