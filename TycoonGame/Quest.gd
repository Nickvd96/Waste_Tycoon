extends Node

onready var available_quests = $Available
onready var active_quests = $Active
onready var completed_quests = $Completed
onready var delivered_quests = $Delivered
var party : Party
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func initialize(game, _party : Party ) -> void:
	game.connect("combat_started", self, "_on_Game_combat_started")
	party = _party

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
