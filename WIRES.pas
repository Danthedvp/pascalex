var
    h1,h2:text;
    n,i,max:integer;
    k:longint;
    arr:array of longint;

function bin_s(arr:array of longint; low,high:integer):longint;
var
    compare,sum:longint;
    middle:integer;
begin
    compare:= 0;
    while low <= high do
    begin
        sum:= 0;
	middle:= (low + high) DIV 2;
        for i:= 1 to n do sum:= sum + (arr[i] DIV middle);
        if sum >= k then
	begin
	    if middle > compare then compare:= middle;
            low:= middle + 1;
	end else high:= middle - 1;
    end;
    bin_s:= compare;
end;

begin
    assign(h1,'WIRES.INP');
    assign(h2,'WIRES.OUT');
    reset(h1);
    rewrite(h2);

    read(h1,n,k);
    readln(h1);
    setlength(arr,n + 1);

    readln(h1,arr[1]); max:= arr[1];
    for i:= 2 to n do
    begin
        readln(h1,arr[i]);
        if arr[i] > max then max:= arr[i];
    end;

    write(h2,bin_s(arr,1,max));
    close(h1);
    close(h2);
end.
