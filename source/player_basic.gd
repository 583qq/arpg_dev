extends KinematicBody2D



var velocity = Vector2()
var target = Vector2()

var isMoving = false

onready var tile_map = self.get_parent().get_node("main_tile")
onready var camera = self.get_parent().get_node("MainCamera")

func cart_to_iso(cart):
	var screen_pos = Vector2()
	screen_pos.x = cart.x  - cart.y
	screen_pos.y = (cart.x + cart.y) / 2
	return screen_pos

# Character Position

func position_debug():
	print("Position: ", position.x, " ", position.y, " (animation: ", 
	$AnimatedSprite.animation, ")")

func _input(event):
	if event.is_action_pressed('click'):
		$AnimatedSprite.play("run")
		target = get_global_mouse_position()	# Global Pos
		target = tile_map.world_to_map(target)	# Tile Pos
		print("Going to: ", target)
		target = tile_map.map_to_world(target)	# Global Tile Pos
		
		if target.x < position.x:
			$AnimatedSprite.flip_h = true
		else:
			$AnimatedSprite.flip_h = false
			
		# Character body correction
		target.x += 5
		target.y -= 5




# Pathfinding? and movement


# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimatedSprite.play("idle")
	print("Init Position: ", position)


func _physics_process(_delta):
	velocity = position.direction_to(target) * 100
	if position.distance_to(target) > 5:
		velocity = move_and_slide(velocity)
		camera.position = self.position
	else:
		$AnimatedSprite.play("idle")


# End
