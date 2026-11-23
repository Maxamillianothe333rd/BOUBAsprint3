extends CharacterBody2D

var startPosition
var endPosition

func _ready():
	startPosition = position
	
func updateVelocity():
	var moveDirection = -1
	velocity.x = moveDirection

func _physics_process(delta: float) -> void:
	updateVelocity()
	move_and_slide()
