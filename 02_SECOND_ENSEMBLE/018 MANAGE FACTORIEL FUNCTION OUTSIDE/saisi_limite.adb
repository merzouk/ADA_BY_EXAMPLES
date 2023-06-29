with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
  

   function saisi_limite(a: Integer) return Integer is
   N : integer := 0;
   begin
		loop
			Put_Line("Saisir un entier superieur ou egal a " & Integer'Image (a) & " : ");
			Get(N) ; Skip_line ; 
			if (N >= a) then return N; end if ; 
	    end loop ; 
   end saisi_limite;