with GL.Errors;
with GL.C;


package GL.Shaders is

   use GL.C;
   use GL.Errors;
   use type GL.C.GLenum;

   type Shader_Stage is
     (Fragment_Stage,
      Vertex_Stage,
      Geometry_Stage,
      Tess_Evaluation_Stage,
      Tess_Control_Stage);

   type Shader_Info is
     (Stage_Info,
      Delete_Info,
      Compile_Info,
      Log_Length_Info,
      Source_Length_Info);

   -- Specifies the handle of the shader object whose source code is to be replaced.
   type Shader is private;

   function Is_Shader (Item : Shader) return Boolean with
     Post => Is_Shader'Result'Valid and Errors.Successful;

   function Identity (Item : Shader) return GLuint;

   function Create_Empty (Kind : Shader_Stage) return Shader with
     Post => Is_Shader (Create_Empty'Result) and Errors.Successful;

   procedure Delete (Item : Shader) with
     Pre => Is_Shader (Item),
     Post => Errors.Successful;

   procedure Set_Source (Item : Shader; Source : String) with
     Pre => Is_Shader (Item),
     Post => Errors.Successful;

   procedure Compile (Item : Shader) with
     Pre => Is_Shader (Item),
     Post => Errors.Successful;

   procedure Compile_Checked (Item : Shader) with
     Pre => Is_Shader (Item),
     Post => Errors.Successful;

   function Compile_Succeess (Item : Shader) return Boolean with
     Pre => Is_Shader (Item),
     Post => Compile_Succeess'Result'Valid and Errors.Successful;

   procedure Get_Compile_Log (Item : Shader; Message : out String; Count : out Natural) with
     Pre => Is_Shader (Item),
     Post => Errors.Successful;

   function Get_Source_Length (Item : Shader) return Natural with
     Pre => Is_Shader (Item);

   function Get_Compile_Log (Item : Shader; Count : Natural := 1024) return String with
     Pre => Is_Shader (Item);

   function Get_Stage (Item : Shader) return Shader_Stage with
     Pre => Is_Shader (Item);

   Compile_Error : exception;

private

   type Shader is new GL.C.GLuint range 1 .. GL.C.GLuint'Last;

   for Shader_Stage'Size use GL.C.GLenum'Size;
   for Shader_Info'Size  use GL.C.GLenum'Size;

   for Shader_Stage use
     (Fragment_Stage        => GL_FRAGMENT_SHADER,
      Vertex_Stage          => GL_VERTEX_SHADER,
      Geometry_Stage        => GL_GEOMETRY_SHADER,
      Tess_Evaluation_Stage => 16#8E87#,
      Tess_Control_Stage    => 16#8E88#);
   for Shader_Info use
     (Stage_Info            => GL_SHADER_TYPE,
      Delete_Info           => GL_DELETE_STATUS,
      Compile_Info          => GL_COMPILE_STATUS,
      Log_Length_Info       => GL_INFO_LOG_LENGTH,
      Source_Length_Info    => GL_SHADER_SOURCE_LENGTH);

end;
