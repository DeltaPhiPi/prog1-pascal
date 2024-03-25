program main;
var c,c2: char;
begin
    write('Ingrese un texto: ');
    read(c);
    write('Las consonantes y vocales duplicadas son: ');
    while c <> '$' do begin
        read(c2);
        if c2 = c then write(c2,c2,' ');
        c := c2;
    end;
    writeln()
end.