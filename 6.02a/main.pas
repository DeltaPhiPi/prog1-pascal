program main;
var letra: char;
    next: char;
    last: char;
    acc: Integer = 0;
begin
    write('Letra: ');
    readln(letra);
    write('Oración: ');
    read(last);
    while next <> '.' do begin
        read(next);
        if (next = ' ') and (last = letra) then acc := acc + 1;
        last := next;
    end;
    writeln('La oración tiene ', acc, ' palabras que terminan con ', letra);
end.