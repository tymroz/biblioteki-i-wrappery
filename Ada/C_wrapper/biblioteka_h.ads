pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Extensions;

package biblioteka_h is

   function silnia_rekurencja (n : int) return Extensions.unsigned_long_long  -- ./biblioteka.h:4
   with Import => True, 
        Convention => C, 
        External_Name => "silnia_rekurencja";

   function silnia_petla (n : int) return Extensions.unsigned_long_long  -- ./biblioteka.h:6
   with Import => True, 
        Convention => C, 
        External_Name => "silnia_petla";

   function NWD_rekurencja (a : int; b : int) return unsigned  -- ./biblioteka.h:8
   with Import => True, 
        Convention => C, 
        External_Name => "NWD_rekurencja";

   function NWD_petla (a : int; b : int) return unsigned  -- ./biblioteka.h:10
   with Import => True, 
        Convention => C, 
        External_Name => "NWD_petla";

   type RownanieDiofantyczne is record
      a : aliased int;  -- ./biblioteka.h:13
      b : aliased int;  -- ./biblioteka.h:14
      c : aliased int;  -- ./biblioteka.h:15
      x : aliased int;  -- ./biblioteka.h:16
      y : aliased int;  -- ./biblioteka.h:17
      nwd : aliased int;  -- ./biblioteka.h:18
   end record
   with Convention => C_Pass_By_Copy;  -- ./biblioteka.h:19

   function rozwiaz_rekurencja
     (a : int;
      b : int;
      c : int) return RownanieDiofantyczne  -- ./biblioteka.h:21
   with Import => True, 
        Convention => C, 
        External_Name => "rozwiaz_rekurencja";

   function rozwiaz_petla
     (a : int;
      b : int;
      c : int) return RownanieDiofantyczne  -- ./biblioteka.h:23
   with Import => True, 
        Convention => C, 
        External_Name => "rozwiaz_petla";

end biblioteka_h;
