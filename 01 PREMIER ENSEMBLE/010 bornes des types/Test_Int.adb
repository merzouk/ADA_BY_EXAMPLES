with ada.text_io;
use Ada.Text_Io;
 
procedure Test_Int is
 
   package Lliio is new Integer_Io(Long_Long_Integer);
   use lliio;
   package Liio is new Integer_Io(Long_Integer);
   use Liio;
   package Siio is new Integer_Io(Short_Integer);
   use Siio;
   package Iio is new Integer_Io(Integer);
   use Iio;
 
   package Fio is new Float_Io(Float);
   use Fio;
   package Lfio is new Float_Io(Long_Float);
   use lfio;
   package Llfio is new Float_Io(Long_Long_Float);
   use Llfio; 
 
   A, B : long_float;
 
begin
 
   Put_Line("Bornes sur les entiers : ");
   put_line("*************************");
 
   Put("Borne inferieure Lliio : ");
   Put(long_Long_Integer'First);
   New_Line;
 
   Put("Borne superieure Lliio : ");
   Put(long_Long_Integer'Last);
   New_Line;
 
   Put("Borne inferieure Liio  : ");
   Put(Long_Integer'First);
   New_Line;
 
   Put("Borne superieure Liio  : ");
   Put(Long_Integer'Last);
   New_Line;
 
   Put("Borne inferieure Siio  : ");
   Put(short_Integer'First);
   New_Line;
 
   Put("Borne superieure Siio  : ");
   Put(short_Integer'Last);
   New_Line;
 
   Put("Borne inferieure Iio   : ");
   Put(Integer'First);
   New_Line;
 
   Put("Borne superieure Iio   : ");
   Put(Integer'Last);
   New_Line(2);
 
   Put_Line("Bornes sur les reels : ");
   put_line("***********************");
 
   Put("Borne inferieure Fio   : ");
   Put(Float'First);
   New_Line;
 
   Put("Borne superieure Fio   : ");
   Put(Float'Last);
   New_Line;
 
   Put("Borne inferieure Lfio : ");
   Put(Long_float'First);
   New_Line;
 
   Put("Borne superieure Lfio : ");
   Put(Long_float'Last);
   New_Line;
 
   Put("Borne inferieure Llfio : ");
   Put(long_Long_Integer'First);
   New_Line;
 
   Put("Borne superieure Llfio : ");
   Put(long_Long_Integer'Last);
   New_Line;
 
   A := 16546546846.79769313486232;
   B := 6465.6546654655465465460;
   Put(A+B);
 
End test_int;