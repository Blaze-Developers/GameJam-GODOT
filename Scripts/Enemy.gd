extends KinematicBody

var player = translation.direction_to(player.translation)
const speed = 10

func _ready():
	pass

func _physics_process(delta):
	move_and_slide(player * speed)
