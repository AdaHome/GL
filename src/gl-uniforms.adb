with Interfaces.C;
with Ada.Text_IO;
with GL.C;

package body GL.Uniforms is

   use GL.C;

   function Identity (Item : Uniform_Location) return GLint is
   begin
      return GLint (Item);
   end;

   function Get (From : Programs.Program; Name : String) return Uniform_Location is
      use GL.Programs;
      use Interfaces.C;
   begin
      return Uniform_Location (glGetUniformLocation (Identity (From), To_C (Name)));
   end;

   procedure Modify_Matrix_4f (Item : Uniform_Location; Data : Address) is
   begin
      glUniformMatrix4fv (GLint (Item), 1, GL_FALSE, Data);
   end;

   procedure Modify_1f (Item : Uniform_Location; Data : GLFloat) is
   begin
      glUniform1f (GLint (Item), Data);
   end;

   procedure Modify_1i (Item : Uniform_Location; Data : GLint) is
   begin
      glUniform1i (GLint (Item), Data);
   end;




   procedure Put_Line_Fancy (Item : Uniform_Location) is
      use Ada.Text_IO;
   begin
      Put_Line ("Uniform location: " & Item'Img);
   end;

end;
