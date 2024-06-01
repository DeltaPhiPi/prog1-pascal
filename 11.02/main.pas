program main;
const
    MAXPERSONAS = 5; {valor entero mayor estricto a 0}
    MAXCAD = 20; {valor entero mayor estricto a 0}
type
    Cadena = record
        letras : array [1..MAXCAD] of char;
        largo : 0..MAXCAD;
        end;
    Fecha = record
        dia : 1..31;
        mes : 1..12;
        anio : 0..maxint;
        end;
    Persona = record
        nombre : Cadena;
        fechNac : Fecha;
        indMadre, indPadre : 0..MAXPERSONAS;
        end;
    Familia = record
        pers : array[1..MAXPERSONAS] of Persona;
        tope : 0..MAXPERSONAS;
        end;
function cadenasIguales (cad1, cad2 : Cadena): Boolean;
var i: integer;
begin   
    cadenasIguales := false;
    i := 1;
    if cad1.largo = cad2.largo then begin
        while (i <= cad1.largo) and (cad1.letras[i] = cad2.letras[i]) do
            i := i + 1;
        cadenasIguales := i > cad1.largo;

    end;
end;
procedure desplegarCadena (cad: Cadena);
var i: integer;
begin
    for i := 1 to cad.largo do
        write(cad.letras[i]);
end;

procedure antepasados (usted : Cadena; historia : Familia);
var p,mad,pad: Persona;
    i: integer;
begin
    i := 1;
    while (i <= historia.tope) and not cadenasIguales(historia.pers[i].nombre, usted) do begin
        i := 1+i;
    end;
    if i <= historia.tope then begin
        p := historia.pers[i];
        if p.indMadre <> 0 then begin
            mad := historia.pers[p.indMadre];
            writeln('Madre: ');
            writeln('    Fecha de nacimiento: ', mad.fechNac.anio,'-', mad.fechNac.mes, '-', mad.fechNac.dia);
            write('    Nombre: ');
            desplegarCadena(mad.nombre);
            writeln();
        end
        else
            writeln('Madre no encontrada.');
        
        if p.indPadre <> 0 then begin
            pad := historia.pers[p.indPadre];
            writeln('Padre: ');
            writeln('    Fecha de nacimiento: ', pad.fechNac.anio,'-', pad.fechNac.mes, '-', pad.fechNac.dia);
            write('    Nombre: ');
            desplegarCadena(pad.nombre);
            writeln();
        end
        else
            writeln('Padre no encontrado.');
    end;
end;
var
    fam: Familia;
    cad: Cadena;
begin
    cad.largo := 8;
    cad.letras := 'John Doe';
    fam.tope := 3;
    
    { Person 1: John Doe }
    fam.pers[1].nombre.letras := 'John Doe';
    fam.pers[1].nombre.largo := 8;
    fam.pers[1].fechNac.dia := 15;
    fam.pers[1].fechNac.mes := 5;
    fam.pers[1].fechNac.anio := 1980;
    fam.pers[1].indMadre := 2;
    fam.pers[1].indPadre := 3;
    { Person 2: Jane Doe }
    fam.pers[2].nombre.letras := 'Jane Doe';
    fam.pers[2].nombre.largo := 8;
    fam.pers[2].fechNac.dia := 10;
    fam.pers[2].fechNac.mes := 7;
    fam.pers[2].fechNac.anio := 1982;
    fam.pers[2].indMadre := 0;
    fam.pers[2].indPadre := 0;

    { Person 3: Jack Doe }
    fam.pers[3].nombre.letras := 'Jack Doe';
    fam.pers[3].nombre.largo := 8;
    fam.pers[3].fechNac.dia := 20;
    fam.pers[3].fechNac.mes := 3;
    fam.pers[3].fechNac.anio := 1985;
    fam.pers[3].indMadre := 0;
    fam.pers[3].indPadre := 0;
    antepasados(cad, fam);
end.
