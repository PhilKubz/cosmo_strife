extends Control

@export var game_manager : GameManagerFunction


func _ready():
	hide()
	game_manager.connect("toggle_game_paused", _on_game_manager_toggle_game_paused)

func _process(delta):
	pass

func _on_game_manager_toggle_game_paused(is_paused : bool):
	if(is_paused):
		show()
	else:
		hide()



func _on_resume_button_pressed():
	game_manager.game_paused = false


func _on_exit_game_button_pressed():
	get_tree().quit()


func _on_main_menu_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/menu_main.tscn")
