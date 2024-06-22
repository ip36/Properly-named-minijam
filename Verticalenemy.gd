extends Area2D
var velocity = -150
var player

# Called when the node enters the scene tree for the first time.
func _ready():
	player = get_parent().get_node("Player")
	$Area2D.connect("body_entered", stomped)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $RayCast2D.is_colliding():
		velocity *= -1
		$RayCast2D.target_position.y *= -1
	position.y += velocity * delta

func stomped(body):
	if body == player and Upgradesmanager.upgradeshave["Stomping boots"]:
		self.queue_free()
