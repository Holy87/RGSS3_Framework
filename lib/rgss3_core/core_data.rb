class RPG::Map
  # map display name
  # @return [String] display_name
  attr_accessor :display_name
  # map tileset id
  # @return [Integer] tileset_id
  attr_accessor :tileset_id
  # map width
  # @return [Integer] width in tiles
  attr_accessor :width
  # map height
  # @return [Integer] height in tiles
  attr_accessor :height
  # map scroll type
  # @return [Integer] scroll_type
  attr_accessor :scroll_type
  # specify battleback flag
  # @return [Boolean]
  attr_accessor :specify_battleback
  # battleback1 filename if specify battleback
  # @return [Integer] battleback1_name
  attr_accessor :battleback1_name
  # battleback2 filename if specify battleback
  # @return [Integer] battleback2_name
  attr_accessor :battleback2_name
  # autoplay BGM flag
  # @return [Boolean]
  attr_accessor :autoplay_bgm
  # autoplay BGM
  # @return [RPG::BGM] bgm
  attr_accessor :bgm
  # autoplay BGS flag
  # @return [Boolean]
  attr_accessor :autoplay_bgs
  # autoplay BGS
  # @return [RPG::BGS] bgs
  attr_accessor :bgs
  # disable dashing flag
  # @return [Boolean]
  attr_accessor :disable_dashing
  # encounter list
  # @return [Array<RPG::Map::Encounter>] encounter_list
  attr_accessor :encounter_list
  # encounter steps
  # @return [Integer] encounter_step
  attr_accessor :encounter_step
  # parallax name
  # @return [String] parallax_name
  attr_accessor :parallax_name
  # parallax loop X
  # @return [Integer] parallax_loop_x
  attr_accessor :parallax_loop_x
  # parallax loop Y
  # @return [Integer] parallax_loop_y
  attr_accessor :parallax_loop_y
  # parallax scroll X
  # @return [Integer] parallax_sx
  attr_accessor :parallax_sx
  # parallax scroll Y
  # @return [Integer] parallax_sy
  attr_accessor :parallax_sy
  # show parallax flag
  # @return [Boolean]
  attr_accessor :parallax_show
  # map notes
  # @return [String] note
  attr_accessor :note
  # map data
  # @return [Table] data
  attr_accessor :data
  # map events
  # @return [Hash<RPG::Event>] events
  attr_accessor :events

  # @param [Integer] width the map width (in tiles)
  # @param [Integer] height the map height (in tiles)
  def initialize(width, height)
    fail NotImplementedError
  end
end

class RPG::Map::Encounter
  # troop ID
  # @return [Integer] troop_id
  attr_accessor :troop_id
  # weight (encounter probability)
  # @return [Integer] weight
  attr_accessor :weight
  # region set
  # @return [Array] region_set
  attr_accessor :region_set

  def initialize
    fail NotImplementedError
  end
end

# mapinfo class. It handles the map visualization in RPG Maker edtor.
class RPG::MapInfo
  # map name
  # @return [String] name
  attr_accessor :name
  # map parent
  # @return [Integer] parent_id
  attr_accessor :parent_id
  # map order
  # @return [Integer] order
  attr_accessor :order
  # map expanded flag, shows the
  # map childs
  # @return [Boolean]
  attr_accessor :expanded
  # map scroll X position
  # @return [Integer] scroll_x
  attr_accessor :scroll_x
  # map scroll Y position
  # @return [Integer] scroll_y
  attr_accessor :scroll_y

  def initialize
    fail NotImplementedError
  end
end

class RPG::Event
  # event ID
  # @return [Integer] id
  attr_accessor :id
  # event name
  # @return [String] name
  attr_accessor :name
  # map X coord.
  # @return [Integer] x
  attr_accessor :x
  # map Y coord.
  # @return [Integer] y
  attr_accessor :y
  # event pages
  # @return [Array<RPG::Event::Page>] pages
  attr_accessor :pages

  # @param [Integer] x
  # @param [Integer] y 
  def initialize(x, y)
    fail NotImplementedError
  end
end

