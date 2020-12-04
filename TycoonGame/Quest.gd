extends Node

onready var available_quests = $Available
onready var active_quests = $Active
onready var completed_quests = $Completed
onready var delivered_quests = $Delivered
#var party : Party
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

#func initialize(game, _party : Party ) -> void:
	#game.connect("combat_started", self, "_on_Game_combat_started")
	#party = _party
	
	#func find_available(reference : Quest) -> Quest:
		#return available_quests.find(reference)

func get_available_quests() -> Array:
	return available_quests.get_quests()

#func is_available(reference : Quest) -> bool:
	#return available_quests.find(reference) != null
	
	
