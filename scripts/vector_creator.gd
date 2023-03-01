extends Area2D

signal vector_created(vector) #EMIT WHEN PLAYER CLICKS DOWN ON THE SCREEN

var maximum_len : int = 200

var pressed: bool = false
var pos_start = Vector2.ZERO
var pos_end = Vector2.ZERO
var vector = Vector2.ZERO #WHAT WILL BE EMITTED

func _ready() -> void:
	pass
	
func _on_input_event():
	pass
