program main;
var sum: Real = 0;
    sum2: Real = 0;
    x: Real;
var n: Integer = 0;
begin
    read(x);
    while x <> -1.0 do begin
        sum := sum + x;
        sum2 := sum2 + x * x;
        n := n + 1;
        read(x);
    end;
    writeln(sum);
    writeln(sum2);
    writeln(n);
    writeln('La desviación estándar es: ', sqrt(sum2/n - sqr(sum/n)));
end.