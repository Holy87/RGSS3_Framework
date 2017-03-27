module Audio
  # @param [String] filename
  # @param [Integer] volume
  # @param [Integer] pitch
  def self.bgm_play(filename, volume=100, pitch = 100);end
  def self.bgm_stop;end
  def self.bgm_fade(time);end
  # @param [String] filename
  # @param [Integer] volume
  # @param [Integer] pitch
  def self.bgs_play(filename, volume = 100, pitch = 100);end
  def self.bgs_stop;end
  def self.bgs_fade(time);end
  # @param [String] filename
  # @param [Integer] volume
  # @param [Integer] pitch
  def self.me_play(filename, volume = 100, pitch = 100);end
  def self.me_stop;end
  def self.me_fade(time);end
  # @param [String] filename
  # @param [Integer] volume
  # @param [Integer] pitch
  def self.se_play(filename, volume = 100, pitch = 100);end
  def self.se_stop;end
end

module Graphics
  # @attr [Integer] frame_count
  # @attr [Integer] frame_rate
  # @attr [Integer] brightness
  attr_accessor :frame_count
  attr_accessor :frame_rate
  attr_accessor :brightness
  @frame_rate = 60
  @frame_count = 0
  @brightness = 255

  def self.update;end

  # @param [Integer] duration
  def self.wait(duration);end

  # @param [Integer] duration
  def self.fadeout(duration);end

  # @param [Integer] duration
  def self.fadein(duration);end
  def self.freeze;end
  def self.transition(duration = 0, filename = "", vague = 0); end
  # @return[Bitmap]
  def self.snap_to_bitmap;end
  def self.frame_reset;end

  # @return [Integer]
  def self.width;end

  # @return [Integer]
  def self.height;end

  # @param [Integer] width
  # @param [Integer] height
  def self.resize_screen(width, height);end
end

module Input
  def self.update;end
  def self.press?(symbol);end
  def self.trigger?(symbol);end
  def self.repeat?(symbol);end
  def self.dir4;end
  def self.dir8;end
  def self.typing?; end
  def self.key_type; end
end

module RPG; end