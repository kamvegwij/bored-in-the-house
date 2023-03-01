extends Control

var riddles: Array = ["Is there a 4-letter word that can be written forward, backward, or upside down, and still be read from left to right?",
"The more you take away, the bigger it gets?", "The building with the most stories is?",
"What is that which never uses its teeth for eating purposes?", "What holds water despite being full of holes?",
"I’m tall when I’m young, and I’m short when I’m old. What am I?", "What is always in front of you but can’t be seen?",
"What goes up but never comes down?", "What gets wet while drying?", 
"You walk into a room that contains a match, a kerosene lamp, a candle and a fireplace. What would you light first?",
"What can’t talk but will reply when spoken to?", "The more of this there is, the less you see. What is it?",
"What English word has three consecutive double letters?",
"First, think of the color of the clouds. Next, think of the color of snow. Now, think of the color of a bright, full moon. Now, answer quickly: What do cows drink?",
"If you have me, you want to share me. If you share me, you don't have me. What am I?",
"My thunder comes before the lightning. My lightning comes before the clouds. My rain dries all the land it touches. What am I?",
"A butcher stands six feet and one inch tall and wears size 12 shoes. What does he weigh?",
"How much dirt is in a hole that measures four feet by four feet by five feet?", "What disappears the moment you say its name?",
"What word in the English language does the following: The first two letters signify a male, the first three letters signify a female, the first four letters signify a great, while the entire world signifies a great woman. What is the word?",
"With pointed fangs, I sit and wait; with piercing force, I crunch out fate; grabbing victims, proclaiming might; physically joining with a single bite. What am I?",
]

var answers: Array = ["noon", "hole", "library", "comb", "sponge", "candle", "future", "age", "towel", "match", "echo", "darkness", 
"bookkeeper", "water", "secret", "volcano", "meat", "none", "silence", "heroine", "stapler"]

var answer: String = ""

func _ready():
	get_node("bg/level/bg/text").text = riddles[GameManager.current_index]
	
func _process(_delta):
	check_Answers()
	
func _on_check_pressed():
	MusicController.click_play()
	answer = get_node("bg/answerEdit").text
	
	if answer != answers[GameManager.current_index]:
		MusicController.wrong_play()
		
	get_node("bg/answerEdit").text = ""

func check_Answers():
		
		if answer.to_lower() == answers[GameManager.current_index]:
			MusicController.success_play()
			#$bg/score/AnimationPlayer.play("change_score")
			
			GameManager.current_index += 1
			GameManager.current_score += 1
			
			$bg/score.text = str(GameManager.current_score) #CHANGE SCORE IN UI
			
			if (GameManager.current_index + 1) > len(answers):
				get_tree().change_scene_to_file("res://scenes/intro_transition.tscn")
				
			if (GameManager.current_index + 1) < len(answers) and (GameManager.current_index + 1) < len(riddles):
				if GameManager.current_score == 10:
					print("Wow Great Job! Let's see if you know these..")
					
				if GameManager.current_score == 20:
					print("Impressive! Okay, one more for good measure")
					
				else:
					get_node("bg/level/bg/text").text = riddles[GameManager.current_index]


func _on_quit_pressed():
	get_tree().change_scene_to_file("res://scenes/menu.tscn")
