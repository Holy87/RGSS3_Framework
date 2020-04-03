#==============================================================================
# ** Game_Action
#  This class handles battle actions. This class is used within the
# Game_Battler class.
#==============================================================================

class Game_Action
  # Public Instance Variables
  # @return [Game_Battler] action subject
  attr_reader :subject
  # forcing flag for battle action
  attr_reader :forcing
  # @return [Game_BaseItem] skill/item
  attr_reader :item
  # @return [Integer] the target index
  attr_accessor :target_index # target index
  # @return [Integer] evaluation value for auto battle
  attr_reader :value

  # Object Initialization
  # @param [Game_Battler] subject
  # @param [Boolean] forcing
  def initialize(subject, forcing = false)
    fail NotImplementedError
  end

  # Clear
  def clear
    fail NotImplementedError
  end

  # Get Allied Units
  # @return [Game_Troop,Game_Party]
  def friends_unit
    fail NotImplementedError
  end

  # Get Enemy Units
  # @return [Game_Troop,Game_Party]
  def opponents_unit
    fail NotImplementedError
  end

  # Set Battle Action of Enemy Character
  # @param [RPG::Enemy::Action] action
  def set_enemy_action(action)
    fail NotImplementedError
  end

  # Set Normal Attack
  def set_attack
    fail NotImplementedError
  end

  # Set Guard
  def set_guard
    fail NotImplementedError
  end

  # Set Skill
  def set_skill(skill_id)
    fail NotImplementedError
  end

  # Set Item
  # @param [Integer] item_id
  def set_item(item_id)
    fail NotImplementedError
  end

  # Get Item Object
  # @return [RPG::UsableItem]
  def item
    fail NotImplementedError
  end

  # Normal Attack Determination
  # @return [Boolean]
  def attack?
    fail NotImplementedError
  end

  # Random Target
  def decide_random_target
    fail NotImplementedError
  end

  # Set Confusion Action
  def set_confusion
    fail NotImplementedError
  end

  # Action Preparation
  def prepare
    fail NotImplementedError
  end

  # Determination if Action is Valid or Not
  #    Assuming that an event command does not cause [Force Battle Action],
  #    if state limitations or lack of items, etc. make the planned action
  #    impossible, return false.
  def valid?
    fail NotImplementedError
  end

  # Calculate Action Speed
  # @return [Integer]
  def speed
    fail NotImplementedError
  end

  # Create Target Array
  # @return [Array<Game_Battler>]
  def make_targets
    fail NotImplementedError
  end

  # Target When Confused
  # @return [Game_Battler]
  def confusion_target
    fail NotImplementedError
  end

  # Targets for Opponents
  # @return [Array<Game_Battler>]
  def targets_for_opponents
    fail NotImplementedError
  end

  # Targets for Allies
  # @return [Array<Game_Battler>]
  def targets_for_friends
    fail NotImplementedError
  end

  # Evaluate Value of Action (for Auto Battle)
  #    @value and @target_index are automatically set.
  def evaluate
    fail NotImplementedError
  end

  # Evaluate Skill/Item
  def evaluate_item
    fail NotImplementedError
  end

  # Get Use Target Candidates for Skills/Items
  def item_target_candidates
    fail NotImplementedError
  end

  # Evaluate Skill/Item (Target Specification)
  # @return [Float]
  def evaluate_item_with_target(target)
    fail NotImplementedError
  end
end
