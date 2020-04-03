#==============================================================================
# ** Game_ActionResult
#  This class handles the results of battle actions. It is used internally for
# the Game_Battler class. 
#==============================================================================

class Game_ActionResult
  # Public Instance Variables
  attr_accessor :used # used flag
  attr_accessor :missed # missed flag
  attr_accessor :evaded # evaded flag
  attr_accessor :critical # critical flag
  attr_accessor :success # success flag
  # @attr[Integer]
  attr_accessor :hp_damage # HP damage
  # @attr[Integer]
  attr_accessor :mp_damage # MP damage
  # @attr[Integer]
  attr_accessor :tp_damage # TP damage
  # @attr[Integer]
  attr_accessor :hp_drain # HP drain
  # @attr[Integer]
  attr_accessor :mp_drain # MP drain
  # @attr[Array<Integer>]
  attr_accessor :added_states # added states
  # @attr[Array<Integer>]
  attr_accessor :removed_states # removed states
  # @attr[Array<Integer>]
  attr_accessor :added_buffs # added buffs
  # @attr[Array<Integer>]
  attr_accessor :added_debuffs # added debuffs
  # @attr[Array<Integer>]
  attr_accessor :removed_buffs # removed buffs/debuffs
  # Object Initialization
  def initialize(battler)
    fail NotImplementedError
  end

  # Clear
  def clear
    fail NotImplementedError
  end

  # Clear Hit Flags
  def clear_hit_flags
    fail NotImplementedError
  end

  # Clear Damage Values
  def clear_damage_values
    fail NotImplementedError
  end

  # Create Damage
  def make_damage(value, item)
    fail NotImplementedError
  end

  # Clear Status Effects
  def clear_status_effects
    fail NotImplementedError
  end

  # Get Added States as an Object Array
  # @return [Array<RPG::State>]
  def added_state_objects
    fail NotImplementedError
  end

  # Get Removed States as an Object Array
  # @return [Array<RPG::State>]
  def removed_state_objects
    fail NotImplementedError
  end

  # Determine Whether Some Sort of Status (Parameter or State) Was Affected
  def status_affected?
    fail NotImplementedError
  end

  # Determine Final Hit 
  def hit?
    fail NotImplementedError
  end

  # Get Text for HP Damage
  # @return [String]
  def hp_damage_text
    fail NotImplementedError
  end

  # Get Text for MP Damage
  # @return [String]
  def mp_damage_text
    fail NotImplementedError
  end

  # Get Text for TP Damage
  # @return [String]
  def tp_damage_text
    fail NotImplementedError
  end
end
