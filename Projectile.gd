extends Area2D
var moving = false
const speed = 2000
var next_collision
var player
var fromplayer
var dir = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	connect("area_entered", hitsomething)
	connect("body_entered", hitwall)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += transform.x * speed * delta * dir

func hitsomething(area):
	if area.is_in_group("enemies"):
		area.queue_free()
		self.queue_free()


func hitwall(body):
	if body != get_parent() and not body.is_in_group("coin"):
		self.queue_free()