# page event object
class RPG::Event::Page
  # page activation condition
  # @return [RPG::Event::Page::Condition] condition
  attr_accessor :condition
  # event character graphic
  # @return [RPG::Event::Page::Graphic] graphic
  attr_accessor :graphic
  # character move type
  # @return [Integer] move_type
  attr_accessor :move_type
  # character move speed
  # @return [Integer] move_speed
  attr_accessor :move_speed
  # character move frequency
  # @return [Integer] move_frequency
  attr_accessor :move_frequency
  # move route
  # @return [RPG::MoveRoute] move_route
  attr_accessor :move_route
  # walk animation flag
  # @return [Boolean]
  attr_accessor :walk_anime
  # @return [Integer]
  # step animation flag
  attr_accessor :step_anime
  # direction fix flag
  # @return [Boolean]
  attr_accessor :direction_fix
  # pass-through flag
  # @return [Boolean]
  attr_accessor :through
  # priority type
  # @return [Integer] priority_type
  attr_accessor :priority_type
  # event trigger
  # @return [Integer] trigger
  attr_accessor :trigger
  # event commands list
  # @return [Array<RPG::EventCommand>] list
  attr_accessor :list

  def initialize
    fail NotImplementedError
  end
end

# event page condition class
class RPG::Event::Page::Condition
  # switch 1 condition flag
  # @return [Integer]
  attr_accessor :switch1_valid
  # switch 2 condition flag
  # @return [Integer]
  attr_accessor :switch2_valid
  # minimum variable condition flag
  # @return [Boolean]
  attr_accessor :variable_valid
  # self switch condition flag
  # @return [Boolean]
  attr_accessor :self_switch_valid
  # item possession condition flag
  # @return [Boolean]
  attr_accessor :item_valid
  # actor in party condition flag
  # @return [Boolean]
  attr_accessor :actor_valid
  # switch 1 condition ID
  # @return [Boolean]
  attr_accessor :switch1_id
  # switch 2 condition ID
  # @return [Boolean]
  attr_accessor :switch2_id
  # variable condition ID
  # @return [Integer]
  attr_accessor :variable_id
  # variable condition value
  # @return [Integer]
  attr_accessor :variable_value
  # self switch condition ID
  # @return [String] 
  attr_accessor :self_switch_ch
  # item condition ID
  # @return [Integer]
  attr_accessor :item_id
  # actor condition ID
  # @return [Integer]
  attr_accessor :actor_id

  def initialize
    fail NotImplementedError
  end
end

# event page graphic class
class RPG::Event::Page::Graphic
  # title ID
  # @return [Integer] title_id
  attr_accessor :tile_id
  # character filename
  # @return [String] character_name
  attr_accessor :character_name
  # character index
  # @return [Integer] character_index
  attr_accessor :character_index
  # event initial direction
  # @return [Integer] direction
  attr_accessor :direction
  # movement pattern
  # @return [Integer] pattern
  attr_accessor :pattern

  def initialize
    fail NotImplementedError
  end
end

# event command class
class RPG::EventCommand
  # event commmand code
  # @return [Integer] code
  attr_accessor :code
  # indent
  # @return [Integer] indent
  attr_accessor :indent
  # command parameters
  # @return [Array] parameters
  attr_accessor :parameters

  # @param [Integer] code
  # @param [Integer] indent
  # @param [Array] parameters
  def initialize(code = 0, indent = 0, parameters = [])
    fail NotImplementedError
  end
end

# character move route class
class RPG::MoveRoute
  # move repeat flag
  # @return [Boolean]
  attr_accessor :repeat
  # skippable flag
  # @return [Boolean]
  attr_accessor :skippable
  # wait flag
  # @return [Boolean]
  attr_accessor :wait
  # move route list
  # @return [Array<RPG::MoveCommand>]
  attr_accessor :list

  def initialize
    fail NotImplementedError
  end
end

# move command
class RPG::MoveCommand
  # movement code
  # @return [Integer]
  attr_accessor :code
  # move parameters
  # @return [Array] parameters
  attr_accessor :parameters

  # @param [Integer] code
  # @param [Array] parameters
  def initialize(code = 0, parameters = [])
    fail NotImplementedError
  end
end

# skill learning info
class RPG::Class::Learning
  # required level
  # @return [Integer] level
  attr_accessor :level
  # skill ID to learn
  # @return [Integer] skill_id
  attr_accessor :skill_id
  # note
  # @return [String] note
  attr_accessor :note

  def initialize
    fail NotImplementedError
  end
end

