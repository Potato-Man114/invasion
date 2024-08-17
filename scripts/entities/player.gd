extends Area2D

var process_input = true
@export var player_base_speed = 400
@export var sprint_speed_multiplier = 1.5

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	_process_input(delta)
	
func _process_input(delta):
	_process_movement(delta)
	_set_facing_direction(get_global_mouse_position())
	
func _process_movement(delta):
	var player_speed = player_base_speed
	if Input.is_action_pressed("sprint"):
		player_speed *= sprint_speed_multiplier
	
	var velocity = Vector2.ZERO
	velocity.y = Input.get_axis("move_up", "move_down")
	velocity.x = Input.get_axis("move_left", "move_right")
	
	if velocity.length() > 0:
		velocity = velocity.normalized() * player_speed
		
	position += velocity * delta
	
func _set_facing_direction(target_point: Vector2):
	look_at(target_point)
	
