with GL.C;
with GL.Errors;
with GL.Shaders;

package GL.Programs is

   use GL.C;

   type Program is private;

   type Program_Info is (Delete_Info, Compile_Info, Link_Info, Log_Length_Info);

   function Identity (Item : Program) return GLuint;

   function Is_Program (Item : Program) return Boolean;

   function Create_Empty return Program with
     Post => Is_Program (Create_Empty'Result) and Errors.Successful;

   procedure Delete (Item : Program) with
     Post => Errors.Successful;

   procedure Link (Item : Program) with
     Post => Errors.Successful;

   procedure Link_Checked (Item : Program) with
     Post => Errors.Successful;

   procedure Set_Current (Item : Program) with
     Pre => Is_Program (Item),
     Post => Errors.Successful;


   -- ShaderSource sets the source code in shader.
   -- Any source code previously stored in the shader object is completely replaced.
   -- OpenGL copies the shader source code strings when glShaderSource is called,
   -- so an application may free its copy of the source code strings immediately after the function returns.
   procedure Attach (To : Program; Attachment : Shaders.Shader) with
     Pre => Is_Program (To),
     Post => Errors.Successful;


   procedure Get_Link_Log (Item : Program; Message : out String; Count : out Natural) with
     Post => Errors.Successful;

   function Get_Link_Log (Item : Program; Count : Natural := 1024) return String;

   function Link_Succeess (Item : Program) return Boolean;

   Link_Error : exception;

private


   type Program is new GLuint range 1 .. GLuint'Last;

   for Program_Info'Size use GLenum'Size;
   for Program_Info use
     (Delete_Info     => GL_DELETE_STATUS,
      Compile_Info    => GL_COMPILE_STATUS,
      Link_Info       => GL_LINK_STATUS,
      Log_Length_Info => GL_INFO_LOG_LENGTH);

end;
