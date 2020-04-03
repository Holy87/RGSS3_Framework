class Bitmap
  # @return [Integer] width
  attr_reader :width
  # @return [Integer] height
  attr_reader :height
  # @return [Font] font
  attr_accessor :font
  # @param [Integer, String] param1
  # @param [Integer] param2
  def initialize(param1, param2 = nil)
    fail NotImplementedError
  end

  def dispose
    fail NotImplementedError
  end

  def disposed?
    fail NotImplementedError
  end

  # @param [Integer] x
  # @param [Integer] y
  # @param [Bitmap] src_bitmap
  # @param [Rect] src_rect
  # @param [Integer] opacity
  def blt(x, y, src_bitmap, src_rect, opacity = 255)
    fail NotImplementedError
  end

  # @param [Rect] dest_rect
  # @param [Bitmap] src_bitmap
  # @param [Rect] src_rect
  # @param [Integer] opacity
  def stretch_blt(dest_rect, src_bitmap, src_rect, opacity = 255)
    fail NotImplementedError
  end

  def fill_rect(*args)
    fail NotImplementedError
  end

  def gradient_fill_rect(*args)
    fail NotImplementedError
  end

  def clear
    fail NotImplementedError
  end

  def clear_rect(*args)
    fail NotImplementedError
  end

  # @param [Integer] x
  # @param [Integer] y
  # @return [Color]
  def get_pixel(x, y)
    fail NotImplementedError
  end

  # @param [Integer] x
  # @param [Integer] y
  # @param [Color] color
  def set_pixel(x, y, color)
    fail NotImplementedError
  end

  # @param [Integer] hue
  def hue_change(hue)
    fail NotImplementedError
  end

  def blur
    fail NotImplementedError
  end

  # @param [Integer] angle
  # @param [Integer] division
  def radial_blur(angle, division)
    fail NotImplementedError
  end

  # @param [Integer] x
  # @param [Integer] y
  # @param [Integer] width
  # @param [Integer] height
  # @param [String] str
  # @param [Integer] align
  def draw_text(x, y, width, height, str, align = 0)
    fail NotImplementedError
  end

  # @return [Rect]
  # @param [String] str
  def text_size(str)
    fail NotImplementedError
  end
end

class Color
  # @return [Integer] red
  attr_accessor :red
  # @return [Integer] green
  attr_accessor :green
  # @return [Integer] blue
  attr_accessor :blue
  # @return [Integer] alpha
  attr_accessor :alpha
  # @param [Integer] red
  # @param [Integer] green
  # @param [Integer] blue
  # @param [Integer] alpha
  def initialize(red = 0, green = 0, blue = 0, alpha = 255)
    fail NotImplementedError
  end

  # @param [Integer] red
  # @param [Integer] green
  # @param [Integer] blue
  # @param [Integer] alpha
  def set(red, green = 0, blue = 0, alpha = 255)
    fail NotImplementedError
  end
end

class Font
  # @return [String, Array<String>] name
  attr_accessor :name
  # @return [Integer] size
  attr_accessor :size
  attr_accessor :bold
  attr_accessor :italic
  attr_accessor :shadow
  # @return [Color] color
  attr_accessor :color
  attr_accessor :outline
  # @return [Color] out_color
  attr_accessor :out_color
  # @return [String, Array<String>] default_name
  attr_accessor :default_name
  # @return [Integer] default_size
  attr_accessor :default_size
  attr_accessor :default_bold
  attr_accessor :default_italic
  attr_accessor :default_shadow
  attr_accessor :default_outline
  # @return [Color] default_color
  attr_accessor :default_color
  # @return [Color] default_out_color
  attr_accessor :default_out_color
# @param [String, Array<String>] name
# @param [Integer] size
  def initialize(name, size = 0)
    fail NotImplementedError
  end
end

