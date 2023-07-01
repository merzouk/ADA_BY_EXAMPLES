with Ada.Text_IO, Ada.Float_Text_IO ; 
use Ada.Text_IO, Ada.Float_Text_IO ; 

procedure exemple is
   l : float ;
   h : float ;  
begin
   
    Put("Saisir la longueur : ") ; 
    Get(l) ; Skip_line ; 
	Put("Saisir la hauteur : ") ; 
    Get(h) ; Skip_line ; 
	if (l = h)
		then Put("l'aire du carre vaut  : ") ; Put(l*h) ;
    end if;
	if (l /= h)
		then Put("l'aire du rectangle vaut  : ") ; Put(l*h) ;
    end if;
end exemple ;