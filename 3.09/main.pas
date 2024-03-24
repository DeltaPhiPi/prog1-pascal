program main;
var valor: Integer;
begin
	write('Ingrese un decimal de hasta 4 cifras: ');
	readln(valor);
	if valor >= 1000 then begin
		case (valor mod 1000) of
			100..999: writeln(valor div 1000,'.',valor mod 1000);
			10..99: writeln(valor div 1000,'.0',valor mod 1000);
			0..9: writeln(valor div 1000,'.00',valor mod 1000);
		end;
	end
	else begin
		writeln(valor);
	end;
end.
