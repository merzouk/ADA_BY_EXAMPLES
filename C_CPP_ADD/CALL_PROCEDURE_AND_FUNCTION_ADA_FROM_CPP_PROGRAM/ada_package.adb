
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Exceptions;  use Ada.Exceptions;

package body ada_package is

    function factorial(fact : Integer) return Integer is
	   begin
			if(fact < 0) then return 1; end if;
		    if(fact = 0 xor fact = 1) then return 1;
		    else return (fact*factorial(fact-1)); end if;
	   end factorial;
	
	function gestion_saisie(limit : Integer) return Integer is
	    N : Integer := 0;
		begin
		    Skip_Line(1);
		    Ada.Text_Io.Put_Line("ADA : Saisir un entier non null inferieur ou egal a " 
			                     & Integer'Image (limit) 
								 & " : ");
			Get(N) ; 
			return N;
		exception
			when Data_Error =>
							Ada.Text_IO.Put_Line ("La saisie n'est pas correcte ");
							return 0;
			when Constraint_Error =>
							Ada.Text_IO.Put_Line ("La saisie n'est pas correcte ");
							return 0;
			when others =>
							Ada.Text_IO.Put_Line ("La saisie n'est pas correcte ");
							return 0;
	end gestion_saisie;

	   
	function saisi_limite(limit : in Integer) return Integer is
		N : integer := 0;
		begin
				loop
					N := 0;
					N := gestion_saisie(limit);
					if (N > 0 and N <= limit) then return N; end if ; 
				end loop ; 
		end saisi_limite;
	   
    procedure print_number (number : in Integer) is
        begin
            Ada.Text_Io.Put_Line ("ADA : RECEIVED NUMBER FROM CPP : " & Integer'Image(number));
        end print_number;
	
	procedure print_factorial (fact : in Integer) is
        begin
            Ada.Text_Io.Put_Line ("ADA : factorial of " 
			                      & Integer'Image(fact) 
								  & " is " 
								  & Integer'Image(factorial(fact)));
        end print_factorial;
	
	function doubler (d : in Integer) return Integer is
	    begin
			return 2*d;
		end doubler;
		
	begin
        null;
end ada_package;