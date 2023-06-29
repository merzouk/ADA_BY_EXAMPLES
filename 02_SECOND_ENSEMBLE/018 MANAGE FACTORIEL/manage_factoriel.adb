with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure manage_factoriel is
  
   function factorial(f : Integer) return Integer is
   begin
	   if(f = 0 xor f = 1) then return 1; end if;
	   if(f > 1) then return (f*factorial(f-1)); end if;
	   return 1;
   end factorial;
   
   function saisi_limite(a: Integer) return Integer is
   N : integer := 0;
   begin
		loop
			Put_Line("Saisir un entier superieur ou egal a " & Integer'Image (a) & " : ");
			Get(N) ; Skip_line ; 
			if (N >= a) then return N; end if ; 
	    end loop ; 
   end saisi_limite;
   
   procedure display_result(a: integer; b : integer ) is
   begin
      Put_Line ("Factorial of "
                & Integer'Image (a)
                & " is "
                & Integer'Image (b));
   end display_result;
   
   C : Integer;
   limit : Integer;
	
begin
    limit := saisi_limite(1);
    for A in 1 .. limit loop
	   C := factorial(A);
	   display_result(A, C);
	end loop;
end manage_factoriel;