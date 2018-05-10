with Ada.Text_IO;

package body GL.DSA_Buffers is


   function Create_Buffer return DSA_Buffer is
      Item : DSA_Buffer_Array (1 .. 1);
   begin
      Item := (others => 0);
      glCreateBuffers (Item'Length, GLuint (Item (Item'First))'Unrestricted_Access);
      return Item (Item'First);
   end;


   procedure Named_Buffer_Data (Buffer : DSA_Buffer; Size_Bytes : Natural; Data : Address; Usage : Buffer_Usage) is
   begin
      glNamedBufferData (GLuint (Buffer), GLsizeiptr (Size_Bytes), Data, Usage'Enum_Rep);
   end;


   procedure Named_Buffer_Storage (Buffer : DSA_Buffer; Size_Bytes : Natural; Data : Address; Flags : GLbitfield) is
   begin
      glNamedBufferStorage (GLuint (Buffer), GLintptr (Size_Bytes), Data, Flags);
   end Named_Buffer_Storage;


   function Is_Buffer (Item : DSA_Buffer) return Boolean is
      use type GL.C.GLboolean;
   begin
      return glIsBuffer (GLuint (Item)) = GL_TRUE;
   end Is_Buffer;


end GL.DSA_Buffers;
