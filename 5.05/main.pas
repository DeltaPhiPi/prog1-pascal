program main;
var actual,siguiente: Real;
    c: char;
begin
    readln(actual);
    read(c);
    while c <> 'X' do begin
        readln(siguiente);
        if c = 'D' then
            actual := actual + siguiente;
        if c = 'R' then
            actual := actual - siguiente;
        read(c);
    end; 
    writeln('El saldo final es: ', actual:4:2);
end.