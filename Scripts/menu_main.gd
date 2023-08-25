extends Control



func _on_play_pressed():
	get_tree().change_scene_to_file("res://Scenes/game.tscn")



func _on_options_pressed():
	get_tree().change_scene_to_file("res://Scenes/menu_options.tscn")




func _on_exit_game_pressed():
	get_tree().quit()
