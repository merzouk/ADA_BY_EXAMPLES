
with Ada.Text_IO, Ada.Float_Text_IO ; 
use Ada.Text_IO, Ada.Float_Text_IO ; 
with Ada.Text_IO, Ada.Integer_Text_IO ; 
use Ada.Text_IO, Ada.Integer_Text_IO ; 


procedure calculmoyenne is 
   package Enum_IO is new Ada.Text_IO.Enumeration_IO(BOOLEAN);
   use Enum_IO;
   
   moyenne : float := 0.0;
   cardinal : float := 0.0;
   inf : float := 21.0;
   max : float := 0.0;
   note : float := 0.0;
   check : BOOLEAN;

begin
   loop
	   Put("saisir une note comprise entre 0 et 20 et -1 pour terminer la saisie : ");
	   Get(note) ; Skip_line ; 
	   
	   Put_Line("") ; 
	   check := (note >= 0.0 ) and (note <= 20.0);
	   if (check = TRUE)
	        then
				moyenne := moyenne + note ;
				cardinal := cardinal + 1.0;
				if (inf > note) then inf := note; end if;
				if (note > max) then max := note; end if;
       end if ; 
	   if (note = -1.0)
         then 
		        moyenne := (moyenne/cardinal);
				Put("La moyenne de la classe  !");
                Put(moyenne) ; 
				Put_Line("") ; 
				Put_Line("La plus petite note obtenue est ") ; 
				Put(inf);
				Put_Line("") ; 
				Put_Line("La plus grande note obtenue est ") ; 
				Put(max);
				Put_Line("") ; 
				exit ; 
       end if ; 
   end loop ; 
   Put("Fin programme");
   
end calculmoyenne;
