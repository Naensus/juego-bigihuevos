extends CharacterBody2D


@export var speed = 400
#For 2 controllers. 0 left 1 right
@export var left_right = 0
# Get the gravity from the project settings to be synced with RigidBody nodes.


func get_input():
	#var input_direction = Input.get_vector("left", "right", "up", "down")
	#velocity = input_direction * speed

	var input_direction
	if left_right == 0:
		input_direction = Input.get_axis("up", "down")
	else: 
		input_direction = Input.get_axis("up_arrow", "down_arrow")
	velocity = transform.y * input_direction * speed

func _physics_process(_delta):
	get_input()
	move_and_slide()
