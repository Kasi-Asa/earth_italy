extends Sprite2D

const DISTANCE := 6724.0
const MOVE_TIME := 727.0        # seconds (12m7s)
const WAIT_TIME := 10.0         # seconds

var speed := DISTANCE / MOVE_TIME
var moving := false

func _ready():
	await get_tree().create_timer(WAIT_TIME).timeout
	moving = true

func _process(delta):
	if not moving:
		return

	position.y -= speed * delta
