extends Control

@onready var score = $Score


func set_score_label(new_score):
	score.text = "Score: " + str(new_score)
	if new_score >= 200:
#		print("Score is greater than or equal to 200")
		end_level()

#func level_score_check():
#	if new_score >= 200:
##		print("Score is greater than or equal to 200")
#		end_level()
		
func end_level():
#	print("Ending the level...")
	get_tree().change_scene_to_file("res://Scenes/UI/level_win_screen.tscn")
		
		
#	set(value):
#		score.text = "Score: " + str(value)

#	set(value):
#		score.text = "Score: " + str(value)
