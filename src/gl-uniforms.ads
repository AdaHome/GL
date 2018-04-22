with GL.Errors;
with System;
with GL.C;
with GL.Programs;

package GL.Uniforms is

   pragma Assertion_Policy (Check);
   --pragma Assertion_Policy (Ignore);

   use GL.Errors;
   use GL.C;
   use GL.Programs;

   subtype Address is System.Address;

   type Uniform_Location is private;
   type Uniform_Name is new String;

   function Is_Uniform (Location : Uniform_Location) return Boolean;

   -- glGetUniformLocation
   function Get (From : Program; Name : String) return Uniform_Location with
     Post => Is_Uniform (Get'Result) and Errors.Successful;


   -- glUniform modifies the value of a uniform variable or a uniform variable array.
   -- The location of the uniform variable to be modified is specified by location,
   -- which should be a value returned by glGetUniformLocation.
   -- glUniform operates on the program object that was made part of current state by calling glUseProgram.
   -- glUniformMatrix4fv
   procedure Modify_Matrix_4f (Item : Uniform_Location; Data : Address) with
     Post => Errors.Successful;

   procedure Modify_1f (Item : Uniform_Location; Data : GLFloat) with
     Post => Errors.Successful;

   procedure Modify_1i (Item : Uniform_Location; Data : GLint) with
     Post => Errors.Successful;


   function Identity (Item : Uniform_Location) return GLint;


   procedure Put_Line_Fancy (Item : Uniform_Location);

private

   type Uniform_Location is new GLint range 0 .. GLint'Last;
   function Is_Uniform (Location : Uniform_Location) return Boolean is (Location'Valid);

end;
