extends Control

func _ready():
	pass
	
func _on_riddlebtn_pressed():
	MusicController.click_play()
	get_tree().change_scene_to_file("res://scenes/riddles.tscn")


func _on_guess_word_pressed():
	get_tree().change_scene_to_file("res://scenes/guess_word.tscn")


func _on_back_pressed():
	get_tree().change_scene_to_file("res://scenes/menu.tscn")
