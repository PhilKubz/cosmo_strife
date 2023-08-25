extends Node2D

class_name GameManager

signal toggle_game_paused(is_paused : bool)

var game_paused : bool = false:
	get:
		return game_paused
	set(value):
		game_paused = value
		get_tree().paused = !game_paused
		emit_signal("toggle_game_paused", game_paused)
#var lives = 3
#var score = 0

#var gameover_scene = preload("res://scenes/game_over_screen.tscn")

@onready var player = $Player
@onready var hud = $UI/HUD
@onready var ui = $UI
#@onready var enemy_hit_sound = $EnemyHitSound
#@onready var player_hit_sound = $PlayerHitSound

func _ready():
	pass
	# Assuming the deathzone is named "Deathzone" in the scene
#	hud.set_score_label(score)
#	hud.set_lives(lives)

func _on_deathzone_area_entered(area):
	print("Object entered the deathzone:", area.name)
	area.queue_free()
#	_on_player_damage_taken()

#func _on_player_damage_taken():
#	lives -= 1
#	hud.set_lives(lives)
#	player_hit_sound.play()
#	if lives == 0:
#		player.die()
#
#		await get_tree().create_timer(.5).timeout
#
#		var gameover = gameover_scene.instantiate()
#		gameover.set_score(score)
#		ui.add_child(gameover)
		
func _input(event : InputEvent):
		if(event.is_action_pressed("ui_cancel")):
			game_paused = !game_paused

	
func on_enemy_died():
	pass
#	score += 100
#	hud.set_score_label(score)
#	enemy_hit_sound.play()

#func on_special_enemy_died():
#	score += 200
#	hud.set_score_label(score)
#	enemy_hit_sound.play()


#func _on_enemy_spawner_path_enemy_spawned_01(path_enemy_instance_01):
#	add_child(path_enemy_instance_01)
#	path_enemy_instance_01.enemy1.connect("enemy_died", on_special_enemy_died)
#
#
#func _on_enemy_spawner_path_enemy_spawned_02(path_enemy_instance_02):
#	add_child(path_enemy_instance_02)
#	path_enemy_instance_02.enemy2.connect("enemy_died", on_special_enemy_died)


func _on_player_damage_taken():
	pass # Replace with function body.
