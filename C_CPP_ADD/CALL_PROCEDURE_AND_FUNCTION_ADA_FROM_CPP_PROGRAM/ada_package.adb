with Ada.Text_Io;
package body ada_package is

    function factorial(f : Integer) return Integer is
	   begin
		  if(f < 0) then return 1; end if;
		   if(f = 0 xor f = 1) then return 1;
		   else return (f*factorial(f-1)); end if;
	   end factorial;
	   
	   
    procedure print_number (number : in Integer) is
        begin
            Ada.Text_Io.Put_Line ("Ada: RECEIVED NUMBER FROM CPP : " & Integer'Image(number));
        end print_number;
	
	procedure print_factorial (fact : in Integer) is
        begin
            Ada.Text_Io.Put_Line ("Ada: factorial of " & Integer'Image(fact) & " is " & Integer'Image(factorial(fact)));
        end print_factorial;
	
	function doubler (d : in Integer) return Integer is
	    begin
			return 2*d;
		end doubler;
		
	begin
        null;
end ada_package;