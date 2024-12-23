var
    h1,h2:text;
    max,n,t,i,j:integer;
    arr1:array of integer;
    arr2:array of integer;

begin
    assign(h1,'Olympia.INP');
    assign(h2,'Olympia.OUT');
    reset(h1);
    rewrite(h2);

    readln(h1,t);
    for i:= 1 to t do
    begin
	readln(h1,n);
        setlength(arr1,n + 1);
        setlength(arr2,n + 2);
        arr2[n + 1]:= 0;
        max:= 0;
        for j:= 1 to n do
        begin
	    read(h1,arr1[j]);
	end;
        readln(h1);
        for j:= 1 to n do
        begin
	    read(h1,arr2[j]);
        end;
        for j:= 1 to n do
        begin
	    if arr1[j] > arr2[j + 1] then max:= max + (arr1[j] - arr2[j + 1]);
        end;
        delete(arr1,1,n);
        delete(arr2,1,n);
	writeln(h2,max);
    end;

    close(h1);
    close(h2);
end.


