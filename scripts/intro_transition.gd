extends Control

func _ready():
	$AnimationPlayer.play("load")

func _on_animation_player_animation_finished(anim_name):
	if anim_name == "load":
		get_tree().change_scene_to_file("res://scenes/menu.tscn")
