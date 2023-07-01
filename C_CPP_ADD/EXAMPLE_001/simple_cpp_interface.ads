-- simple_cpp_interface.ads
with System;
package simple_cpp_interface is
   type A is limited
      record
         Vptr    : System.Address;
         O_Value : Integer;
         A_Value : Integer;
      end record;
   pragma Convention (C, A);

   procedure method1 (This : in out A);
   pragma Import (C, method1);

   procedure ada_method2 (This : in out A; V : Integer);
   pragma Export (C, ada_method2);

end simple_cpp_interface;
