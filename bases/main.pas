program main;
var k,n,b,m,i,j: Integer;
begin
    write('Introduzca un número en base 10: ');
    readln(n);
    write('Introduzca una base entre 1 y 64: ');
    readln(b);
    if b = 1 then 
        for i := 1 to n do 
            write('1'); 
    k := n;
    m := 0;
    j := 1;
    while k > 0 do begin
        m := m + 1;
        j := j * b;
        k := k div b;
    end;
    writeln(j);
    for i := 1 to m do begin 
        j := j div b;
        k := (n div j);
        n := n - (n div j)*j;
        case k of
            0..9: write(k);
            10..36: write(chr(k + ord('a') - 10));
            37..61: write(chr(k + ord('A') - 37));
            62: write('+');
            63: write('/')
        end;
    end;
    writeln()
end.