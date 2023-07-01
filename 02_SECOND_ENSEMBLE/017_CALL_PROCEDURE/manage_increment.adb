with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure manage_increment is
  
   function increment_by_value(I : Integer; Incr : Integer) return Integer is
	begin
	   return I + Incr;
   end increment_by_value;
   
   procedure display_results(a: integer; b : integer; c : integer) is
   begin
      Put_Line ("Increment of "
                & Integer'Image (a)
                & " with "
                & Integer'Image (b)
                & " is "
                & Integer'Image (c));
   end display_results;
    A, B, C : Integer;
	
begin
  
   A := 10;
   B := 3;
   C := increment_by_value (A, B);
   display_results(A, B, C);
   A := 20;
   B := 5;
   C := increment_by_value (A, B);
   display_results(A, B, C);
end manage_increment;