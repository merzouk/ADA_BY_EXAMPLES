package ada_package is
    procedure print_number (number : in Integer);
	procedure print_factorial (fact : in Integer);
	function factorial (f : in Integer) return Integer;
	function doubler (d : in Integer) return Integer;
	
    pragma Export (C, print_number, "print_number");
	pragma Export (C, print_factorial, "print_factorial");
	pragma Export (C, factorial, "factorial");
	pragma Export (C, doubler, "doubler");
end ada_package;