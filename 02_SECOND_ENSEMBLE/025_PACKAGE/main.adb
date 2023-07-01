with Ada.Text_IO; use Ada.Text_IO;
with Week;
--  References the Week package, and
--  adds a dependency from Main to Week

procedure main is
begin
   Put_Line ("First day of the week is "
             & Week.Mon);
end main;