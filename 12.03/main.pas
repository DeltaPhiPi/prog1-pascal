program main;
type
    Positivo = 1..MaxInt;
    ListaInt = ^TCelda;
    TCelda = record
        info : integer;
        sig : ListaInt
    end;
function suma(l : ListaInt) : integer;
begin
    suma := l^.info;
    while (l^.sig <> nil) do begin
        l := l^.sig;
        suma := suma + l^.info;
    end;
end;
function minimo(l : ListaInt) : integer;
begin
    minimo := l^.info;
    while (l^.sig <> nil) do begin
        l := l^.sig;
        if l^.info < minimo then
            minimo := l^.info;
    end;
end;
function producto(l : ListaInt) : integer;
begin
    producto := l^.info;
    while (l^.sig <> nil) do begin
        l := l^.sig;
        producto := producto * l^.info;
    end;
end;
function cuantosPares(l : ListaInt) : integer;
begin
    cuantosPares := 0;
    while (l^.sig <> nil) do begin
        l := l^.sig;
        if (l^.info mod 2) = 0 then
            cuantosPares := cuantosPares + 1;
    end;
end;
function posicion(valor : integer; l : ListaInt) : integer;
begin
    posicion := 1;
    while (l^.sig <> nil) and (l^.info <> valor) do begin
        if l^.sig = nil then
            posicion := -1
        else begin
            l := l^.sig;
            posicion := posicion + 1;    
        end;
    end;
end;
type
    PosibleElem = record case ok : boolean of
        true : (elem : integer);
        false : ()
    end;
procedure elemEnPos(pos : Positivo; l : ListaInt; var resultado : PosibleElem);
begin
    resultado.ok := false;
    while (l^.sig <> nil) and (pos > 1) do begin
        l := l^.sig;
        pos := pos - 1;
    end;
    if pos = 1 then begin
        resultado.ok := true;
        resultado.elem := l^.info;
    end;
end;
function ultimo(l : ListaInt) : integer;
begin
    while l^.sig <> nil do
        l := l^.sig;
    ultimo := l^.info;
end;
function ordenada(l : ListaInt) : boolean;
var last: integer;
begin
    ordenada := true;
    last := l^.info;
    while (l^.sig <> NIL) and ordenada do begin
        l := l^.sig;
        if l^.info <= last then
            ordenada := false;
    end;
        
end;
var
  head, temp, newNode: ListaInt; // Pointers to handle the linked list
  i: integer; // Loop counter
  el: PosibleElem;
begin
  head := nil; // Initialize the head of the list to nil
  
  // Create a list with elements 1 to 5
  for i := 1 to 5 do
  begin
    // Create a new node
    new(newNode);
    newNode^.info := i*i-3*i;
    newNode^.sig := nil;
    
    // If the list is empty, set the head to the new node
    if head = nil then
      head := newNode
    else
    begin
      // Find the last node in the list
      temp := head;
      while temp^.sig <> nil do
        temp := temp^.sig;
      // Append the new node to the list
      temp^.sig := newNode;
    end;
  end;
  
  // Print the elements in the list
//   elemEnPos(1, head, el);
//   writeln(el.ok, el.elem);
    writeln(ordenada(head));
end.