# base item class
class RPG::BaseItem
  # item ID
  # @return [Integer]
  attr_accessor :id
  # item name
  # @return [String]
  attr_accessor :name
  # the icon index
  # @return [Integer]
  attr_accessor :icon_index
  # item description
  # @return [String] 
  attr_accessor :description
  # item features
  # @return [Array<RPG::BaseItem::Feature>]
  attr_accessor :features
  # item notes
  # @return [String] note
  attr_accessor :note

  def initialize
    fail NotImplementedError
  end
end

# actor data class
class RPG::Actor < RPG::BaseItem
  # nickname
  # @return [String]
  attr_accessor :nickname
  # class ID
  # @return [Integer]
  attr_accessor :class_id
  # actor initial level
  # @return [Integer]
  attr_accessor :initial_level
  # actor max level
  # @return [Integer]
  attr_accessor :max_level
  # character graphic name
  # @return [String]
  attr_accessor :character_name
  # character graphic index
  # @return [Integer] character_index
  attr_accessor :character_index
  # face graphic name
  # @return [String] face_name
  attr_accessor :face_name
  # face graphic index
  # @return [Integer]
  attr_accessor :face_index
  # initial equips
  # @return [Array<Integer>] equips
  attr_accessor :equips

  def initialize
    fail NotImplementedError
  end
end

# the actor specialization class
class RPG::Class < RPG::BaseItem
  # exp parameters
  # @return [Array<Integer>] exp_params
  attr_accessor :exp_params
  # parameters
  # @return [Table] params
  attr_accessor :params
  # skill learnings array
  # @return [Array<RPG::Class::Learning>] learnings
  attr_accessor :learnings

  def initialize
    fail NotImplementedError
  end

  # the exp required for the level
  # @param [Integer] level
  # @return [Integer]
  def exp_for_level(level)
    fail NotImplementedError
  end
end

# usable item class (superclass of items/skills)
class RPG::UsableItem < RPG::BaseItem
  # the item/skill target
  # @return [Integer] scope
  attr_accessor :scope
  # the occasion to use it
  # @return [Integer]
  attr_accessor :occasion
  # battle speed
  # @return [Integer]
  attr_accessor :speed
  # animation ID
  # @return [Integer]
  attr_accessor :animation_id
  # success rate
  # @return [Integer]
  attr_accessor :success_rate
  # repeat number
  # @return [Integer]
  attr_accessor :repeats
  # tp gain
  # @return [Integer]
  attr_accessor :tp_gain
  # hit type
  # @return [Integer]
  attr_accessor :hit_type
  # damage calculation
  # @return [RPG::UsableItem::Damage] damage
  attr_accessor :damage
  # item effects
  # @return [Array<RPG::UsableItem::Effect>]
  attr_accessor :effects

  def initialize
    fail NotImplementedError
  end

  # determines if the skill is for enemies
  # @return [Boolean]
  def for_opponent?
    fail NotImplementedError
  end

  # determines if the skill is for allies
  # @return [Boolean]
  def for_friend?
    fail NotImplementedError
  end

  # determines if the skill is for dead ally
  # @return [Boolean]
  def for_dead_friend?
    fail NotImplementedError
  end

  # determines if the skill is for self
  # @return [Boolean]
  def for_user?
    fail NotImplementedError
  end

  # determines if the skill is for single target
  # @return [Boolean]
  def for_one?
    fail NotImplementedError
  end

  # determines if the skill is for random target
  # @return [Boolean]
  def for_random?
    fail NotImplementedError
  end

  # gets the number of targets
  # @return [Integer]
  def number_of_targets
    fail NotImplementedError
  end

  # determines if the skill is for all targets
  # @return [Boolean]
  def for_all?
    fail NotImplementedError
  end

  # determines if the skill needs selection
  # (if it's not for self, random or all)
  # @return [Boolean]
  def need_selection?
    fail NotImplementedError
  end

  # determines if the skill is usable in battle
  # @return [Boolean]
  def battle_ok?
    fail NotImplementedError
  end

  # determines if the skill is usable on menu
  # @return [Boolean]
  def menu_ok?
    fail NotImplementedError
  end

  # determines if the skill can't miss
  # @return [Boolean]
  def certain?
    fail NotImplementedError
  end

  # determines if the skill is physical and can miss
  # @return [Boolean]
  def physical?
    fail NotImplementedError
  end

  # determines if the skill is a magic skill
  # @return [Boolean]
  def magical?
    fail NotImplementedError
  end
