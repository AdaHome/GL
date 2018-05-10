with GL.C;
with GL.Errors;
with GL.Buffers;
with System;

package GL.DSA_Buffers is

   pragma Assertion_Policy (Check);
   --pragma Assertion_Policy (Ignore);

   use GL.C;
   use GL.Errors;
   use GL.Buffers;
   use System;

   type DSA_Buffer is new GLuint range 0 .. GLuint'Last;


   type DSA_Buffer_Array is array (Integer range <>) of aliased DSA_Buffer;


   function Is_Buffer (Item : DSA_Buffer) return Boolean;

   -- glCreateBuffers returns n previously unused buffer names in buffers,
   -- each representing a new buffer object initialized as if it had been bound to an unspecified target.
   function Create_Buffer return DSA_Buffer with
     Post => Is_Buffer (Create_Buffer'Result) and Errors.Successful;

   procedure Named_Buffer_Data (Buffer : DSA_Buffer; Size_Bytes : Natural; Data : Address; Usage : Buffer_Usage) with
     Post => Is_Buffer (Buffer) and Errors.Successful;

   --glNamedBufferStorage
   procedure Named_Buffer_Storage (Buffer : DSA_Buffer; Size_Bytes : Natural; Data : Address; Flags : GLbitfield) with
     Post => Is_Buffer (Buffer) and Errors.Successful;


private





end GL.DSA_Buffers;
