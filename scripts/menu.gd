extends Control

var soundPlaying: bool = false

func _ready():
	if !soundPlaying:
		MusicController.play_theme()
		soundPlaying = true
		
func _process(_delta):
	$score_table/username.text = GameManager.user_name
	$score_table/score.text = str(GameManager.current_score)
	
func _on_play_pressed():
	MusicController.click_play()
	get_tree().change_scene_to_file("res://scenes/selection.tscn")


func _on_quit_pressed():
	get_tree().quit()


func _on_options_pressed():
	get_tree().change_scene_to_file("res://scenes/options.tscn")
