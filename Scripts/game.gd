extends Node2D

class_name GameManagerFunction

signal toggle_game_paused(is_paused : bool)

var game_paused : bool = false:
	get:
		return game_paused
	set(value):
		game_paused = value
		get_tree().paused = game_paused
		emit_signal("toggle_game_paused", game_paused)

#var lives = 3
#var score = 0

#	set(value):
#		score = value
#		hud.score = score

#var gameover_scene = preload("res://scenes/game_over_screen.tscn")

@onready var enemy_spawner = $EnemySpawner
@onready var player = $Player
@onready var ui = $UI
@onready var hud = $UI/HUD
#@onready var enemy_hit_sound = $EnemyHitSound
#@onready var player_hit_sound = $PlayerHitSound

func _ready():
	pass
#	hud.set_score_label(score)
#	hud.set_lives(lives)

func _input(event : InputEvent):
	if(event.is_action_pressed("ui_cancel")):
		game_paused = !game_paused

func _on_deathzone_area_entered(area):
	area.queue_free()
#	print("Deathzone is working, one more down!")
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
		

#func _on_enemy_spawner_enemy_spawned(enemy_basic_instance):
#	enemy_basic_instance.connect("enemy_died", on_enemy_died)
#	add_child(enemy_basic_instance)
	

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
