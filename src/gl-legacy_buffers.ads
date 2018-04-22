with GL.C;
with System;
with GL.Errors;
with GL.Buffers;

package GL.Legacy_Buffers is

   pragma Assertion_Policy (Check);
   --pragma Assertion_Policy (Ignore);

   use GL.C;
   use GL.Errors;
   use GL.Buffers;
   use System;


   -- Buffer object name
   type Legacy_Buffer is new GLuint range 0 .. GLuint'Last;


   type Legacy_Buffer_Array is array (Integer range <>) of aliased Legacy_Buffer;

   -- glGenBuffers returns Item'Length buffer object names in buffers.
   -- There is no guarantee that the names form a contiguous set of integers;
   -- however, it is guaranteed that none of the returned names was in use
   -- immediately before the call to glGenBuffers.
   procedure Generate_Buffer (Item : out Legacy_Buffer_Array);

   -- Generate one buffer object name.
   function Generate_Buffer return Legacy_Buffer;


private



end;

