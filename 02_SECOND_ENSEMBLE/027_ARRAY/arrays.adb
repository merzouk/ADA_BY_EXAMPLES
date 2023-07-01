with Ada.Text_IO; use Ada.Text_IO;
-- with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure arrays is
   type My_Int is range 0 .. 1000;
   type Index is range 1 .. 5;

   type My_Int_Array is
     array (Index) of My_Int;
   --                 ^ Type of elements
   --       ^ Bounds of the array
   Arr : My_Int_Array := (2, 3, 5, 7, 11);
   --                    ^ Array literal
   --                      (aggregate)

   V : My_Int;
begin
   New_Line;
   for I in Index loop
      V := Arr (I);
      --        ^ Take the Ith element
      Put_Line (My_Int'Image (V));
   end loop;
   New_Line;
end arrays;