class Bitmap
  # @attr [Font] font
  # @attr [Integer] width
  # @attr [Integer] height
  attr_reader :width
  attr_reader :height
  attr_accessor :font
# @param [Integer, String] param1
# @param [Integer] param2
  def initialize(param1, param2 = nil);end
  def dispose;end
  def disposed?;end

# @param [Integer] x
# @param [Integer] y
# @param [Bitmap] src_bitmap
# @param [Rect] src_rect
# @param [Integer] opacity
  def blt(x, y, src_bitmap, src_rect, opacity = 255); end

  # @param [Rect] dest_rect
  # @param [Bitmap] src_bitmap
  # @param [Rect] src_rect
  # @param [Integer] opacity
  def stretch_blt(dest_rect, src_bitmap, src_rect, opacity = 255); end
  def fill_rect(*args);end
  def gradient_fill_rect(*args);end
  def clear;end
  def clear_rect(*args);end

# @param [Integer] x
# @param [Integer] y
# @return [Color]
  def get_pixel(x, y);end

# @param [Integer] x
# @param [Integer] y
# @param [Color] color
  def set_pixel(x, y, color);end

# @param [Integer] hue
  def hue_change(hue);end
  def blur;end

# @param [Integer] angle
# @param [Integer] division
  def radial_blur(angle, division);end
# @param [Integer] x
# @param [Integer] y
# @param [Integer] width
# @param [Integer] height
# @param [String] str
# @param [Integer] align
  def draw_text(x, y, width, height, str, align = 0);end
# @return [Integer]
# @param [String] str
  def text_size(str);end
end

class Color
  # @attr [Integer] red
  # @attr [Integer] green
  # @attr [Integer] blue
  # @attr [Integer] alpha
  attr_accessor :red
  attr_accessor :green
  attr_accessor :blue
  attr_accessor :alpha
  # @param [Integer] red
  # @param [Integer] green
  # @param [Integer] blue
  # @param [Integer] alpha
  def initialize(red = 0, green = 0, blue = 0, alpha = 255);end
  # @param [Integer] red
  # @param [Integer] green
  # @param [Integer] blue
  # @param [Integer] alpha
  def set(red, green = 0, blue = 0, alpha = 255);end
end

class Font
  # @attr [String, Array<String>] name
  # @attr [Integer] size
  # @attr [Color] color
  # @attr [Color] out_color
  # @attr [String, Array<String>] default_name
  # @attr [Integer] default_size
  # @attr [Color] default_color
  # @attr [Color] default_out_color
  attr_accessor :name
  attr_accessor :size
  attr_accessor :bold
  attr_accessor :italic
  attr_accessor :shadow
  attr_accessor :color
  attr_accessor :outline
  attr_accessor :out_color
  attr_accessor :default_name
  attr_accessor :default_size
  attr_accessor :default_bold
  attr_accessor :default_italic
  attr_accessor :default_shadow
  attr_accessor :default_outline
  attr_accessor :default_color
  attr_accessor :default_out_color
# @param [String, Array<String>] name
# @param [Integer] size
  def initialize(name, size = 0);end
end

class Plane
  # @attr [Bitmap] bitmap
  # @attr [Viewport] viewport
  # @attr [Integer] z
  # @attr [Integer] ox
  # @attr [Integer] oy
  # @attr [Float] zoom_x
  # @attr [Float] zoom_y
  # @attr [Integer] opacity
  # @attr [Integer] blend_type
  # @attr [Color] color
  # @attr [Tone] tone
  attr_accessor :bitmap
  attr_accessor :viewport
  attr_accessor :visible
  attr_accessor :z
  attr_accessor :ox
  attr_accessor :oy
  attr_accessor :zoom_x
  attr_accessor :zoom_y
  attr_accessor :opacity
  attr_accessor :blend_type
  attr_accessor :color
  attr_accessor :tone
  # @param [Viewport] viewport
  def initialize(viewport=nil);end
  def dispose;end
  def disposed?;end
end

class Rect
  attr_accessor :x, :y, :width, :height
  def initialize(x = 0,y = 0,width = 0,height = 0)
  end
  def set(x, y, width, height);end
  def empty;end
end

