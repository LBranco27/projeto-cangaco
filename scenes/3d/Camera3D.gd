extends Camera3D

var player
# Called when the node enters the scene tree for the first time.
func _ready():
	player = get_node("../CharacterBody3D")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
#	position = player.position
	global_transform.origin[0] = player.global_transform.origin[0]
	global_transform.origin[2] = player.global_transform.origin[2]+30



