with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

   function factorial(f : Integer) return Integer is
   begin
	   if(f = 0 xor f = 1) then return 1; end if;
	   if(f > 1) then return (f*factorial(f-1)); end if;
   end factorial;
   