module Audio
  # plays an audio BGM
  # @param [String] filename
  # @param [Integer] volume volume from 0 to 100
  # @param [Integer] pitch pitch from 50 to 150
  def self.bgm_play(filename, volume = 100, pitch = 100)
    fail NotImplementedError
  end

  # stop the playing BGM
  def self.bgm_stop
    fail NotImplementedError
  end

  # fades the BGM
  def self.bgm_fade(time)
    fail NotImplementedError
  end

  # plays an audio BGS
  # @param [String] filename
  # @param [Integer] volume
  # @param [Integer] pitch
  def self.bgs_play(filename, volume = 100, pitch = 100)
    fail NotImplementedError
  end

  def self.bgs_stop
    fail NotImplementedError
  end

  def self.bgs_fade(time)
    fail NotImplementedError
  end

  # @param [String] filename
  # @param [Integer] volume
  # @param [Integer] pitch
  def self.me_play(filename, volume = 100, pitch = 100)
    fail NotImplementedError
  end

  def self.me_stop
    fail NotImplementedError
  end

  def self.me_fade(time)
    fail NotImplementedError
  end

  # @param [String] filename
  # @param [Integer] volume
  # @param [Integer] pitch
  def self.se_play(filename, volume = 100, pitch = 100)
    fail NotImplementedError
  end

  def self.se_stop
    fail NotImplementedError
  end
end

module Graphics
  class << self
    # @return [Integer] the frame count (from the game start)
    attr_accessor :frame_count
    # @return [Integer] the frame rate (default: 60)
    attr_accessor :frame_rate
    # @return [Integer] the screen brightness
    attr_accessor :brightness
  end

  def self.update
    fail NotImplementedError
  end

  # @param [Integer] duration
  def self.wait(duration)
    fail NotImplementedError
  end

  # @param [Integer] duration
  def self.fadeout(duration)
    fail NotImplementedError
  end

  # @param [Integer] duration
  def self.fadein(duration)
    fail NotImplementedError
  end

  def self.freeze
    fail NotImplementedError
  end

  def self.transition(duration = 0, filename = "", vague = 0)
    fail NotImplementedError
  end

  # @return[Bitmap]
  def self.snap_to_bitmap
    fail NotImplementedError
  end

  def self.frame_reset
    fail NotImplementedError
  end

  # @return [Integer]
  def self.width
    fail NotImplementedError
  end

  # @return [Integer]
  def self.height
    fail NotImplementedError
  end

  # @param [Integer] width
  # @param [Integer] height
  def self.resize_screen(width, height)
    fail NotImplementedError
  end
end

module Input

  LEFT =  :LEFT
  UP =    :UP
  RIGHT = :RIGHT
  DOWN =  :DOWN
  A =     :A
  B =     :B
  C =     :C
  X =     :X
  Y =     :Y
  Z =     :Z
  L =     :L
  R =     :R
  SHIFT = :SHIFT
  CTRL =  :CTRL
  ALT =   :ALT
  F5 =    :F5
  F6 =    :F6
  F7 =    :F7
  F8 =    :F8
  F9 =    :F9

  def self.update
    fail NotImplementedError
  end

  def self.press?(symbol)
    fail NotImplementedError
  end

  def self.trigger?(symbol)
    fail NotImplementedError
  end

  def self.repeat?(symbol)
    fail NotImplementedError
  end

  def self.dir4
    fail NotImplementedError
  end

  def self.dir8
    fail NotImplementedError
  end

  def self.typing?
    fail NotImplementedError
  end

  def self.key_type
    fail NotImplementedError
  end
end

module RPG
  fail NotImplementedError
end