end

# skill class
class RPG::Skill < RPG::UsableItem
  # the skill type ID
  # @return [Integer] stype_id
  attr_accessor :stype_id
  # the skill MP cost
  # @return [Integer] mp_cost
  attr_accessor :mp_cost
  # the skill TP cost
  # @return [Integer] tp_cost
  attr_accessor :tp_cost
  # the message when used in battle
  # @return [String] message1
  attr_accessor :message1
  # the second message when used in battle
  # @return [String] message2
  attr_accessor :message2
  # the first required weapon type
  # @return [Integer] required_wtype_id1
  attr_accessor :required_wtype_id1
  # the second required weapon type
  # @return [Integer] required_wtype_id2
  attr_accessor :required_wtype_id2

  def initialize
    fail NotImplementedError
  end
end

# item class
class RPG::Item < RPG::UsableItem
  # the item type ID
  # @return [Integer]
  attr_accessor :itype_id
  # the item price
  # @return [Integer]
  attr_accessor :price
  # determines if it's consumable
  # @return [Boolean]
  attr_accessor :consumable

  def initialize
    fail NotImplementedError
  end

  # determines if the item is important to storyline
  # (like a key)
  # @return [Boolean]
  def key_item?
    fail NotImplementedError
  end
end

# equippable item class. RPG::Weapon and RPG::Armor superclass.
class RPG::EquipItem < RPG::BaseItem
  # the equip price
  # @return [Integer]
  attr_accessor :price
  # the equip type ID
  # @return [Integer]
  attr_accessor :etype_id
  # the equip parameters
  # @return [Array<Integer>]
  attr_accessor :params

  def initialize
    fail NotImplementedError
  end
end

# the weapon class
class RPG::Weapon < RPG::EquipItem
  # weapon type ID
  # @return [Integer]
  attr_accessor :wtype_id
  # the attack animation ID
  # @return [Integer]
  attr_accessor :animation_id

  def initialize
    super
    @wtype_id = 0
    @animation_id = 0
    @features.push(RPG::BaseItem::Feature.new(31, 1, 0))
    @features.push(RPG::BaseItem::Feature.new(22, 0, 0))
  end

  # gets the weapon performance (grade of quality)
  # @return [Integer]
  def performance
    fail NotImplementedError
  end
end

# the armor class
class RPG::Armor < RPG::EquipItem
  # armor type ID
  # @return [Integer] atype_id
  attr_accessor :atype_id

  def initialize
    fail NotImplementedError
  end

  # gets the armor performance (grade of quality)
  # @return [Integer]
  def performance
    fail NotImplementedError
  end
end

# database enemy class
class RPG::Enemy < RPG::BaseItem
  # @return [String] battler_name
  attr_accessor :battler_name
  # @return [Integer] battler_hue
  attr_accessor :battler_hue
  # @return [Array<Integer>] params
  attr_accessor :params
  # @return [Integer] exp
  attr_accessor :exp
  # @return [Integer] gold
  attr_accessor :gold
  # @return [Array<RPG::Enemy::DropItem>] drop_items
  attr_accessor :drop_items
  # @return [Array<RPG::Enemy::Action>] actions
  attr_accessor :actions

  def initialize
    fail NotImplementedError
  end
end

# state class
class RPG::State < RPG::BaseItem
  # item restriction
  # @return [Integer]
  attr_accessor :restriction
  # item priority
  # @return [Integer] priority
  attr_accessor :priority
  # remove at battle end
  # @return [Boolean]
  attr_accessor :remove_at_battle_end
  # remove by restriction
  # @return [Boolean]
  attr_accessor :remove_by_restriction
  # auto remove after certain time
  # @return [Integer] auto_removal_timing
  attr_accessor :auto_removal_timing
  # minimum number of turns to auto remove
  # @return [Integer] min_turns
  attr_accessor :min_turns
  # max number of turns to auto remove
  # @return [Integer] max_turns
  attr_accessor :max_turns
  # remove by damage
  # @return [Boolean]
  attr_accessor :remove_by_damage
  # chance of remotion by damage
  # @return [Integer] chance_by_damage
  attr_accessor :chance_by_damage
  # auto remove after certain steps
  # @return [Boolean]
  attr_accessor :remove_by_walking
  # number of steps to remove
  # @return [Integer] steps_to_remove
  attr_accessor :steps_to_remove
  # message 1
  # @return [String] message1
  attr_accessor :message1
  # message 2
  # @return [String] message2
  attr_accessor :message2
  # message 3
  # @return [String] message3
  attr_accessor :message3
  # message 4
  # @return [String] message4
  attr_accessor :message4

  def initialize
    fail NotImplementedError
  end