class Plane
  # @return [Bitmap] bitmap
  attr_accessor :bitmap
  # @return [Viewport] viewport
  attr_accessor :viewport
  attr_accessor :visible
  # @return [Integer] z
  attr_accessor :z
  # @return [Integer] ox
  attr_accessor :ox
  # @return [Integer] oy
  attr_accessor :oy
  # @return [Float] zoom_x
  attr_accessor :zoom_x
  # @return [Float] zoom_y
  attr_accessor :zoom_y
  # @return [Integer] opacity
  attr_accessor :opacity
  # @return [Integer] blend_type
  attr_accessor :blend_type
  # @return [Color] color
  attr_accessor :color
  # @return [Tone] tone
  attr_accessor :tone
  # @param [Viewport] viewport
  def initialize(viewport = nil)
    fail NotImplementedError
  end

  def dispose
    fail NotImplementedError
  end

  def disposed?
    fail NotImplementedError
  end
end

class Rect
  # @return [Integer] x
  attr_accessor :x
  # @return [Integer] y
  attr_accessor :y
  # @return [Integer] width
  attr_accessor :width
  # @return [Integer] height
  attr_accessor :height

  def initialize(x = 0, y = 0, width = 0, height = 0)
    fail NotImplementedError
  end

  def set(x, y, width, height)
    fail NotImplementedError
  end

  def empty
    fail NotImplementedError
  end
end

class Sprite
  # @return [Bitmap] bitmap
  attr_accessor :bitmap
  # @return [Rect] src_rect
  attr_accessor :src_rect
  attr_accessor :visible
  attr_accessor :x
  # @return [Integer] x
  attr_accessor :y
  # @return [Integer] y
  attr_accessor :z
  # @return [Integer] ox
  attr_accessor :ox
  # @return [Integer] oy
  attr_accessor :oy
  # @return [Float] zoom_x
  attr_accessor :zoom_x
  # @return [Float] zoom_y
  attr_accessor :zoom_y
  # @return [Integer] angle
  attr_accessor :angle
  # @return [Integer] wave_amp
  attr_accessor :wave_amp
  # @return [Integer] wave_length
  attr_accessor :wave_length
  # @return [Integer] wave_speed
  attr_accessor :wave_speed
  # @return [Integer] wave_phase
  attr_accessor :wave_phase
  attr_accessor :mirror
  # @return [Integer] bush_depth
  attr_accessor :bush_depth
  # @return [Integer] opacity
  attr_accessor :opacity
  # @return [Integer] blend_type
  attr_accessor :blend_type
  # @return [Color] color
  attr_accessor :color
  # @return [Tone] tone
  attr_accessor :tone

  def initialize(viewport = nil)
    fail NotImplementedError
  end

  def dispose
    fail NotImplementedError
  end

  def disposed?
    fail NotImplementedError
  end

  # @param [Color] color
  # @param [Integer] duration
  def flash(color, duration)
    fail NotImplementedError
  end

  def update
    fail NotImplementedError
  end

  # @return [Integer]
  def width
    fail NotImplementedError
  end

  # @return [Integer]
  def height
    fail NotImplementedError
  end
end

class Table
  # @return [Array] []
  attr_accessor :[]

  def initialize(xsize, ysize = 0, zsize = 0)
    fail NotImplementedError
  end

  def resize(xsize, ysize = 0, zsize = 0)
    fail NotImplementedError
  end

  def xsize
    fail NotImplementedError
  end

  def ysize
    fail NotImplementedError
  end

  def zsize
    fail NotImplementedError
  end
end

class Tilemap
  # @return [Array<Bitmap>]
  attr_accessor :bitmaps
  # @return [Table] map_data
  attr_accessor :map_data
  # @return [Table] flash_data
  attr_accessor :flash_data
  # @return [Table] flags
  attr_accessor :flags
  # @return [Viewport] viewport
  attr_accessor :viewport
  attr_accessor :visible
  # @return [Integer] ox
  attr_accessor :ox
  # @return [Integer] oy
  attr_accessor :oy
  # @param [Viewport] viewport
  def initialize(viewport = nil)
    fail NotImplementedError
  end
  # deletes the Tilemap
  def dispose
    fail NotImplementedError
  end
  # determines if the tilemap is disposed
  def disposed?
    fail NotImplementedError
  end
  # updates the tilemap
  def update
    fail NotImplementedError
  end
