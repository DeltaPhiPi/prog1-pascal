program main;
const
    MAX = 20; {valor mayor estricto a 0}
type
    Cadena = record
    letras : array [1..MAX] of char;
    largo : 0..MAX;
end;
procedure cargarCadena(var cad: Cadena);
var c: char;
begin
    read(c);
    while (c <> '.') and (cad.largo < MAX)  do begin
        cad.largo := cad.largo+1;
        cad.letras[cad.largo] := c;
        read(c);
    end;
end;
function contarOcurrencias(frase: Cadena; letra: char): integer;
var i: integer;
begin
    contarOcurrencias := 0;
    for i := 1 to frase.largo do begin
        if frase.letras[i] = letra then
        contarOcurrencias := contarOcurrencias + 1;
    end;
end;
function isVowel(c: char): boolean;
begin
    case c of
        'a','e','i','o','u': isVowel := true;
        else isVowel := false;
    end;
end;
function existeVocal(frase: Cadena): boolean;
var i: integer = 1;
begin
    while (i <= frase.largo) and not (isVowel(frase.letras[i])) do
        i := i+1;
    existeVocal := i <= frase.largo;
end;
var c: cadena;
begin
    cargarCadena(c);
    
    writeln(existeVocal(c));
end.