end

# feature wrapper class
class RPG::BaseItem::Feature
  # feature code
  # @return [Integer] code
  attr_accessor :code
  # data ID
  # @return [Integer]
  attr_accessor :data_id
  # data value
  # @return [Integer]
  attr_accessor :value

  # @param [Integer] code
  # @param [Integer] data_id
  # @param [Integer] value
  def initialize(code = 0, data_id = 0, value = 0)
    fail NotImplementedError
  end
end

# damage class
class RPG::UsableItem::Damage
  # damage type ID
  # @return [Integer] type
  attr_accessor :type
  # element ID
  # @return [Integer] element_id
  attr_accessor :element_id
  # damage formula to eval
  # @return [String] formula
  attr_accessor :formula
  # variance
  # @return [Integer] variance
  attr_accessor :variance
  # critical available
  # @return [Boolean]
  attr_accessor :critical

  def initialize
    fail NotImplementedError
  end

  # determine if no target
  # @return [Boolean]
  def none?
    fail NotImplementedError
  end

  # determine if damage is to HP
  # @return [Boolean]
  def to_hp?
    fail NotImplementedError
  end

  # determine if damage is to MP
  # @return [Boolean]
  def to_mp?
    fail NotImplementedError
  end

  # determine if it's recovery skill
  # @return [Boolean]
  def recover?
    fail NotImplementedError
  end

  # determine if drain damage
  # @return [Boolean]
  def drain?
    fail NotImplementedError
  end

  # determine the multiplie rsign
  # @return [Integer]
  def sign
    fail NotImplementedError
  end

  # evaluates the formula
  def eval(a, b, v)
    fail NotImplementedError
  end
end

class RPG::UsableItem::Effect
  # effect code
  # @return [Integer] code
  attr_accessor :code
  # data ID
  # @return [Integer] data_id
  attr_accessor :data_id
  # value 1
  # @return [Integer] value1
  attr_accessor :value1
  # value 2
  # @return [Integer] value2
  attr_accessor :value2

# @param [Integer] code
# @param [Integer] data_id
# @param [Integer] value1
# @param [Integer] value2
  def initialize(code = 0, data_id = 0, value1 = 0, value2 = 0)
    fail NotImplementedError
  end
end

class RPG::Enemy::DropItem
  # kind of drop (item, weapon or armor)
  # @return [Integer] kind
  attr_accessor :kind
  # item ID
  # @return [Integer] data_id
  attr_accessor :data_id
  # item denominator (divider by the drop rate)
  # @return [Integer] denominator
  attr_accessor :denominator

  def initialize
    fail NotImplementedError
  end
end

class RPG::Enemy::Action
  # the action skill ID
  # @return [Integer]
  attr_accessor :skill_id
  # the condition type
  # @return [Integer] condition_type
  attr_accessor :condition_type
  # @return [Integer]
  # the condition first param
  attr_accessor :condition_param1
   # @ the condition second param 
   # @return [Integer]
  attr_accessor :condition_param2
  # the action rating (more rating, more probability to use it)
  # @return [Integer]
  attr_accessor :rating

  # for RGSS2, action kind
  # 0: normal action, 1: skill
  attr_accessor :kind

  # Determines if kind is skill or not. Returns true if kind is 1.
  # @deprecated for RGSS2 only
  def skill?
    fail NotImplementedError
  end

  def initialize
    fail NotImplementedError
  end
end

# Enemy Troop class
class RPG::Troop
  # database troop ID
  # @return [Integer] id
  attr_accessor :id
  # database troop name
  # @return [String] name
  attr_accessor :name
  # troop members
  # @return [Array<RPG::Troop::Member>] members
  attr_accessor :members
  # troop battle event pages
  # @return [Array<RPG::Troop::Page>] pages
  attr_accessor :pages

  def initialize
    fail NotImplementedError
  end
