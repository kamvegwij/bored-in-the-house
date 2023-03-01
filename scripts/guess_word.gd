extends Control

var answer: String = ""
var score: int = 0

func _ready():
	pass
	
func _process(_delta):
	check_Answers()

func check_Answers():
	pass
	
func _on_check_pressed():
	answer = get_node("bg/answerEdit").text
	get_node("bg/answerEdit").text = ""
