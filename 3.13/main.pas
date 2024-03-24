program main;
var c1,c2,c3: char;
var dec: integer;
begin
    write('Ingrese un número positivo hexadecimal: ');
    readln(c1,c2,c3);
    case c1 of 
        '0'..'9' : dec := (ord(c1) - ord('0')) * 256;
        'a'..'f', 'A'..'F' : dec := ((ord(c1) - ord('a')) mod 16 + 10) * 256
    end;
    case c2 of 
        '0'..'9' : dec := dec + (ord(c2) - ord('0')) * 16;
        'a'..'f', 'A'..'F' : dec := dec + ((ord(c2) - ord('a')) mod 16 + 10) * 16
    end;
    case c3 of 
        '0'..'9' : dec := dec + ord(c3) - ord('0');
        'a'..'f', 'A'..'F' : dec := dec + ((ord(c3) - ord('a')) mod 16 + 10)
    end;
    writeln('Hexadecimal ',c1,c2,c3, ' = decimal ', dec);
end.