end

# Troop Member class
class RPG::Troop::Member
  # enemy ID
  # @return [Integer] enemy_id
  attr_accessor :enemy_id
  # enemy X position on battle field
  # @return [Integer] x
  attr_accessor :x
  # enemy Y position on battle field
  # @return [Integer] y
  attr_accessor :y
  # initially hidden flag
  # @return [Boolean]
  attr_accessor :hidden

  def initialize
    fail NotImplementedError
  end
end

# Battle event troop page class
class RPG::Troop::Page
  # activation condition
  # @return [RPG::Troop::Page::Condition]
  attr_accessor :condition
  # span
  # @return [Integer]
  attr_accessor :span
  # event command list
  # @return [Array<RPG::EventCommand>] list
  attr_accessor :list

  def initialize
    fail NotImplementedError
  end
end

# troop page condition class
class RPG::Troop::Page::Condition
  # turn end flag
  # @return [Boolean]
  attr_accessor :turn_ending
  # turn valid flag
  # @return [Boolean]
  attr_accessor :turn_valid
  # enemy valid flag
  # @return [Boolean]
  attr_accessor :enemy_valid
  # actor valid flag
  # @return [Boolean]
  attr_accessor :actor_valid
  # switch valid flag
  # @return [Boolean]
  attr_accessor :switch_valid
  # turn number activation
  # @return [Integer] turn_a
  attr_accessor :turn_a
  # turn repeat attivation
  # @return [Integer] turn_b
  attr_accessor :turn_b
  # enemy index
  # @return [Integer] enemy_index
  attr_accessor :enemy_index
  # enemy HP
  # @return [Integer] enemy_hp
  attr_accessor :enemy_hp
  # actor ID
  # @return [Integer] actor_id
  attr_accessor :actor_id
  # actor HP
  # @return [Integer] actor_hp
  attr_accessor :actor_hp
  # switch ID
  # @return [Integer] switch_id
  attr_accessor :switch_id

  def initialize
    fail NotImplementedError
  end
end

# animation class
class RPG::Animation
  # database animation ID
  # @return [Integer] id
  attr_accessor :id
  # animation name
  # @return [String] name
  attr_accessor :name
  # animation file name 1
  # @return [String] animation1_name
  attr_accessor :animation1_name
  # animation filename 2
  # @return [Integer] animation1_hue
  attr_accessor :animation1_hue
  # animation file 1 hue
  # @return [String] animation2_name
  attr_accessor :animation2_name
  # animation file 2 hue
  # @return [Integer] animation2_hue
  attr_accessor :animation2_hue
  # animation position
  # @return [Integer] position
  attr_accessor :position
  # animation frame number
  # @return [Integer] frame_max
  attr_accessor :frame_max
  # animation frames
  # @return [Array<RPG::Animation::Frame>] frames
  attr_accessor :frames
  # animation timings
  # @return [Array<RPG::Animation::Timing>] timings
  attr_accessor :timings

  def initialize
    fail NotImplementedError
  end

  # determine if the animation is on whole screen
  # @return [Boolean]
  def to_screen?
    fail NotImplementedError
  end
end

# aniamtion frame class
class RPG::Animation::Frame
  # cell number
  # @return [Integer] cell_max
  attr_accessor :cell_max
  # cell data
  # @return [Table] cell_data
  attr_accessor :cell_data

  def initialize
    fail NotImplementedError
  end
end

class RPG::Animation::Timing
  # frame number
  # @return [Integer] frame
  attr_accessor :frame
  # SE FX
  # @return [RPG::SE] se
  attr_accessor :se
  # scope of the flash
  # @return [Integer] flash_scope
  attr_accessor :flash_scope
  # color of the flash
  # @return [Color] flash_color
  attr_accessor :flash_color
  # flash duration
  # @return [Integer] flash_duration
  attr_accessor :flash_duration

  def initialize
    fail NotImplementedError
  end
end

# map tileset class
class RPG::Tileset
  # tileset ID
  # @return [Integer] id
  attr_accessor :id
  # tileset mode (world, VX compatibility...)
  # @return [Integer] mode
  attr_accessor :mode
  # tileset name
  # @return [String] name
  attr_accessor :name
  # tileset filenames
  # @return [Array<Integer>] tileset_names
  attr_accessor :tileset_names
  # tileset flags
  # @return [Table] flags
  attr_accessor :flags
  # tileset note
  # @return [String] note
  attr_accessor :note

  def initialize
    fail NotImplementedError
  end
