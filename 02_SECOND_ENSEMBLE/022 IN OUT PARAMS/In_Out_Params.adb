with Ada.Text_IO; use Ada.Text_IO;

procedure In_Out_Params is
   procedure Swap (A, B : in out Integer) is
      Tmp : Integer;
   begin
      Tmp := A;
      A   := B;
      B   := Tmp;
   end Swap;

   A : Integer := 12;
   B : Integer := 44;
begin
    Put_Line ("A before swap " & Integer'Image (A));
    Swap (A, B);

    --  Prints 44
    Put_Line ("A after swap  " & Integer'Image (A));
end In_Out_Params;