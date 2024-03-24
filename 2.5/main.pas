program Char_Ord;
var a, b, c, d : char;
var r1, r2, resu : real;
begin
    read (a, b, c, d);
    r1 := ord(a) - ord('0');
    r2 := (ord(c) - ord('0')) * 10 + (ord(d) - ord('0'));
    resu := r1 + r2 / 100;
    writeln ('Valor ingresado: ', resu:4:2)
end.