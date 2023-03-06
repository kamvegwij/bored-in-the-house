extends Control

@onready var game_Timer := $Timer

var spots: Array

var random_position: int = 0

func _ready() -> void:
	for val in $spots.get_children(): #ADD THE SPOTS TO AN ARRAY
		spots.append(val.get_node("img"))
	
	game_Timer.start(1)
	
func _process(_delta) -> void:
	pass

func _on_timer_timeout():
	var curr_index = random_position
	spots[curr_index].texture = load("res://assets/img/black.png")
	
	random_position = randi_range(0, 5)
	spots[random_position].texture = load("res://assets/img/goofyface.webp")
