program main;
var f1, f2: Integer;
var h1, m1: Integer;
var dias: Integer;
begin
    read(f1, f2);
    h1 := (f1 - f1 mod 100) div 100 + (f2 - f2 mod 100) div 100;
    m1 := f1 mod 100+ f2 mod 100;
    h1 := h1 + m1 div 60;
    m1 := m1 mod 60;
    dias := h1 div 24;
    h1 := h1 mod 24;    
    write(dias, ' ');
    if h1 < 10 then write(0);
    write(h1);
    if m1 < 10 then write(0);
    writeln(m1);
end.