class Sprite
  # @attr [Bitmap] bitmap
  # @attr [Rect] src_rect
  # @attr [Integer] x
  # @attr [Integer] y
  # @attr [Integer] ox
  # @attr [Integer] oy
  # @attr [Float] zoom_x
  # @attr [Float] zoom_y
  # @attr [Integer] angle
  # @attr [Integer] wave_amp
  # @attr [Integer] wave_length
  # @attr [Integer] wave_speed
  # @attr [Integer] wave_phase
  # @attr [Integer] bush_depth
  # @attr [Integer] opacity
  # @attr [Integer] blend_type
  # @attr [Color] color
  # @attr [Tone] tone
  attr_accessor :bitmap
  attr_accessor :src_rect
  attr_accessor :visible
  attr_accessor :x
  attr_accessor :y
  attr_accessor :z
  attr_accessor :ox
  attr_accessor :oy
  attr_accessor :zoom_x
  attr_accessor :zoom_y
  attr_accessor :angle
  attr_accessor :wave_amp
  attr_accessor :wave_length
  attr_accessor :wave_speed
  attr_accessor :wave_phase
  attr_accessor :mirror
  attr_accessor :bush_depth
  attr_accessor :opacity
  attr_accessor :blend_type
  attr_accessor :color
  attr_accessor :tone

  def initialize(viewport=nil);end
  def dispose;end
  def disposed?;end
  # @param [Color] color
  # @param [Integer] duration
  def flash(color, duration);end
  def update; end
# @return [Integer]
  def width; end
# @return [Integer]
  def height; end
end

class Table
  # @attr [Array] []
  attr_accessor :[]
  def initialize(xsize, ysize = 0, zsize = 0); end
  def resize(xsize, ysize = 0, zsize = 0); end
  def xsize; end
  def ysize; end
  def zsize; end
end

class Tilemap
  # @attr [Array<Bitmap>] bitmaps
  # @attr [Table] map_data
  # @attr [Table] flash_data
  # @attr [Table] flags
  # @attr [Viewport] viewport
  # @attr [Integer] ox
  # @attr [Integer] oy
  attr_accessor :bitmaps
  attr_accessor :map_data
  attr_accessor :flash_data
  attr_accessor :flags
  attr_accessor :viewport
  attr_accessor :visible
  attr_accessor :ox
  attr_accessor :oy
  # @param [Viewport] viewport
  def initialize(viewport = nil); end
  def dispose; end
  def disposed?; end
  def update; end
end

class Tone
  # @attr [Integer] red
  # @attr [Integer] green
  # @attr [Integer] blue
  # @attr [Integer] gray
  attr_accessor :red
  attr_accessor :green
  attr_accessor :blue
  attr_accessor :gray
  # @param [Integer] red
  # @param [Integer] green
  # @param [Integer] blue
  # @param [Integer] gray
  def initialize(red, green, blue, gray = 0);end
  # @param [Tone] tone
  def set(tone); end
end

class Viewport
  # @attr [Rect] rect
  # @attr [Integer] z
  # @attr [Integer] ox
  # @attr [Integer] oy
  # @attr [Color] color
  # @attr [Tone] tone
  attr_accessor :rect
  attr_accessor :visible
  attr_accessor :z
  attr_accessor :ox
  attr_accessor :oy
  attr_accessor :color
  attr_accessor :tone

  def initialize(x = nil, y = nil, width = nil, height = nil);end
  def dispose;end
  def disposed?;end
  # @param [Color] color
  # @param [Integer] duration
  def flash(color, duration);end
  def update;end
end

class Window
  # @attr [Bitmap] windowskin
  # @attr [Bitmap] contents
  # @attr [Rect] cursor_rect
  # @attr [Viewport] viewport
  # @attr [Integer] x
  # @attr [Integer] y
  # @attr [Integer] width
  # @attr [Integer] height
  # @attr [Integer] z
  # @attr [Integer] ox
  # @attr [Integer] oy
  # @attr [Integer] padding
  # @attr [Integer] padding_bottom
  # @attr [Integer] opacity
  # @attr [Integer] back_opacity
  # @attr [Integer] contents_opacity
  # @attr [Integer] openness
  # @attr [Tone] tone
  attr_accessor :windowskin
  attr_accessor :contents
  attr_accessor :cursor_rect
  attr_accessor :viewport
  attr_accessor :active
  attr_accessor :visible
  attr_accessor :arrows_visible
  attr_accessor :pause
  attr_accessor :x
  attr_accessor :y
  attr_accessor :width
  attr_accessor :height
  attr_accessor :z
  attr_accessor :ox
  attr_accessor :oy
  attr_accessor :padding
  attr_accessor :padding_bottom
  attr_accessor :opacity
  attr_accessor :back_opacity
  attr_accessor :contents_opacity
  attr_accessor :openness
  attr_accessor :tone
# @param [Integer] x
# @param [Integer] y
# @param [Integer] width
# @param [Integer] height
  def initialize(x = 0, y = 0, width = 0, height = 0); end
  def dispose; end
  def disposed?; end
  def update; end

# @param [Integer] x
# @param [Integer] y
# @param [Integer] width
  # @param [Integer] height
  def move(x, y, width, height); end
  def open?; end
  def close?; end
end

class RGSSError < StandardError; end
class RGSSReset < Exception; end