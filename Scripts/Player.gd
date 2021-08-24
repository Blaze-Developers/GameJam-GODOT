extends KinematicBody

var velocity = Vector3(0,0,0)
const speed = 8
const gravity = 44


func _ready():
	pass

func _physics_process(delta):
	if Input.is_action_pressed("ui_left") and Input.is_action_pressed("ui_right"):
		velocity.x = 0
	elif Input.is_action_pressed("ui_right"):
		velocity.x = speed
		$MeshInstance.rotate_z(deg2rad(-8))
	elif Input.is_action_pressed("ui_left"):
		$MeshInstance.rotate_z(deg2rad(8))
		velocity.x = -speed
	else:
		velocity.x = lerp(velocity.x,0,0.1)
	
	if Input.is_action_pressed("ui_down") and Input.is_action_pressed("ui_up"):
		velocity.z = 0
	elif Input.is_action_pressed("ui_up"):
		$MeshInstance.rotate_x(deg2rad(-8))
		velocity.z = -speed
	elif Input.is_action_pressed("ui_down"):
		$MeshInstance.rotate_x(deg2rad(8))
		velocity.z = speed
	else:
		velocity.z = lerp(velocity.z,0,0.1)
	
	if Input.is_action_just_pressed("ui_select"):
		if is_on_floor() == true:
			velocity.y = 18
	else:
		velocity.y -= gravity *delta
		
	move_and_slide(velocity, Vector3.UP)
	
	
