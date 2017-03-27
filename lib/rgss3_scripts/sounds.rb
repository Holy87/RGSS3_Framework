#==============================================================================
# ** Sound
#------------------------------------------------------------------------------
#  This module plays sound effects. It obtains sound effects specified in the
# database from the global variable $data_system, and plays them.
#==============================================================================

module Sound

  # System Sound Effect
  # @return[RPG::SE]
  def self.play_system_sound(n)
    $data_system.sounds[n].play
  end

  # Cursor Movement
  # @return[RPG::SE]
  def self.play_cursor
    play_system_sound(0)
  end

  # Decision
  # @return[RPG::SE]
  def self.play_ok
    play_system_sound(1)
  end

  # Cancel
  # @return[RPG::SE]
  def self.play_cancel
    play_system_sound(2)
  end

  # Buzzer
  # @return[RPG::SE]
  def self.play_buzzer
    play_system_sound(3)
  end

  # Equip
  # @return[RPG::SE]
  def self.play_equip
    play_system_sound(4)
  end

  # Save
  # @return[RPG::SE]
  def self.play_save
    play_system_sound(5)
  end

  # Load
  # @return[RPG::SE]
  def self.play_load
    play_system_sound(6)
  end

  # Battle Start
  # @return[RPG::SE]
  def self.play_battle_start
    play_system_sound(7)
  end

  # Escape
  # @return[RPG::SE]
  def self.play_escape
    play_system_sound(8)
  end

  # Enemy Attack
  # @return[RPG::SE]
  def self.play_enemy_attack
    play_system_sound(9)
  end

  # Enemy Damage
  # @return[RPG::SE]
  def self.play_enemy_damage
    play_system_sound(10)
  end

  # Enemy Collapse
  # @return[RPG::SE]
  def self.play_enemy_collapse
    play_system_sound(11)
  end

  # Boss Collapse 1
  # @return[RPG::SE]
  def self.play_boss_collapse1
    play_system_sound(12)
  end

  # Boss Collapse 2
  # @return[RPG::SE]
  def self.play_boss_collapse2
    play_system_sound(13)
  end

  # Actor Damage
  # @return[RPG::SE]
  def self.play_actor_damage
    play_system_sound(14)
  end

  # Actor Collapse
  # @return[RPG::SE]
  def self.play_actor_collapse
    play_system_sound(15)
  end

  # Recovery
  # @return[RPG::SE]
  def self.play_recovery
    play_system_sound(16)
  end

  # Miss
  # @return[RPG::SE]
  def self.play_miss
    play_system_sound(17)
  end

  # Evasion
  # @return[RPG::SE]
  def self.play_evasion
    play_system_sound(18)
  end

  # Magic Evasion
  # @return[RPG::SE]
  def self.play_magic_evasion
    play_system_sound(19)
  end

  # Magic Reflection
  # @return[RPG::SE]
  def self.play_reflection
    play_system_sound(20)
  end

  # Shop
  # @return[RPG::SE]
  def self.play_shop
    play_system_sound(21)
  end

  # Use Item
  # @return[RPG::SE]
  def self.play_use_item
    play_system_sound(22)
  end

  # Use Skill
  # @return[RPG::SE]
  def self.play_use_skill
    play_system_sound(23)
  end

end
