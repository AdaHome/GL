with System;

package GL.C_Initializations is

   type Loader is access function (Name : String) return System.Address;
   procedure Initialize (Load : Loader);

end GL.C_Initializations;