end

class Tone
  # @return [Integer]
  attr_accessor :red
  # @return [Integer]
  attr_accessor :green
  # @return [Integer]
  attr_accessor :blue
  # @return [Integer]
  attr_accessor :gray
  # @param [Integer] red
  # @param [Integer] green
  # @param [Integer] blue
  # @param [Integer] gray
  def initialize(red, green, blue, gray = 0)
    fail NotImplementedError
  end

  # @param [Integer] red
  # @param [Integer] green
  # @param [Integer] blue
  # @param [Integer] gray
  def set(red, green, blue, gray = 0)
    fail NotImplementedError
  end
end

class Viewport
  attr_accessor :visible
  # @return [Rect] rect
  attr_accessor :rect
  # @return [Integer] z
  attr_accessor :z
  # @return [Integer] ox
  attr_accessor :ox
  # @return [Integer] oy
  attr_accessor :oy
  # @return [Color] color
  attr_accessor :color
  # @return [Tone] tone
  attr_accessor :tone

  def initialize(x = nil, y = nil, width = nil, height = nil)
    fail NotImplementedError
  end

  # disposes the viewport
  def dispose
    fail NotImplementedError
  end

  # determines if the viewport is disposed
  def disposed?
    fail NotImplementedError
  end

  # viewport flash effect
  # @param [Color] color
  # @param [Integer] duration
  def flash(color, duration)
    fail NotImplementedError
  end

  # update the viewport (flash)
  def update
    fail NotImplementedError
  end
end

class Window
  # @return [Bitmap] the bitmap containing the windowskin (Window.png image)
  attr_accessor :windowskin
  # @return [Bitmap] the bitmap containing the window contents
  attr_accessor :contents
  # @return [Rect]
  attr_accessor :cursor_rect
  # @return [Viewport]
  attr_accessor :viewport
  attr_accessor :active
  attr_accessor :visible
  attr_accessor :arrows_visible
  attr_accessor :pause
  # @return [Integer] the X coordinate
  attr_accessor :x
  # @return [Integer] the Y coordinate
  attr_accessor :y
  # @return [Integer]
  attr_accessor :width
  # @return [Integer]
  attr_accessor :height
  # @return [Integer]
  attr_accessor :z
  # @return [Integer]
  attr_accessor :ox
  # @return [Integer]
  attr_accessor :oy
  # @return [Integer]
  attr_accessor :padding
  # @return [Integer]
  attr_accessor :padding_bottom
  # @return [Integer]
  attr_accessor :opacity
  # @return [Integer]
  attr_accessor :back_opacity
  # @return [Integer]
  attr_accessor :contents_opacity
  # @return [Integer]
  attr_accessor :openness
  # @return [Tone]
  attr_accessor :tone

  # @param [Integer] x
  # @param [Integer] y
  # @param [Integer] width
  # @param [Integer] height
  def initialize(x = 0, y = 0, width = 0, height = 0)
    fail NotImplementedError
  end

  # disposes the window
  def dispose
    fail NotImplementedError
  end

  # determines if the window is disposed
  def disposed?
    fail NotImplementedError
  end

  # updates the window
  def update
    fail NotImplementedError
  end

  # moves the window on another screen position
  # @param [Integer] x
  # @param [Integer] y
  # @param [Integer] width
  # @param [Integer] height
  def move(x, y, width, height)
    fail NotImplementedError
  end

  # determines if the window is opened totally (openness == 255)
  def open?
    fail NotImplementedError
  end

  # determines if the window is totally closed (openness == 0)
  def close?
    fail NotImplementedError
  end
end

class RGSSError < StandardError
end
class RGSSReset < Exception
end