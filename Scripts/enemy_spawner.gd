extends Node2D

signal enemy_spawned(enemy_basic_instance)
#signal path_enemy_spawned_01(path_enemy_instance_01)
#signal path_enemy_spawned_02(path_enemy_instance_02)

var enemy_basic_scene = preload("res://Scenes/enemy_basic.tscn")
var enemy_quick_scene = preload("res://Scenes/enemy_quick.tscn")
#var path_enemy_scene_01 = preload("res://scenes/path_enemy_01.tscn")
#var path_enemy_scene_02 = preload("res://scenes/path_enemy_02.tscn")

@onready var spawn_positions = $SpawnPositions

func _on_timer_timeout():
	spawn_enemy()
	print("Enemy Spawned")
	

func spawn_enemy():
	var spawn_positions_array = spawn_positions.get_children()
	var random_spawn_position = spawn_positions_array.pick_random()
	var enemy_basic_instance = enemy_basic_scene.instantiate()
	enemy_basic_instance.global_position = random_spawn_position.global_position
	emit_signal("enemy_spawned", enemy_basic_instance)
	# add_child(enemy_instance)



#	# Enemy Path 1 Code
#
#func _on_path_enemy_timer_timeout():
#	spawn_path_enemy_01()
#
#func spawn_path_enemy_01():
#	var path_enemy_instance_01 = path_enemy_scene_01.instantiate()
#	emit_signal("path_enemy_spawned_01", path_enemy_instance_01)
#
#
#
#	# Enemy Path 2 Code
#
#func _on_path_enemy_timer_02_timeout():
#	spawn_path_enemy_02()
#
#func spawn_path_enemy_02():
#	var path_enemy_instance_02 = path_enemy_scene_02.instantiate()
#	emit_signal("path_enemy_spawned_02", path_enemy_instance_02)
