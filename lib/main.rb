require 'rgss3_library'

# global variables initialization
$data_items = [RPG::UsableItem.new]
$data_classes = [RPG::Class.new]
$data_animations = [RPG::Animation.new]
$data_common_events = [RPG::CommonEvent.new]
$data_mapinfos = [RPG::MapInfo.new]
$data_tilesets = [RPG::Tileset.new]
$data_actors = [RPG::Actor.new]
$data_armors = [RPG::Armor.new]
$data_weapons = [RPG::Weapon.new]
$data_actors = [RPG::Actor.new]
$data_system = RPG::System.new
$data_states = [RPG::State.new]
$data_enemies = [RPG::Enemy.new]
$game_system = Game_System.new
$game_troop = Game_Troop.new
$game_map = Game_Map.new
$game_variables = Game_Variables.new
$game_switches = Game_Switches.new
$game_timer = Game_Timer.new
$game_self_switches = []
$game_party = Game_Party.new
$game_player = Game_Player.new
$game_temp = Game_Temp.new
$game_message = Game_Message.new
$game_map = Game_Map.new
$game_actors = [Game_Actor.new(0)]
$scene = Scene_Base.new # per RPG VX classico

$TEST = false
$BTEST = false

