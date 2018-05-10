with GL.C;

package body GL.Errors is


   function Successful return Boolean is
      use GL.C;
      use type GL.C.GLenum;
   begin
      Global_Error := glGetError;
      return Global_Error = GL_NO_ERROR;
   end Successful;


   function Unsuccessful return Boolean is
      use GL.C;
      use type GL.C.GLenum;
   begin
      Global_Error := glGetError;
      return Global_Error /= GL_NO_ERROR;
   end Unsuccessful;


end GL.Errors;
