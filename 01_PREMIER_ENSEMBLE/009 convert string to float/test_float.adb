with Ada.Text_Io, Ada.Float_Text_Io;
use Ada.Text_Io, Ada.Float_Text_Io;

procedure Test_Float is
   
   Valeur : string := "123454.32";
   
   package Fonctions is
      function str_flt (X : String) return Float;
   end Fonctions;
   
   package body Fonctions is
      function str_flt (X : String) return Float is
         Value : Float;
      begin
         Value := Float'Value(X);
         return value;
      end Str_Flt;      
   end Fonctions;
   
use fonctions;
   
begin
   
   Put("La valeur Float de la chaine est : ");
   Put(Str_Flt(Valeur), 10, 4, 0);
   
end test_float;