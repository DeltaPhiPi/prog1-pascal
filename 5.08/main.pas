program main;
var valor: Integer;
var c: char;
var op: char;
begin
    read(c);
    read(op);
    valor := ord(c) - ord('0');
    while c <> '=' do begin
        read(c);
        case c of
            ' ': continue;
            '0'..'9': begin
                case op of
                    '+': begin valor := valor + ord(c) - ord('0') end;
                    '-': begin valor := valor - ord(c) + ord('0') end;
                    '*': begin valor := valor * (ord(c) - ord('0')) end;
                    '/': begin valor := valor div (ord(c) - ord('0')) end;
                end;
            end;
            else op := c;
        end;
    end;
    writeln(valor);
end.