with Ada.Text_IO, Ada.Float_Text_IO ; 
use Ada.Text_IO, Ada.Float_Text_IO ; 


procedure exemple is
   r : float ;
   pi : float := 3.14;  
begin
   
    Put("Saisir le ryon du cercle : ") ; 
    Get(r) ; Skip_line ; 
	
    Put("l'aire du cercle de rayon  : ") ; Put(r) ;
    Put(" vaut : ");
	Put(pi*r*r) ; 
end exemple ;