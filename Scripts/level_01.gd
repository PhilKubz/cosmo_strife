extends "res://Scripts/game_manager.gd"

func _on_enemy_spawner_enemy_spawned(enemy_basic_instance):
	enemy_basic_instance.connect("enemy_died", on_enemy_died)
	add_child(enemy_basic_instance)
