extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	var movement = Input.get_vector("move_left", "move_right", "move_up", "move_down").normalized() * 1000 * delta
	move_and_collide(movement)
