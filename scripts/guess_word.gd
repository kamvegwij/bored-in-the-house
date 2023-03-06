extends Control

var images: Array = ["res://assets/img/guessTheWordPack/why.png","res://assets/img/guessTheWordPack/ear.jpeg"
, "res://assets/img/GUESS.png", 
"res://assets/img/quit.png", "res://assets/img/logo.png", "res://assets/img/riddlesBtn.png"]
var answers: Array = ["year", "test"]

var answer: String = ""
var score: int = 0
var current_index = 0


var temp1
var temp2

var index1: int
var index2: int

func _ready():
	temp1 = images[0]
	temp2 = images[1]
	$bg/imagesTop/img1.texture = load(temp1)
	$bg/imagesTop/img2.texture = load(temp2)
	
func _process(_delta):
	check_Answers()
	print(current_index)

func change_Image(path1, path2, ind1, ind2):
	temp1 = images[ind1]
	temp2 = images[ind2]
	$bg/imagesTop/img1.texture = load(path1)
	$bg/imagesTop/img2.texture = load(path2)
	
func check_Answers():
	if answer=="year":
		change_Image(temp1, temp2, 2, 3)
		
func _on_check_pressed():
	answer = get_node("bg/answerEdit").text
	get_node("bg/answerEdit").text = ""
