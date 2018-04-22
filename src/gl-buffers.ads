with GL.C;
with System;

package GL.Buffers is

   pragma Assertion_Policy (Check);
   --pragma Assertion_Policy (Ignore);


   procedure Dummy;


   -- Specifies the target to which the buffer object is bound.
   type Buffer_Usage is
     (
      Stream_Draw,
      Stream_Read,
      Stream_Copy,
      Static_Draw,
      Static_Read,
      Static_Copy,
      Dynamic_Draw,
      Dynamic_Read,
      Dynamic_Copy
     );


   type Buffer_Target is
     (
      Array_Buffer,
      Element_Array_Buffer,
      Pixel_Pack_Buffer,
      Pixel_Unpack_Buffer,
      Uniform_Buffer,
      Texture_Buffer,
      Transform_Feedback_Buffer,
      Copy_Read_Buffer,
      Copy_Write_Buffer,
      Draw_Inderect_Buffer,
      Shader_Storage_Buffer,
      Dispatch_Inderect_Buffer,
      Query_Buffer,
      Atomic_Counter_Buffer
     );



private


   use GL.C;
   use System;


   for Buffer_Usage'Size use GLenum'Size;
   for Buffer_Target'Size use GLenum'Size;


   for Buffer_Usage use
     (
      Stream_Draw => 16#88E0#,
      Stream_Read => 16#88E1#,
      Stream_Copy => 16#88E2#,
      Static_Draw => 16#88E4#,
      Static_Read => 16#88E5#,
      Static_Copy => 16#88E6#,
      Dynamic_Draw => 16#88E8#,
      Dynamic_Read => 16#88E9#,
      Dynamic_Copy => 16#88EA#
     );


   for Buffer_Target use
     (
      Array_Buffer              => 16#8892#,
      Element_Array_Buffer      => 16#8893#,
      Pixel_Pack_Buffer         => 16#88EB#,
      Pixel_Unpack_Buffer       => 16#88EC#,
      Uniform_Buffer            => 16#8A11#,
      Texture_Buffer            => 16#8C2A#,
      Transform_Feedback_Buffer => 16#8C8E#,
      Copy_Read_Buffer          => 16#8F36#,
      Copy_Write_Buffer         => 16#8F37#,
      Draw_Inderect_Buffer      => 16#8F3F#,
      Shader_Storage_Buffer     => 16#90D2#,
      Dispatch_Inderect_Buffer  => 16#90EE#,
      Query_Buffer              => 16#9192#,
      Atomic_Counter_Buffer     => 16#92C0#
     );


end;
