extends KinematicBody

var velocity = Vector3(0,0,0)
const speed = 8
const gravity = 44


func _ready():
	pass

func _physics_process(delta):
	#taking input from user

	#forwars and backwards movement
	#when both w and s are pressed
	if Input.is_action_pressed("Up") and Input.is_action_pressed("Down"):
		velocity.z = 0
	#when w us pressed alone
	elif Input.is_action_pressed("Up"):
		velocity.z = -speed
	#when s is pressed alone
	elif Input.is_action_pressed("Down"):
		velocity.z = speed
	#when both w and s is not pressed
	else:
		velocity.z = lerp(velocity.z,0,0.1)
	
	#left and right movement
	#when bot a and d is pressed
	if Input.is_action_pressed("Left") and Input.is_action_pressed("Right"):
		velocity.x = 0
	#when a is pressed
	if Input.is_action_pressed("Left"):
		velocity.x = -speed
	#when d is pressed
	if Input.is_action_pressed("Right"):
		velocity.x = speed
	#when both a and d is not pressed
	else:
		velocity.x = lerp(velocity.z,0,0.1)

	#gravity exists
	#jump module
	#is space is pressed and if player is on the floor
	if Input.is_action_pressed("Jump") and is_on_floor() == true:
		velocity.y = 18#players position on y will be changes
	else:#player will be pulled back to the ground
		velocity.y -= gravity *delta
	
	
