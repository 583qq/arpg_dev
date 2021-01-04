extends TileMap

onready var MapScript = preload("res://source/map.gd")


func _ready():
	var current_map = MapScript.Map.new(self.get_parent(), self)
	current_map.grid_load()
	
	print("CellSize:", current_map.cell_size)
	print("CellCenter: (", current_map.cell_center.x, ",", current_map.cell_center.y, ")")
	
	self.get_parent().get_node("PlayerBody").position = Vector2(5,  -5)
