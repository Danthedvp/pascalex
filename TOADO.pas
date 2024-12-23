var
    h1,h2:text;
    n,d,i,j,pos,count,pos2:longint;
    arr:array of longint;

function find(var arr:array of longint; large,small:longint):longint;
var
    middle:integer;
begin
    while small <= large do
    begin
	middle:= (large + small) DIV 2;
	if arr[middle] - d <= arr[i] then
        begin
	    pos:= middle;
	    small:= middle + 1;
	end else large:= middle - 1;
    end;
    find:= pos;
end;

begin
    assign(h1,'TOADO.INP');
    assign(h2,'TOADO.OUT');
    reset(h1);
    rewrite(h2);

    read(h1,n,d);
    readln(h1);
    setlength(arr,n + 1);
    for i:= 1 to n do
    begin
	read(h1,arr[i]);
    end;

    for i:= 1 to n - 2 do
    begin
	pos:= find(arr,n,1);
	for j:= i + 1 to pos do
	begin
	    pos2:= find(arr,n,j);
	    count:= count + (pos2 - j);
	end;
    end;
    write(h2,count);
    close(h1);
    close(h2);
end.