end

# common event class
class RPG::CommonEvent
  # common event ID
  # @return [Integer] id
  attr_accessor :id
  # event name
  # @return [String] name
  attr_accessor :name
  # trigger
  # @return [Integer] trigger
  attr_accessor :trigger
  # activation switch ID
  # @return [Integer] switch_id
  attr_accessor :switch_id
  # event command list
  # @return [Array<RPG::EventCommand>] list
  attr_accessor :list

  def initialize
    fail NotImplementedError
  end

  # determines if the event is in autorun
  def autorun?
    fail NotImplementedError
  end

  # determines if the event is parallel process
  def parallel?
    fail NotImplementedError
  end
end

# game system class
class RPG::System
  # game title
  # @return [String] game_title
  attr_accessor :game_title
  # version ID
  # @return [Integer] version_id
  attr_accessor :version_id
  # japanese flag
  # @return [Boolean]
  attr_accessor :japanese
  # starting party members array
  # @return [Array<Integer>]
  attr_accessor :party_members
  # currency unit
  # @return [String] currency_unit
  attr_accessor :currency_unit
  # skill types
  # @return [Array<String>] skill_types
  attr_accessor :skill_types
  # weapon types
  # @return [Array<String>] weapon_types
  attr_accessor :weapon_types
  # armor types
  # @return [Array<String>] armor_types
  attr_accessor :armor_types
  # element list
  # @return [Array<String>] elements
  attr_accessor :elements
  # game switches
  # @return [Array<String>] switches
  attr_accessor :switches
  # game variables
  # @return [Array<String>] variables
  attr_accessor :variables
  # boat vehicle
  # @return [RPG::System::Vehicle] boat
  attr_accessor :boat
  # ship vehicle
  # @return [RPG::System::Vehicle] ship
  attr_accessor :ship
  # airship vehicle
  # @return [RPG::System::Vehicle] airship
  attr_accessor :airship
  # title1 graphic filename
  # @return [String] title1_name
  attr_accessor :title1_name
  # title2 graphic filename
  # @return [String] title2_name
  attr_accessor :title2_name
  # draw title name flag
  # @return [Boolean]
  attr_accessor :opt_draw_title
  # use midi flag
  # @return [Boolean]
  attr_accessor :opt_use_midi
  # player transparent flag
  # @return [Boolean]
  attr_accessor :opt_transparent
  # show followers flag
  # @return [Boolean]
  attr_accessor :opt_followers
  # slip damage can cause death flag
  # @return [Boolean]
  attr_accessor :opt_slip_death
  # floor damage can cause death flag
  # @return [Boolean]
  attr_accessor :opt_floor_death
  # use TP gauges flag
  # @return [Boolean]
  attr_accessor :opt_display_tp
  # standby members can gain exp flag
  # @return [Boolean]
  attr_accessor :opt_extra_exp
  # the window tone
  # @return [Tone] window_tone
  attr_accessor :window_tone
  # the title BGM audiofile
  # @return [RPG::BGM] title_bgm
  attr_accessor :title_bgm
  # the battle BGM audiofile
  # @return [RPG::BGM] battle_bgm
  attr_accessor :battle_bgm
  # the victory ME audiofile
  # @return [RPG::ME] battle_end_me
  attr_accessor :battle_end_me
  # the gameover ME audiofile
  # @return [RPG::ME] gameover_me
  attr_accessor :gameover_me
  # sounds config arra
  # @return [Array<RPG::SE>] 
  attr_accessor :sounds
  # battle test actors
  # @return [Array<RPG::System::TestBattler>]
  attr_accessor :test_battlers
  # battle test troop ID
  # @return [Integer] test_troop_id
  attr_accessor :test_troop_id
  # starting map ID
  # @return [Integer] start_map_id
  attr_accessor :start_map_id
  # X starting position
  # @return [Integer] start_x
  attr_accessor :start_x
  # Y starting position
  # @return [Integer] start_y
  attr_accessor :start_y
  # vocab terms
  # @return [RPG::System::Terms] terms
  attr_accessor :terms
  # @return [String] battleback1_name
  attr_accessor :battleback1_name
  # @return [String] battleback2_name
  attr_accessor :battleback2_name
  # @return [String] battler_name
  attr_accessor :battler_name
  # @return [Integer] battler_hue
  attr_accessor :battler_hue
  # @return [Integer] edit_map_id
  attr_accessor :edit_map_id

  def initialize
    fail NotImplementedError
  end
