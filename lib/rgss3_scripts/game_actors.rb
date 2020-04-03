#==============================================================================
# ** Game_Actors
#  This is a wrapper for an actor array. Instances of this class are referenced
# by $game_actors.
#==============================================================================

class Game_Actors
  # Object Initialization
  def initialize
    @data = []
  end

  # Get Actor
  # @return [Array<Game_Actor>]
  def [](actor_id)
    return nil unless $data_actors[actor_id]
    @data[actor_id] ||= Game_Actor.new(actor_id)
  end
end
