with Ada.Text_IO;


package body GL.Legacy_Buffers is


   function Is_Buffer (Item : Legacy_Buffer) return Boolean is
      use type GL.C.GLboolean;
   begin
      return glIsBuffer (GLuint (Item)) = GL_TRUE;
   end Is_Buffer;


   procedure Generate_Buffer (Item : out Legacy_Buffer_Array) is
   begin
      Item := (others => 0);
      glGenBuffers (Item'Length, GLuint (Item (Item'First))'Unrestricted_Access);
   end;


   function Generate_Buffer return Legacy_Buffer is
      Item : Legacy_Buffer_Array (1 .. 1);
   begin
      Item := (others => 0);
      glGenBuffers (Item'Length, GLuint (Item (Item'First))'Unrestricted_Access);
      return Item (Item'First);
   end;


   procedure Bind (To : Buffer_Target; Item : Legacy_Buffer) is
   begin
      glBindBuffer (To'Enum_Rep, GLuint (Item));
   end;


end;
