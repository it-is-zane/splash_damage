extends Sprite2D

@onready var label = Label.new()


# Called when the node enters the scene tree for the first time.
func _ready():
	label.z_index = 10
	add_sibling.call_deferred(label)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	label.text = str(roundi(1 / delta))
