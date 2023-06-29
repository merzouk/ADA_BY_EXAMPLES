with Ada.Text_IO; use Ada.Text_IO;
with Ada.Text_IO, Ada.Integer_Text_IO ; 
use Ada.Text_IO, Ada.Integer_Text_IO ; 

procedure ForLoopReverse is
	limit : integer := 12;
begin
   for I in reverse limit .. 1 loop
      Put_Line ("Hello, World!"
                & Integer'Image (I));
   end loop;
end ForLoopReverse;