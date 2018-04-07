with GL.Shaders;

package GL.Shader_Files is

   procedure Set_Source_File (Item : GL.Shaders.Shader; Name : String);
   procedure Set_Source_File (Item : GL.Shaders.Shader; Name : String; Source_Buffer : out String);

end;
