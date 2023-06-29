with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
   
   procedure display_result(a: integer; b :integer ) is
   begin
      Put_Line ("Factorial of "
                & Integer'Image (a)
                & " is "
                & Integer'Image (b));
   end display_result;