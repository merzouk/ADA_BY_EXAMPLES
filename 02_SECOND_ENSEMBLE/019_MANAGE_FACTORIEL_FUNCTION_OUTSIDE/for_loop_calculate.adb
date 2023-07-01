with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with factorial;
with format_message;
with display_result;

procedure for_loop_calculate(limit: integer) is
   begin
      for f in 1 .. limit loop
         display_result(format_message(f, factorial(f)));
      end loop;
end for_loop_calculate;