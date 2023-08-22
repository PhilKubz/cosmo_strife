extends CharacterBody2D

#signal damage_taken
#
var speed = 900
var laser_blue_scene = preload("res://Scenes/laser_blue.tscn")
#
@onready var laser_blue_container = $LaserBlueContainer
#@onready var rocket_laser_sound = $RocketLaser
#
func _process(delta):
	if Input.is_action_just_pressed("shoot"):
		shoot()
#
func _physics_process(delta):
	velocity = Vector2(0, 0)

	if Input.is_action_pressed("move_right"):
		velocity.x = speed
	if Input.is_action_pressed("move_left"):
		velocity.x = -speed
#	if Input.is_action_pressed("move_up"):
#		velocity.y = -speed
#	if Input.is_action_pressed("move_down"):
#		velocity.y = speed
#
#
	move_and_slide()
#
	var screen_size = get_viewport_rect().size

	global_position = global_position.clamp(Vector2(0, 0), screen_size)
#
#
func shoot():
	print("Shooting laser!")
	var laser_blue_instance = laser_blue_scene.instantiate()
	if laser_blue_instance:
		laser_blue_container.add_child(laser_blue_instance)
		laser_blue_instance.global_position = global_position
		laser_blue_instance.global_position.y += -80
	else:
		print("Error: Laser Blue instance is null.")
#	rocket_laser_sound.play()
#
#func take_damage():
#	damage_taken.emit()
#
#func die():
#	queue_free()
