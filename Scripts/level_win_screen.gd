extends Control

func set_score (new_score):
	$Panel/Score.text = "Score: " + str(new_score)

func _on_next_level_pressed():
	get_tree().change_scene_to_file("res://Scenes/Levels/level_02.tscn")
