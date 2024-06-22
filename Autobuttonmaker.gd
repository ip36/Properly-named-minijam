@tool
extends GridContainer
@export var lvlcount = 9
@export var buttontemplate : Button


# Called when the node enters the scene tree for the first time.
func _ready():
	for i in range(lvlcount):
		var tmpbutt : Button = buttontemplate.duplicate()
		self.add_child(tmpbutt)
		tmpbutt.text = str(i+1)
		tmpbutt.visible = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
