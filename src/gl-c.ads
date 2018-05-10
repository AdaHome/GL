with System;
with Interfaces.C;
with Interfaces.C.Strings;

package GL.C is

   use System;
   use Interfaces.C;
   use Interfaces.C.Strings;

   subtype GLbitfield   is unsigned;
   subtype GLboolean    is unsigned_char;
   subtype GLfloat      is C_float;
   subtype GLdouble     is double;
   subtype GLint        is int;
   subtype GLintptr     is ptrdiff_t;
   subtype GLuint       is unsigned;
   subtype GLenum       is unsigned;
   subtype GLsizei      is int;
   subtype GLsizeiptr   is ptrdiff_t;
   subtype GLbyte       is signed_char;
   subtype GLubyte      is unsigned_char;
   subtype GLvoid       is Address;
   subtype GLchar       is char;
   subtype GLclampf     is C_float;

   -- Specials
   type GLintv          is array (size_t range <>) of aliased int with Convention => C;
   subtype GLstring     is char_array;
   subtype GLstringv    is chars_ptr_array;

   type GLchar_ptr is access GLchar;
   type GLchar_ptr_ptr is access GLchar_ptr;


   GL_TRUE                 : constant := 1;
   GL_FALSE                : constant := 0;

   GL_FRAGMENT_SHADER      : constant := 16#8B30#;
   GL_VERTEX_SHADER        : constant := 16#8B31#;
   GL_GEOMETRY_SHADER      : constant := 16#8DD9#;

   GL_SHADER_TYPE          : constant := 16#8B4F#;
   GL_DELETE_STATUS        : constant := 16#8B80#;
   GL_COMPILE_STATUS       : constant := 16#8B81#;
   GL_INFO_LOG_LENGTH      : constant := 16#8B84#;
   GL_SHADER_SOURCE_LENGTH : constant := 16#8B88#;

   GL_BYTE                 : constant := 16#1400#;
   GL_UNSIGNED_BYTE        : constant := 16#1401#;
   GL_SHORT                : constant := 16#1402#;
   GL_UNSIGNED_SHORT       : constant := 16#1403#;
   GL_FLOAT                : constant := 16#1406#;
   GL_FIXED                : constant := 16#140C#;

   GL_LINK_STATUS          : constant := 16#8B82#;
   GL_ARRAY_BUFFER         : constant := 16#8892#;
   GL_ELEMENT_ARRAY_BUFFER : constant := 16#8893#;
   GL_STATIC_DRAW          : constant := 16#88E4#;
   GL_DYNAMIC_DRAW         : constant := 16#88E5#;
   GL_LINES                : constant := 16#0001#;
   GL_LINE_STRIP           : constant := 16#0003#;
   GL_TRIANGLES            : constant := 16#0004#;
   GL_ACTIVE_ATTRIBUTES    : constant := 16#8B89#;
   GL_MAJOR_VERSION        : constant := 16#821B#;
   GL_COLOR_BUFFER_BIT     : constant := 16#00004000#;
   GL_DEPTH_BUFFER_BIT     : constant := 16#00000100#;
   GL_DEPTH_TEST           : constant := 16#0B71#;
   GL_TEXTURE_1D           : constant := 16#0DE0#;
   GL_TEXTURE_2D           : constant := 16#0DE1#;
   GL_TEXTURE_2D_ARRAY     : constant := 16#8C1A#;
   GL_RED                  : constant := 16#1903#;
   GL_GREEN                : constant := 16#1904#;
   GL_BLUE                 : constant := 16#1905#;
   GL_RGB                  : constant := 16#1907#;
   GL_RGBA                 : constant := 16#1908#;
   GL_NEAREST              : constant := 16#2600#;
   GL_LINEAR               : constant := 16#2601#;
   GL_CLAMP                : constant := 16#2900#;
   GL_REPEAT               : constant := 16#2901#;

   GL_CLAMP_TO_EDGE        : constant := 16#812F#;

   GL_TEXTURE0             : constant := 16#84C0#;
   GL_TEXTURE1             : constant := 16#84C1#;

   GL_BLEND                : constant := 16#0BE2#;

   GL_UNPACK_ALIGNMENT     : constant := 16#0CF5#;
   GL_PACK_ALIGNMENT       : constant := 16#0D05#;
   GL_TEXTURE_MAG_FILTER   : constant := 16#2800#;
   GL_TEXTURE_MIN_FILTER   : constant := 16#2801#;
   GL_TEXTURE_WRAP_S       : constant := 16#2802#;
   GL_TEXTURE_WRAP_T       : constant := 16#2803#;

   GL_SRC_ALPHA            : constant := 16#0302#;
   GL_ONE_MINUS_SRC_ALPHA  : constant := 16#0303#;

   GL_RGBA2                : constant := 16#8055#;
   GL_R8                   : constant := 16#8229#;
   GL_R16                  : constant := 16#822A#;
   GL_NO_ERROR             : constant := 16#0000#;


   GL_MAP_PERSISTENT_BIT   : constant := 16#0040#;
   GL_MAP_COHERENT_BIT     : constant := 16#0080#;
   GL_DYNAMIC_STORAGE_BIT  : constant := 16#0100#;
   GL_CLIENT_STORAGE_BIT   : constant := 16#0200#;


   procedure glViewport (x : GLint; y : GLint; width : GLsizei; height : GLsizei) with
     Import,
     Convention => StdCall,
     External_Name => "glViewport";

   procedure glDrawArrays (mode : GLenum; first : GLint; count : GLsizei) with
     Import,
     Convention => StdCall,
     External_Name => "glDrawArrays";

   function glGetError return GLenum with
     Import,
     Convention => StdCall,
     External_Name => "glGetError";

   procedure glGetIntegerv (pname : GLenum; data : access GLint) with
     Import,
     Convention => StdCall,
     External_Name => "glGetIntegerv";

   procedure glClear (Bits : GLbitfield) with
     Import,
     Convention => StdCall,
     External_Name => "glClear";

   procedure glClearColor (red : GLclampf; green : GLclampf; blue : GLclampf; alpha : GLclampf) with
     Import,
     Convention => StdCall,
     External_Name => "glClearColor";

   procedure glEnable (cap : GLenum) with
     Import,
     Convention => StdCall,
     External_Name => "glEnable";

   procedure glDisable (cap : GLenum) with
     Import,
     Convention => StdCall,
     External_Name => "glDisable";

   procedure glBlendFunc (sfactor : GLenum; dfactor : GLenum) with
     Import,
     Convention => StdCall,
     External_Name => "glBlendFunc";


   package P is
      type glCreateProgram            is access function return GLuint with Convention => StdCall;
      type glDeleteProgram            is access procedure (program : GLuint) with Convention => StdCall;
      type glDeleteShader             is access procedure (shader : GLuint) with Convention => StdCall;
      type glLinkProgram              is access procedure (program : GLuint) with Convention => StdCall;
      type glGetProgramiv             is access procedure (program : GLuint; pname : GLenum; params : access GLint) with Convention => StdCall;
      type glGetProgramInfoLog        is access procedure (program : GLuint; maxLength : GLsizei; length : access GLsizei; infoLog : Address) with Convention => StdCall;
      type glUseProgram               is access procedure (program : GLuint) with Convention => StdCall;
      type glCreateShader             is access function  (shaderType : GLenum) return GLuint with Convention => StdCall;
      type glShaderSource             is access procedure (shader : GLuint; count : GLsizei; string : GLstringv; length : GLintv) with Convention => StdCall;
      type glAttachShader             is access procedure (program, shader : GLuint) with Convention => StdCall;
      type glCompileShader            is access procedure (shader : GLuint) with Convention => StdCall;
      type glGetShaderInfoLog         is access procedure (shader : GLuint; maxLength : GLsizei; length : out GLsizei; infoLog : Address) with Convention => StdCall;
      type glGetShaderiv              is access procedure (shader : GLuint; pname : GLenum; params : access GLint);
      type glUniformMatrix4fv         is access procedure (location : GLint; count : GLsizei; transpose : GLboolean; value : Address) with Convention => StdCall;
      type glUniform1f                is access procedure (location : GLint; value : GLfloat) with Convention => StdCall;
      type glUniform1i                is access procedure (location : GLint; value : GLint) with Convention => StdCall;
      type glGetUniformLocation       is access function  (program : GLuint; name : GLstring) return GLint with Convention => StdCall;
      type glGetAttribLocation        is access function  (program : GLuint; name : GLstring) return GLint with Convention => StdCall;
      type glGenVertexArrays          is access procedure (n : GLsizei; arrays : access GLuint) with Convention => StdCall;
      type glBindVertexArray          is access procedure (arr : GLuint) with Convention => StdCall;
      type glGenBuffers               is access procedure (n : GLsizei; buffers : access GLuint) with Convention => StdCall;
      type glBindBuffer               is access procedure (target : GLenum; buf : GLuint) with Convention => StdCall;
      type glBufferData               is access procedure (target : GLenum; size : GLsizeiptr; data : Address; usage : GLenum) with Convention => StdCall;
      type glVertexAttribPointer      is access procedure (index : GLuint; size : GLint; t : GLenum; normalized : GLboolean; stride : GLsizei; pointer : Address) with Convention => StdCall;
      type glEnableVertexAttribArray  is access procedure (index : GLuint) with Convention => StdCall;
      type glIsShader                 is access function  (shader : GLuint) return GLboolean with Convention => StdCall;
      type glIsProgram                is access function  (program : GLuint) return GLboolean with Convention => StdCall;
      type glIsBuffer                 is access function  (buffer : GLuint) return GLboolean with Convention => StdCall;
      type glIsVertexArray            is access function  (arr : GLuint) return GLboolean with Convention => StdCall;

      type glPixelStorei              is access procedure (pname : GLenum; param : GLint) with Convention => StdCall;
      type glGenTextures              is access procedure (n : GLsizei; textures : access GLuint) with Convention => StdCall;
      type glBindTexture              is access procedure (target : GLenum; texture : GLuint) with Convention => StdCall;
      type glTexImage2D               is access procedure (target : GLenum; level: GLint; internalFormat : GLint; width : GLsizei; height : GLsizei; border : GLint; format : GLenum; kind : GLenum; data : Address) with Convention => StdCall;
      type glTexParameteri            is access procedure (target : GLenum; pname : GLenum; param : GLint) with Convention => StdCall;
      type glIsTexture                is access function  (texture : GLuint) return GLboolean with Convention => StdCall;
      type glActiveTexture            is access procedure (texture : GLenum) with Convention => StdCall;

      type glBufferSubData            is access procedure (target : GLenum; offset : GLintptr; size : GLsizeiptr; data : Address) with Convention => StdCall;
      type glGetActiveAttrib          is access procedure (program : GLuint; index : GLuint; bufSize : GLsizei; length : out GLsizei; size : out GLint; kind : out GLenum; name : Address);
      type glDrawArrays               is access procedure (mode : GLenum; first : GLint; count : GLsizei) with Convention => StdCall;
      type glClear                    is access procedure (mask : GLbitfield) with Convention => StdCall;

      -- OpenGL Version 4.5
      type glVertexArrayAttribBinding is access procedure (vaobj : GLuint; attribindex : GLuint; bindingindex : GLuint) with Convention => StdCall;
      type glVertexArrayAttribFormat  is access procedure (vaobj : GLuint; attribindex : GLuint; size : GLint; t : GLenum; normalized : GLboolean; relativeoffset : GLuint) with Convention => StdCall;
      type glVertexArrayVertexBuffer  is access procedure (vaobj : GLuint; bindingindex : GLuint; buffer : GLuint; offset : GLintptr; stride : GLsizei) with Convention => StdCall;
      type glEnableVertexArrayAttrib  is access procedure (vaobj : GLuint; index : GLuint) with Convention => StdCall;
      type glCreateVertexArrays       is access procedure ( n : GLsizei; arrays : access GLuint) with Convention => StdCall;
      type glCreateBuffers            is access procedure (n : GLsizei; buffers : access GLuint) with Convention => StdCall;
      type glNamedBufferData          is access procedure (buffer : GLuint; size : GLsizeiptr; data : Address; usage : GLenum) with Convention => StdCall;
      type glNamedBufferSubData       is access procedure (buffer : GLuint; offset : GLintptr; size : GLsizei; data : Address) with Convention => StdCall;
      type glNamedBufferStorage       is access procedure (buffer : GLuint; size : GLintptr; data : Address; flags : GLbitfield) with Convention => StdCall;

      type glTextureParameteri        is access procedure (texture : GLuint; pname : GLenum; param : GLint) with Convention => StdCall;
      type glTextureSubImage2D        is access procedure (texture : GLuint; level: GLint; xoffset : GLint; yoffset : GLint; width : GLsizei; height : GLsizei; format : GLenum; kind : GLenum; data : Address) with Convention => StdCall;
      type glTextureSubImage3D        is access procedure (texture : GLuint; level: GLint; xoffset : GLint; yoffset : GLint; zoffset : GLint; width : GLsizei; height : GLsizei; depth : GLsizei; format : GLenum; kind : GLenum; data : Address) with Convention => StdCall;
      type glTextureStorage2D         is access procedure (texture : GLuint; levels: GLint; internalformat : GLenum; width : GLsizei; height : GLsizei) with Convention => StdCall;
      type glTextureStorage3D         is access procedure (texture : GLuint; levels: GLint; internalformat : GLenum; width : GLsizei; height : GLsizei; depth : GLsizei) with Convention => StdCall;
      type glCreateTextures           is access procedure (target : GLenum; n : GLsizei; textures : access GLuint) with Convention => StdCall;
   end P;


   glCreateProgram            : P.glCreateProgram;
   glDeleteProgram            : P.glDeleteProgram;
   glDeleteShader             : P.glDeleteShader;
   glCreateShader             : P.glCreateShader;
   glAttachShader             : P.glAttachShader;
   glLinkProgram              : P.glLinkProgram;
   glCompileShader            : P.glCompileShader;
   glShaderSource             : P.glShaderSource;
   glGetShaderInfoLog         : P.glGetShaderInfoLog;
   glGetShaderiv              : P.glGetShaderiv;
   glGetProgramiv             : P.glGetProgramiv;
   glGetProgramInfoLog        : P.glGetProgramInfoLog;
   glUniformMatrix4fv         : P.glUniformMatrix4fv;
   glUniform1f                : P.glUniform1f;
   glUniform1i                : P.glUniform1i;
   glGetUniformLocation       : P.glGetUniformLocation;
   glGenVertexArrays          : P.glGenVertexArrays;
   glGenBuffers               : P.glGenBuffers;
   glBindVertexArray          : P.glBindVertexArray;
   glBindBuffer               : P.glBindBuffer;
   glBufferData               : P.glBufferData;
   glBufferSubData            : P.glBufferSubData;
   glVertexAttribPointer      : P.glVertexAttribPointer;
   glEnableVertexAttribArray  : P.glEnableVertexAttribArray;
   glUseProgram               : P.glUseProgram;
   glIsShader                 : P.glIsShader;
   glIsProgram                : P.glIsProgram;
   glIsBuffer                 : P.glIsBuffer;
   glIsVertexArray            : P.glIsVertexArray;
   glGetAttribLocation        : P.glGetAttribLocation;

   glPixelStorei              : P.glPixelStorei;
   glGenTextures              : P.glGenTextures;
   glBindTexture              : P.glBindTexture;
   glTexImage2D               : P.glTexImage2D;
   glTexParameteri            : P.glTexParameteri;
   glIsTexture                : P.glIsTexture;
   glActiveTexture            : P.glActiveTexture;

   -- OpenGL Version 4.5
   glVertexArrayAttribBinding : P.glVertexArrayAttribBinding;
   glVertexArrayAttribFormat  : P.glVertexArrayAttribFormat;
   glVertexArrayVertexBuffer  : P.glVertexArrayVertexBuffer;
   glEnableVertexArrayAttrib  : P.glEnableVertexArrayAttrib;
   glCreateVertexArrays       : P.glCreateVertexArrays;
   glCreateBuffers            : P.glCreateBuffers;
   glNamedBufferData          : P.glNamedBufferData;
   glNamedBufferSubData       : P.glNamedBufferSubData;
   glNamedBufferStorage       : P.glNamedBufferStorage;

   glTextureParameteri        : P.glTextureParameteri;
   glTextureSubImage2D        : P.glTextureSubImage2D;
   glCreateTextures           : P.glCreateTextures;
   glTextureStorage2D         : P.glTextureStorage2D;

   glTextureSubImage3D        : P.glTextureSubImage3D;
   glTextureStorage3D         : P.glTextureStorage3D;


end;
