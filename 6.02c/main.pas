program main;
var letra: char;
    next: char;
    last: char;
    acc: Integer = 0;
    count: Integer = 0;
begin
    write('Letra: ');
    readln(letra);
    write('Oración: ');
    read(last);
    if last = letra then count := 1;
    while last <> '.' do begin
        read(next);
        if next = letra then count := count + 1;
        if ((next = ' ') or (next = '.')) and (count = 1) then begin
            acc := acc + 1;
            count := 0;
        end;
        last := next;
    end;
    writeln('La oración tiene ', acc, ' que contienen ', letra, ' una sola vez');
end.