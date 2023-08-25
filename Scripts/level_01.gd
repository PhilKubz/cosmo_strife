extends "res://Scripts/game_manager.gd"

#@onready var hud = $UI/HUD

var score := 0
#	set(value):
#		score = value
#		hud.score = score

func _ready():
	pass
#	hud.score = value

func _on_enemy_spawner_enemy_spawned(enemy_basic_instance):
	print("Enemy spawned and connected")
	enemy_basic_instance.connect("enemy_died", on_enemy_died)
	add_child(enemy_basic_instance)
	
func on_enemy_died():
	print("enemy_died works")
	score += 100
	print(score)
	emit_signal("enemy_died")  # Emit the signal
#	enemy_hit_sound.play()
