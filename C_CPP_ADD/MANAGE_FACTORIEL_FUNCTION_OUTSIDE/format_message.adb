with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
   
   function format_message(fac_search: integer; fac_result : integer ) return string is
        begin
                if (fac_search <= 9) then 
                        return  "Factorial of "
                                & Integer'Image (fac_search)
                                & "  is  "
                                & Integer'Image (fac_result);
                else
                        return  "Factorial of "
                                & Integer'Image (fac_search)
                                & " is  "
                                & Integer'Image (fac_result);
                end if;
   end format_message;