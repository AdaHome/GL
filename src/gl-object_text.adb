with Ada.Text_IO;

package body GL.Object_Text is


   procedure Put_Line_Fancy (Item : DSA_Buffer) is
      use Ada.Text_IO;
   begin
      Put_Line ("Buffer: " & Item'Img);
   end;

   procedure Put_Line_Fancy (Item : Legacy_Buffer) is
      use Ada.Text_IO;
   begin
      Put_Line ("Buffer: " & Item'Img);
   end;

end GL.Object_Text;
