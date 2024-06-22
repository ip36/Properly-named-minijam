extends Node2D
var shootcooldown = 0
var shootcooldownmax = 0.5


# Called when the node enters the scene tree for the first time.
func _ready():
	var projectile = load("res://Projectile.tscn")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x = get_parent().lookingdirection * 10
	if shootcooldown > 0:
		shootcooldown -= delta
	if Input.is_mouse_button_pressed(1) and shootcooldown <= 0:
		var projectile = load("res://Projectile.tscn")
		var newprojectile = projectile.instantiate()
		get_parent().add_child(newprojectile)
		newprojectile.position = position 
		newprojectile.visible = true
		newprojectile.get_child(0).set_deferred("disabled", false)
		newprojectile.player = get_parent()
		newprojectile.dir = get_parent().lookingdirection
		shootcooldown = shootcooldownmax
