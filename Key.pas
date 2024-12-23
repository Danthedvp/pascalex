var
    h1,h2:text;
    n:string;
    i,j:longint;

begin
    assign(h1,'KEY.INP');
    assign(h2,'KEY.OUT');
    reset(h1);
    rewrite(h2);
	
    read(h1,n);
    while length(n) > 1 do
    begin
        j:= 0;
	for i:= 1 to length(n) do j:= ORD(n[i]) - 48 + j;
        STR(j,n);
    end;
    write(h2,n);

    close(h1);
    close(h2);
end.
