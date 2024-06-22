extends Button
@export var sendto : String
@export var overwrite : bool

# Called when the node enters the scene tree for the first time.
func _ready():
	connect("pressed", clicked)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func clicked():
	if overwrite:
		get_tree().change_scene_to_file(sendto)
	else:
		get_tree().change_scene_to_file("res://"+ text + ".tscn")
