program main;
var d1: Integer;
var num: int32 = 0;
var c: char;
var len: Integer = 0;
var flag: boolean = false;
var place: Integer = 1;
var i: Integer;
begin
    write('Ingrese un entero de n digitos: ');
    read(c);
    while ord(c) <> 10 do begin
        num := (num * 10) + ord(c) - ord('0');
        len := len + 1;
        read(c);
    end;
    write('Ingrese un entero de un digito: ');
    read(d1);
    writeln(num);
    for i := 0 to len do begin
        writeln(((num mod (place*10)) div place));
        if (((num mod place*10) - num mod place) div place) = d1 then flag := true;
        place := place * 10;
    end;
    place := 1;
    if flag then writeln('El dígito ', d1, ' no aparece en ', num)
    else begin
        for i := len to -1 do begin
            if (((num mod place*10) - (num mod place)) div place) = d1 then write('+')
            else write(' ')
        end;
    end;
end.