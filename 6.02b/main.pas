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
    read(next);
    if last = letra then acc := 1;
    while next <> '.' do begin
        read(next);
        if (last = ' ') and (next = letra) then acc := acc + 1;
        last := next;
    end;
    writeln('La oración tiene ', acc, ' palabras que empiezan con ', letra);
end.