extends Control


func _on_submit_pressed():
	MusicController.click_play()
	if $username.text != "":
		GameManager.user_name = $username.text
		get_tree().change_scene_to_file("res://scenes/intro_transition.tscn")
