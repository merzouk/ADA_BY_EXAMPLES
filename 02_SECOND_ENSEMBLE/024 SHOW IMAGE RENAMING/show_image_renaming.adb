with Ada.Text_IO; use Ada.Text_IO;

procedure show_image_renaming is

   function image (I : Integer) return String
     renames Integer'Image;

begin
   Put_Line (image (2));
   Put_Line (image (3));
end show_image_renaming;