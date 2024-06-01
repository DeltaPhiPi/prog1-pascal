program main;
const
    CANT_LETRAS = 10; { valor entero mayor a 0 }
    CANT_ARTICULOS = 5; { valor entero mayor a 0 }
type
    TIdioma = (es, en, pt);
    TFecha = record
        dia : 1..31;
        mes : 1..12;
        anio : 2001..9999 (* La wikipedia comienza en 2001 *)
    end;
    TNombre = array [1..CANT_LETRAS] of char;
    TArticulo = record
        nombre : TNombre;
        idioma : TIdioma;
        visitas : Integer;
        ultima_act : TFecha;
    end;
    Wikipedia = array [1..CANT_ARTICULOS] OF TArticulo;
function esPosterior (f1, f2: TFecha) : boolean;
begin
    esPosterior :=
        (f1.anio > f2.anio) or 
        (f1.anio = f2.anio) and (
            (f1.mes > f2.mes) or 
            (f1.mes = f2.mes) and (f1.dia > f2.dia)
        )
end;
procedure articuloMasReciente (wiki: Wikipedia; idioma: TIdioma; VAR art: TArticulo);
var i: integer;
    flag: boolean = true;
begin
    for i := 1 to CANT_ARTICULOS do begin
        if (wiki[i].idioma = idioma) and ((esPosterior(wiki[i].ultima_act, art.ultima_act)) or flag) then begin
            art := wiki[i];
            flag := false;
        end;
    end;
end;
procedure imprimirArticulosMasRecientes (wiki: Wikipedia);
var a1,a2,a3: TArticulo;
begin
    articuloMasReciente(wiki, es, a1);
    articuloMasReciente(wiki, en, a2);
    articuloMasReciente(wiki, pt, a3);
    writeln('Artículo en español más reciente: ', a1.nombre);
    writeln('Artículo en inglés más reciente: ', a2.nombre);
    writeln('Artículo en portugués más reciente: ', a3.nombre);
end;
// onwards, code was generated by GPT
var
    wiki: Wikipedia;
    i: integer;
begin
    { Initialize the Wikipedia articles array }
    for i := 1 to CANT_ARTICULOS do begin
        if i = 1 then begin
            wiki[i].nombre := 'Articulo1 ';
            wiki[i].idioma := es;
            wiki[i].visitas := 100;
            wiki[i].ultima_act.dia := 10;
            wiki[i].ultima_act.mes := 6;
            wiki[i].ultima_act.anio := 2022;
        end
        else if i = 2 then begin
            wiki[i].nombre := 'Articulo2 ';
            wiki[i].idioma := en;
            wiki[i].visitas := 200;
            wiki[i].ultima_act.dia := 5;
            wiki[i].ultima_act.mes := 8;
            wiki[i].ultima_act.anio := 2023;
        end
        else if i = 3 then begin
            wiki[i].nombre := 'Articulo3 ';
            wiki[i].idioma := pt;
            wiki[i].visitas := 150;
            wiki[i].ultima_act.dia := 15;
            wiki[i].ultima_act.mes := 7;
            wiki[i].ultima_act.anio := 2021;
        end
        else if i = 4 then begin
            wiki[i].nombre := 'Articulo4 ';
            wiki[i].idioma := es;
            wiki[i].visitas := 250;
            wiki[i].ultima_act.dia := 20;
            wiki[i].ultima_act.mes := 4;
            wiki[i].ultima_act.anio := 2024;
        end
        else if i = 5 then begin
            wiki[i].nombre := 'Articulo5 ';
            wiki[i].idioma := en;
            wiki[i].visitas := 300;
            wiki[i].ultima_act.dia := 1;
            wiki[i].ultima_act.mes := 1;
            wiki[i].ultima_act.anio := 2222;
        end;
    end;

    imprimirArticulosMasRecientes(wiki);
end.