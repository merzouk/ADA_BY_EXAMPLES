package ada_package is
    procedure print_number (number : in Integer);
	procedure print_factorial (fact : in Integer);
	function factorial (fact : in Integer) return Integer;
	function saisi_limite (limit : in Integer) return Integer;
	function doubler (d : in Integer) return Integer;
	
    pragma Export (C, print_number, "print_number");
	pragma Export (C, saisi_limite, "saisi_limite");
	pragma Export (C, print_factorial, "print_factorial");
	pragma Export (C, factorial, "factorial");
	pragma Export (C, doubler, "doubler");
end ada_package;