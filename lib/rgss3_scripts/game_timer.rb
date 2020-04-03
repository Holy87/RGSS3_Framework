#==============================================================================
# ** Game_Timer
#  This class handles timers. Instances of this class are referenced by 
# $game_timer.
#==============================================================================

class Game_Timer
  # Object Initialization
  def initialize
    @count = 0
    @working = false
  end

  # Frame Update
  def update
    if @working && @count > 0
      @count -= 1
      on_expire if @count == 0
    end
  end

  # Start
  def start(count)
    @count = count
    @working = true
  end

  # Stop
  def stop
    @working = false
  end

  # Determine if Working
  def working?
    @working
  end

  # Get Seconds
  # @return [Integer]
  def sec
    @count / Graphics.frame_rate
  end

  # Processing When Timer Reaches 0
  def on_expire
    BattleManager.abort
  end
end