end

class RPG::System::Vehicle
  # character graphic name
  # @return [String] character_name
  attr_accessor :character_name
  # character index
  # @return [Integer] character_index
  attr_accessor :character_index
  # vehicle BGM
  # @return [RPG::BGM] bgm
  attr_accessor :bgm
  # starting map ID
  # @return [Integer] start_map_id
  attr_accessor :start_map_id
  # starting map X
  # @return [Integer] start_x
  attr_accessor :start_x
  # starting map Y
  # @return [Integer] start_y
  attr_accessor :start_y

  def initialize
    fail NotImplementedError
  end
end

# terms class
class RPG::System::Terms
  # basic terms
  # @return [Array<String>] basic
  attr_accessor :basic
  # parameters terms
  # @return [Array<String>] params
  attr_accessor :params
  # equip type terms
  # @return [Array<String>] etypes
  attr_accessor :etypes
  # command terms
  # @return [Array<String>] commands
  attr_accessor :commands

  def initialize
    fail NotImplementedError
  end
end

# battler test class
class RPG::System::TestBattler
  # the actor ID
  # @return [Integer]
  attr_accessor :actor_id
  # the actor level
  # @return [Integer] level
  attr_accessor :level
  # the actor equip IDs
  # @return [Array<Integer>] equips
  attr_accessor :equips

  def initialize
    fail NotImplementedError
  end
end

# audiofile class
class RPG::AudioFile
  # audio filename
  # @return [String] name
  attr_accessor :name
  # audio volume
  # @return [Integer] volume
  attr_accessor :volume
  # audio pitch
  # @return [Integer] pitch
  attr_accessor :pitch

  # @param [String] name the audio filename
  # @param [Integer] volume the adudio volue (0..100)
  # @param [Integer] pitch settings (0..100)
  def initialize(name = '', volume = 100, pitch = 100)
    fail NotImplementedError
  end
end

# the audio BGM class
class RPG::BGM < RPG::AudioFile
  # starts the BGM play
  # @param [Integer] position
  def play(pos = 0)
    fail NotImplementedError
  end

  # resumes the BGM where it paused
  def replay
    fail NotImplementedError
  end

  # stops the BGM
  def self.stop
    fail NotImplementedError
  end

  # fades the BGM
  # @param [Integer] time (in 1/60 seconds)
  def self.fade(time)
    fail NotImplementedError
  end

  # gets the last played BGM
  # @return [RPG::BGM]
  def self.last
    fail NotImplementedError
  end

  # the BGM position
  # @return [Integer]
  attr_accessor :pos
end

# BGS audiofile class
class RPG::BGS < RPG::AudioFile

  # plays the BGS
  # @param [Integer] pos starting position
  def play(pos = 0)
    fail NotImplementedError
  end

  # replays the BGS from the last position
  def replay
    fail NotImplementedError
  end

  # stops the BGS
  def self.stop
    fail NotImplementedError
  end

  # fades the BGS
  # @param [Integer] time fading time (in 1/60 sec)
  def self.fade(time)
    fail NotImplementedError
  end

  # gets the last played BGS
  # @return [RPG::BGM]
  def self.last
    @@last.pos = Audio.bgs_pos
    @@last
  end

  # the BGS position
  # @return [Integer]
  attr_accessor :pos
end

# ME audiofile class
class RPG::ME < RPG::AudioFile
  # start playing the ME
  def play
    fail NotImplementedError
  end

  # stops the ME
  def self.stop
    fail NotImplementedError
  end

  # fades the ME
  # @param [Integer] time the fading time (1/60 sec)
  def self.fade(time)
    fail NotImplementedError
  end
end

# SE effects class
class RPG::SE < RPG::AudioFile
  # plays the SE
  def play
    fail NotImplementedError
  end

  # stops all the SE (static method)
  def self.stop
    fail NotImplementedError
  end
end