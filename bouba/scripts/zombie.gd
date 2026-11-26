extends CharacterBody2D
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

const SPEED = 100.0

var direction = -1
var health = 5
var is_attacking = false
var chase = false

func add_gravity(delta):
	if not is_on_floor():
		velocity += get_gravity() * delta

func move_enemy():
	velocity.x = SPEED * direction

func reverse_direction():
	if is_on_wall():
		direction = -direction
		
func _physics_process(delta: float) -> void:
	add_gravity(delta)
	move_enemy()
	move_and_slide()
	reverse_direction()
	if direction == 1.0:
		animated_sprite_2d.flip_h = true
	elif direction == -1.0:
		animated_sprite_2d.flip_h = false
		
func attack():
	pass
