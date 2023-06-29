

with Ada.Text_IO, Ada.Integer_Text_IO ; 
use Ada.Text_IO, Ada.Integer_Text_IO ; 





procedure Lire is 
   package Enum_IO is new Ada.Text_IO.Enumeration_IO(BOOLEAN);
   use Enum_IO;
   
   N : integer;
   check : BOOLEAN;

begin
   loop
	   Put("saisir un entier compris entre 0 et 360 : ");
	   Get(N) ; Skip_line ; 
	   Put("L'entier saisi : ");
	   Put(N) ;
	   Put_Line("") ; 
	   Put("Le double de l'entier saisi : ");
	   Put(N * 2) ;
	   Put_Line("") ; 
	   check := (N <= 360) xor (N <= -1);
	   if (check = TRUE)
         then Put_Line("Ce nombre est compris entre 0 et 360 !") ; exit ; 
         else 
			if ((N > 360)) then Put_Line("Ce nombre est superieur a 360 ! Recommencez. ") ; end if;
			if ((N <= -1)) then Put_Line("Ce nombre est inferieur a 0 ! Recommencez. ") ;  end if;
       end if ; 
   end loop ; 

end Lire;
