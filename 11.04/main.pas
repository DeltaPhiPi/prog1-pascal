program main;
type 
    RootKind = (Repeated, TwoReal, TwoComplex);
    TipoRaices = record
        case kind: RootKind of
            Repeated: (r: Real);
            TwoReal: (r1,r2: Real);
            TwoComplex: (c1,c2: record re,im: real end;);
    end;
procedure raices (a,b,c : real; var r : TipoRaices);
begin
    
end;
begin

end.