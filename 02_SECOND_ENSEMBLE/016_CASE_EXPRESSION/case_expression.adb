with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure case_expression is
begin
   for I in 1 .. 10 loop
      Put(Integer'Image (I) & " is ");
      Put_Line
        (case I is
         when 1 | 3 | 5 | 7 | 9  => "impair",
         when 2 | 4 | 6 | 8 | 10 => "pair");
   end loop;
end case_expression;