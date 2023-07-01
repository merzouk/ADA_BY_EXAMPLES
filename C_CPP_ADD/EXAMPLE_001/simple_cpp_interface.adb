-- simple_cpp_interface.adb

package body simple_cpp_interface is

   procedure ada_method2 (This : in out A; V : Integer) is
	   begin
		  method1 (This);
		  This.A_Value := V;
   end ada_Method2;

end simple_cpp_interface;