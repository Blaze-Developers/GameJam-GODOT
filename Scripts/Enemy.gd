extends KinematicBody

<<<<<<< HEAD
var path = []
var path_node = 0
var speed = 5

onready var nav = get_parent()
onready var player = $"../../Player"
=======
var player = translation.direction_to(player.translation)
const speed = 10
>>>>>>> 812fcbc4209aa4d0df3ec73fee8855ec1cf2b606

func _ready():
	pass

func _physics_process(delta):
<<<<<<< HEAD
	if path_node < path.size():
		var direction = (path[path_node] - global_transform.origin)
		if direction.length() < 1:
			path_node += 1
		else:
			move_and_slide(direction.normalized() * speed, Vector3.UP)

func move_to(target_pos):
	path = nav.get_simple_path(global_transform.origin, target_pos)
	path_node = 0




func _on_Timer_timeout():
	move_to(player.global_transform.origin)
=======
	move_and_slide(player * speed)
>>>>>>> 812fcbc4209aa4d0df3ec73fee8855ec1cf2b606
