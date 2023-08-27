extends CharacterBody2D

signal damage_taken
#
var speed = 800
var laser_blue_scene = preload("res://Scenes/laser_blue.tscn")
var laser_red_scene = preload("res://Scenes/laser_red.tscn")
#
@onready var laser_blue_container = $LaserBlueContainer
@onready var laser_red_container = $LaserRedContainer
#@onready var rocket_laser_sound = $RocketLaser
#
func _process(delta):
	# Blue Laser
	if Input.is_action_just_pressed("shoot"):
		shoot()
	
	# Red Laser
	if Input.is_action_just_pressed("shoot_2"):
		shoot_2()
#
func _physics_process(delta):
	velocity = Vector2(0, 0)

	if Input.is_action_pressed("move_right"):
		velocity.x = speed
	if Input.is_action_pressed("move_left"):
		velocity.x = -speed

#
	move_and_slide()
#
	var screen_size = get_viewport_rect().size

	global_position = global_position.clamp(Vector2(0, 0), screen_size)
#
#
func shoot():
#	print("Shooting laser!")
	var laser_red_instance = laser_red_scene.instantiate()
	if laser_red_instance:
		laser_red_container.add_child(laser_red_instance)
		laser_red_instance.global_position = global_position
		laser_red_instance.global_position.y += -35
		
	else:
		print("Error: Laser Blue instance is null.")
#	rocket_laser_sound.play()

func shoot_2():
#	print("Shooting laser 2!")
	var laser_blue_instance = laser_blue_scene.instantiate()
	if laser_blue_instance:
		laser_blue_container.add_child(laser_blue_instance)
		laser_blue_instance.global_position = global_position
		laser_blue_instance.global_position.y += -35
	else:
		print("Error: Laser Blue instance is null.")
#	rocket_laser_sound.play()

#
func take_damage():
	damage_taken.emit()

func die():
	queue_free()
