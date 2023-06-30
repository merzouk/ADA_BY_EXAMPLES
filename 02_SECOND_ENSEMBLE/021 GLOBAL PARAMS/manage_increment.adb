with Ada.Text_IO; use Ada.Text_IO;
with increment_by;

procedure manage_increment is
   A, B, C : Integer;

   procedure display_result is
   begin
      Put_Line ("Increment of "
                & Integer'Image (A)
                & " with "
                & Integer'Image (B)
                & " is "
                & Integer'Image (C));
   end display_result;

begin
   A := 10;
   B := 3;
   C := increment_by (A, B);
   Display_Result;
   A := 20;
   B := 5;
   C := increment_by (A, B);
   display_result;
end manage_increment;