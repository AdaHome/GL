with Ada.Unchecked_Conversion;
with GL.C;

package body GL.C_Initializations is

   use Ada;

   function Convert is new Unchecked_Conversion (System.Address, C.P.glCreateProgram);
   function Convert is new Unchecked_Conversion (System.Address, C.P.glDeleteProgram);
   function Convert is new Unchecked_Conversion (System.Address, C.P.glDeleteShader);
   function Convert is new Unchecked_Conversion (System.Address, C.P.glCreateShader);
   function Convert is new Unchecked_Conversion (System.Address, C.P.glAttachShader);
   function Convert is new Unchecked_Conversion (System.Address, C.P.glLinkProgram);
   function Convert is new Unchecked_Conversion (System.Address, C.P.glCompileShader);
   function Convert is new Unchecked_Conversion (System.Address, C.P.glShaderSource);
   function Convert is new Unchecked_Conversion (System.Address, C.P.glGetShaderInfoLog);
   function Convert is new Unchecked_Conversion (System.Address, C.P.glGetShaderiv);
   function Convert is new Unchecked_Conversion (System.Address, C.P.glGetProgramInfoLog);
   function Convert is new Unchecked_Conversion (System.Address, C.P.glGetProgramiv);
   function Convert is new Unchecked_Conversion (System.Address, C.P.glUniformMatrix4fv);
   function Convert is new Unchecked_Conversion (System.Address, C.P.glUniform1f);
   function Convert is new Unchecked_Conversion (System.Address, C.P.glUniform1i);
   function Convert is new Unchecked_Conversion (System.Address, C.P.glGetUniformLocation);
   function Convert is new Unchecked_Conversion (System.Address, C.P.glGenVertexArrays);
   function Convert is new Unchecked_Conversion (System.Address, C.P.glGenBuffers);
   function Convert is new Unchecked_Conversion (System.Address, C.P.glBindVertexArray);
   function Convert is new Unchecked_Conversion (System.Address, C.P.glBindBuffer);
   function Convert is new Unchecked_Conversion (System.Address, C.P.glBufferData);
   function Convert is new Unchecked_Conversion (System.Address, C.P.glVertexAttribPointer);
   function Convert is new Unchecked_Conversion (System.Address, C.P.glEnableVertexAttribArray);
   function Convert is new Unchecked_Conversion (System.Address, C.P.glUseProgram);
   function Convert is new Unchecked_Conversion (System.Address, C.P.glIsShader);
   function Convert is new Unchecked_Conversion (System.Address, C.P.glIsProgram);
   function Convert is new Unchecked_Conversion (System.Address, C.P.glIsBuffer);
   function Convert is new Unchecked_Conversion (System.Address, C.P.glIsVertexArray);
   function Convert is new Unchecked_Conversion (System.Address, C.P.glGetAttribLocation);
   function Convert is new Unchecked_Conversion (System.Address, C.P.glBufferSubData);
   function Convert is new Unchecked_Conversion (System.Address, C.P.glDrawArrays);
   function Convert is new Unchecked_Conversion (System.Address, C.P.glClear);

   function Convert is new Unchecked_Conversion (System.Address, C.P.glPixelStorei);
   function Convert is new Unchecked_Conversion (System.Address, C.P.glGenTextures);
   function Convert is new Unchecked_Conversion (System.Address, C.P.glBindTexture);
   function Convert is new Unchecked_Conversion (System.Address, C.P.glTexImage2D);
   function Convert is new Unchecked_Conversion (System.Address, C.P.glTexParameteri);
   function Convert is new Unchecked_Conversion (System.Address, C.P.glIsTexture);
   function Convert is new Unchecked_Conversion (System.Address, C.P.glActiveTexture);


   -- OpenGL Version 4.5
   function Convert is new Unchecked_Conversion (System.Address, C.P.glVertexArrayAttribBinding);
   function Convert is new Unchecked_Conversion (System.Address, C.P.glVertexArrayAttribFormat);
   function Convert is new Unchecked_Conversion (System.Address, C.P.glVertexArrayVertexBuffer);
   function Convert is new Unchecked_Conversion (System.Address, C.P.glEnableVertexArrayAttrib);
   function Convert is new Unchecked_Conversion (System.Address, C.P.glCreateVertexArrays);
   function Convert is new Unchecked_Conversion (System.Address, C.P.glCreateBuffers);
   function Convert is new Unchecked_Conversion (System.Address, C.P.glNamedBufferData);
   function Convert is new Unchecked_Conversion (System.Address, C.P.glNamedBufferSubData);
   function Convert is new Unchecked_Conversion (System.Address, C.P.glTextureParameteri);
   function Convert is new Unchecked_Conversion (System.Address, C.P.glTextureSubImage2D);
   function Convert is new Unchecked_Conversion (System.Address, C.P.glCreateTextures);
   function Convert is new Unchecked_Conversion (System.Address, C.P.glTextureStorage2D);
   function Convert is new Unchecked_Conversion (System.Address, C.P.glTextureSubImage3D);
   function Convert is new Unchecked_Conversion (System.Address, C.P.glTextureStorage3D);
   function Convert is new Unchecked_Conversion (System.Address, C.P.glNamedBufferStorage);



   procedure Initialize (Load : Loader) is
      use GL.C;
   begin
      glCreateProgram            := Convert (Load ("glCreateProgram"));
      glDeleteProgram            := Convert (Load ("glDeleteProgram"));
      glDeleteShader             := Convert (Load ("glDeleteShader"));
      glCreateShader             := Convert (Load ("glCreateShader"));
      glAttachShader             := Convert (Load ("glAttachShader"));
      glLinkProgram              := Convert (Load ("glLinkProgram"));
      glCompileShader            := Convert (Load ("glCompileShader"));
      glShaderSource             := Convert (Load ("glShaderSource"));
      glGetShaderInfoLog         := Convert (Load ("glGetShaderInfoLog"));
      glGetShaderiv              := Convert (Load ("glGetShaderiv"));
      glGetProgramInfoLog        := Convert (Load ("glGetProgramInfoLog"));
      glGetProgramiv             := Convert (Load ("glGetProgramiv"));
      glUniformMatrix4fv         := Convert (Load ("glUniformMatrix4fv"));
      glUniform1f                := Convert (Load ("glUniform1f"));
      glUniform1i                := Convert (Load ("glUniform1i"));
      glGetUniformLocation       := Convert (Load ("glGetUniformLocation"));
      glGenVertexArrays          := Convert (Load ("glGenVertexArrays"));
      glGenBuffers               := Convert (Load ("glGenBuffers"));
      glBindVertexArray          := Convert (Load ("glBindVertexArray"));
      glBindBuffer               := Convert (Load ("glBindBuffer"));
      glBufferData               := Convert (Load ("glBufferData"));
      glBufferSubData            := Convert (Load ("glBufferSubData"));
      glVertexAttribPointer      := Convert (Load ("glVertexAttribPointer"));
      glEnableVertexAttribArray  := Convert (Load ("glEnableVertexAttribArray"));
      glUseProgram               := Convert (Load ("glUseProgram"));
      glIsShader                 := Convert (Load ("glIsShader"));
      glIsProgram                := Convert (Load ("glIsProgram"));
      glIsBuffer                 := Convert (Load ("glIsBuffer"));
      glIsVertexArray            := Convert (Load ("glIsVertexArray"));
      glGetAttribLocation        := Convert (Load ("glGetAttribLocation"));

      glPixelStorei              := Convert (Load ("glPixelStorei"));
      glGenTextures              := Convert (Load ("glGenTextures"));
      glBindTexture              := Convert (Load ("glBindTexture"));
      glTexImage2D               := Convert (Load ("glTexImage2D"));
      glTexParameteri            := Convert (Load ("glTexParameteri"));
      glIsTexture                := Convert (Load ("glIsTexture"));
      glActiveTexture            := Convert (Load ("glActiveTexture"));
      -- OpenGL Version 4.5
      glVertexArrayAttribBinding := Convert (Load ("glVertexArrayAttribBinding"));
      glVertexArrayAttribFormat  := Convert (Load ("glVertexArrayAttribFormat"));
      glVertexArrayVertexBuffer  := Convert (Load ("glVertexArrayVertexBuffer"));
      glEnableVertexArrayAttrib  := Convert (Load ("glEnableVertexArrayAttrib"));
      glCreateVertexArrays       := Convert (Load ("glCreateVertexArrays"));
      glCreateBuffers            := Convert (Load ("glCreateBuffers"));
      glNamedBufferData          := Convert (Load ("glNamedBufferData"));
      glNamedBufferSubData       := Convert (Load ("glNamedBufferSubData"));
      glNamedBufferStorage       := Convert (Load ("glNamedBufferStorage"));

      glTextureParameteri        := Convert (Load ("glTextureParameteri"));
      glTextureSubImage2D        := Convert (Load ("glTextureSubImage2D"));
      glTextureStorage2D         := Convert (Load ("glTextureStorage2D"));
      glCreateTextures           := Convert (Load ("glCreateTextures"));

      glTextureSubImage3D        := Convert (Load ("glTextureSubImage3D"));
      glTextureStorage3D         := Convert (Load ("glTextureStorage3D"));

   end;


end GL.C_Initializations;
