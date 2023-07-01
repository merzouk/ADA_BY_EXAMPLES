
with factorial;
with saisi_limite;
with display_result;

procedure manage_factoriel is
   
   C : Integer;
   limit : Integer;
	
begin
    limit := saisi_limite(1);
    for A in 1 .. limit loop
	   C := factorial(A);
	   display_result(A, C);
	end loop;
end manage_factoriel;