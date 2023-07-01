with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure modulo is
begin
   for I in 1 .. 10 loop
      Put(Integer'Image (I) & " is ");
      Put_Line ( if I mod 2 = 0
                  then "pair"
                  else "impair");
   end loop;
end modulo;