with Ada.Text_IO; use Ada.Text_IO;
with Ada.Text_IO, Ada.Integer_Text_IO ; 
use Ada.Text_IO, Ada.Integer_Text_IO ; 

procedure ForLoop is
	limit : integer := 12;
begin
   for I in 1 .. limit loop
      --  Put_Line is a procedure call
      Put_Line ("Hello, World!"
                  & Integer'Image (I));
      --        ^ Procedure parameter
	     --  Put_Line is a procedure call
      Put_Line (Integer'Image (I)
	            & " Hello, World!"
                  );
      --        ^ Procedure parameter
   end loop;
end ForLoop;