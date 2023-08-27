extends "res://Scripts/game.gd"

@onready var hud = $UI/HUD

var score = 0
#	set(value):
#		score = value
#		hud.score = score

func _ready():
	hud.set_score_label(score)
#	hud.score = value

func _on_enemy_spawner_enemy_spawned(enemy_basic_instance):
#	print("Enemy spawned and connected")
	enemy_basic_instance.connect("enemy_died", on_enemy_died)
	add_child(enemy_basic_instance)
	
func on_enemy_died():
	score += 100
	print(score)
	hud.set_score_label(score)
	emit_signal("enemy_died")  # Emit the signal
#	enemy_hit_sound.play()

#func level_score_check():
#	if score >= 200:
##		print("Score is greater than or equal to 200")
#		end_level()

#func level_complete_win():
#	if(level_score = 1500):
#		_end_level()

#func end_level():
##	print("Ending the level...")
#	get_tree().change_scene_to_file("res://Scenes/UI/level_win_screen.tscn")
