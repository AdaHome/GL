with GL.C;

package GL.Errors is

   Global_Error : C.GLenum := 0;

   function Successful return Boolean;
   function Unsuccessful return Boolean;

end GL.Errors;
