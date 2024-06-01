program main;
const
    CANT_SALONES = 4; { valor entero mayor a 0 }
    MAX_PIZARRONES = 5; { valor entero mayor a 0 }
type
    TSalon = record
        asientos : Integer;
        pizarrones : 1..MAX_PIZARRONES;
        hayProyector : Boolean;
    end;
    TFacultad = array [1..CANT_SALONES] of TSalon;
procedure informeSalones (facu: TFacultad);
var i: integer;
begin
    for i := 1 to CANT_SALONES do begin
        writeln('Salon ', i, ': ');
        writeln('    Asientos: ', facu[i].asientos);
        writeln('    Pizarrones: ', facu[i].pizarrones);
        writeln('    Hay proyector?: ', facu[i].hayProyector);
    end;
end;
procedure salonMasAsientos (facu: TFacultad; var indSalon: Integer;var maxAsientos: Integer);
var i: integer;
begin
    maxAsientos := 0;
    for i := 1 to CANT_SALONES do begin
        if facu[i].asientos > maxAsientos then begin
            indSalon := i;
            maxAsientos := facu[i].asientos;
        end;
    end;
end;
function primerSalonSinAsientos (facu: TFacultad) : Integer;
var i: integer;
begin
    i := 1;
    while (i <= CANT_SALONES) and (facu[i].asientos <> 0) do
        i := i+1;
    if i > CANT_SALONES then
        primerSalonSinAsientos := 0
    else
        primerSalonSinAsientos := i;
end;
var
    facu: TFacultad;
    indSalon, maxAsientos: Integer;
    sinAsientos: Integer;
begin
    { Initialize the TFacultad array }
    facu[1].asientos := 30;
    facu[1].pizarrones := 2;
    facu[1].hayProyector := True;

    facu[2].asientos := 20;
    facu[2].pizarrones := 1;
    facu[2].hayProyector := False;

    facu[3].asientos := 0;
    facu[3].pizarrones := 3;
    facu[3].hayProyector := True;

    facu[4].asientos := 45;
    facu[4].pizarrones := 2;
    facu[4].hayProyector := False;

    { Call the procedures and functions }
    writeln('Informe de Salones:');
    informeSalones(facu);

    salonMasAsientos(facu, indSalon, maxAsientos);
    writeln('El salón con más asientos es el salón ', indSalon, ' con ', maxAsientos, ' asientos.');

    sinAsientos := primerSalonSinAsientos(facu);
    if sinAsientos = 0 then
        writeln('No hay ningún salón sin asientos.')
    else
        writeln('El primer salón sin asientos es el salón ', sinAsientos, '.');
end.
