program main;
type
    Positivo = 1..MaxInt;
    ListaInt = ^TCelda;
    TCelda = record
        info : integer;
        sig : ListaInt
    end;
procedure insertarTercero(elem : integer; var l : ListaInt);
var temp: ListaInt;
    original: ListaInt;
begin
    original := l;
    temp := new(ListaInt);
    l := l^.sig;
    temp^.sig := l^.sig;
    temp^.info := elem;
    l^.sig := temp;
    l := original;
end;
procedure insertarPenultimo(elem : integer; var l : ListaInt);
var original: ListaInt;
    temp: ListaInt;
    prev: ListaInt;
begin
    original := l;
    temp := new(ListaInt);
    temp^.info := elem;
    while l^.sig <> nil do begin
        prev := l;
        l := l^.sig;
    end;
    prev^.sig := temp;
    temp^.sig := l;
    l := original;
end;
procedure InsertarLuegoPos(nuevo : integer; pos : Positivo; var l : ListaInt);
var original: ListaInt;
    temp: ListaInt;
    prev: ListaInt;
begin
    original := l;
    while (pos > 1) and (l^.sig <> nil) do begin
        prev := l;
        l := l^.sig;
        pos := pos - 1;
    end;
    if pos > 1 then
        l := original
    else begin
        prev := l;
        l := l^.sig;
        temp := new(ListaInt);
        temp^.info := nuevo;
        temp^.sig := l;
        prev^.sig := temp;
        l := original
    end;
end;
procedure InsertarAntes(nuevo,valor : integer; var l : ListaInt);
var original: ListaInt;
    temp: ListaInt;
    prev: ListaInt;
begin
    original := l;
    if l^.info = valor then begin
        temp := new(ListaInt);
        temp^.info := nuevo;
        temp^.sig := l;
        l := temp;
    end
    else begin 
        while (l^.sig <> nil) and (l^.info <> valor) do begin
            prev := l;
            l := l^.sig;
    end;
        if l^.info = valor then begin
            temp := new(ListaInt);
            temp^.info := nuevo;
            temp^.sig := l;
            prev^.sig := temp;
        end;
        l := original;
    end;
end;
procedure InsertarOrdenado(nuevo : integer; var l : ListaInt);
var original: ListaInt;
    temp: ListaInt;
    prev: ListaInt;
begin
    original := l;
    while (l <> nil) and (l^.info < nuevo) do begin
        prev := l;
        l := l^.sig;
    end;
    temp := new(ListaInt);
    temp^.info := nuevo;
    temp^.sig := l;
    prev^.sig := temp;
    l := original;
end;
procedure BorrarSegundo(var l : ListaInt);
begin
    if (l <> nil) and (l^.sig <> nil) then
        l^.sig := l^.sig^.sig;
end;
procedure BorrarPrimeraAparicion(valor : integer; var l : ListaInt);
var prev, temp, original: ListaInt;
begin
    original := l;
    while (l <> nil) and (l^.info <> valor) do begin
        prev := l;
        l := l^.sig;
    end;
    if l <> nil then
        prev^.sig := l^.sig; 
    l := original;
        
end;
procedure borrarUltimo(var l: ListaInt);
var original: ListaInt;
begin
    original := l;
    while (l^.sig^.sig <> nil) do begin
        l := l^.sig;
    end;
    l^.sig := nil;
    l := original;
end;
procedure borrarPrimerImpar(var l: ListaInt);
var original,prev: ListaInt;
begin
    original := l;
    if (l^.info mod 2) = 1 then
        l := l^.sig
    else begin
        while ((l^.info mod 2) = 0) and (l^.sig <> nil) do begin
            prev := l;
            l := l^.sig;
        end;
        prev^.sig := l^.sig;
        l := original;
    end
end;
procedure borrarPares(var l: ListaInt);
var original,prev: ListaInt;
begin
    while (l <> nil) and (l^.info mod 2 = 0) do
        l := l^.sig;
    original := l;
    prev := l;
    while (l <> nil) and (l^.sig <> nil) do begin
        l := l^.sig;
        if l^.info mod 2 = 1 then begin
            prev^.sig := l;
            prev := l
        end;
    end;
    l := original;
end;
procedure leerListaEntrada(var l: ListaInt);
var head: ListaInt;
begin
    if l = nil then
        l := new(ListaInt);
    head := l;
    read(head^.info);
    while not eoln() do begin
        new(l^.sig);
        read(l^.sig^.info);
        l := l^.sig;
    end;
    l := head;
end;
procedure insertarPenultimo2(elem: Integer; var l: ListaInt);
var list,penultimo: ListaInt;
begin
    list := l;
    if list <> nil then begin
        while list^.sig <> nil do
            list := list^.sig;
        new(penultimo);
        penultimo^.info := elem;
        penultimo^.sig := list;
        list := penultimo;
    end;

end;
var
  head, temp, newNode: ListaInt; // Pointers to handle the linked list
  i: integer; // Loop counter
  arr: array[1..5] of integer = (2,2,2,2,2);
begin
//   head := nil; // Initialize the head of the list to nil
  
//   // Create a list with elements 1 to 5
//   for i := 1 to 5 do
//   begin
//     // Create a new node
//     new(newNode);
//     newNode^.info := arr[i];
//     newNode^.sig := nil;
    
//     // If the list is empty, set the head to the new node
//     if head = nil then
//       head := newNode
//     else
//     begin
//       // Find the last node in the list
//       temp := head;
//       while temp^.sig <> nil do
//         temp := temp^.sig;
//       // Append the new node to the list
//       temp^.sig := newNode;
//     end;
//   end;
  
//   // Print the elements in the list
// //   elemEnPos(1, head, el);
// //   writeln(el.ok, el.elem);   
//     // temp := head;
//     // while temp <> nil do
//     // begin
//     //     writeln(temp^.info);
//     //     temp := temp^.sig;
//     // end;
//     // writeln('-------------------');
//     // // borrarPares(head);
//     // // print list
//     // temp := head;
//     // insertarPenultimo2(5,temp);
    // new(temp);
    // temp^.info := 10;
    // temp^.sig := temp;
    // b(temp);
    temp := nil;
    leerListaEntrada(temp);
    while temp <> nil do
    begin
        writeln(temp^.info);
        temp := temp^.sig;
    end;
end.
