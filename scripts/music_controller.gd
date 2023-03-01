extends Node

func play_theme():
	$background.playing = true
	
func stop_theme():
	$background.playing = false

func click_play():
	$click.playing = true

func success_play():
	$success.playing = true

func wrong_play():
	$wrong.playing = true
