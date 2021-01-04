extends HBoxContainer


onready var camera = self.get_parent().get_node("MainCamera")

var pos = self.rect_position

func _process(delta):
	self.rect_position = camera.position + pos
