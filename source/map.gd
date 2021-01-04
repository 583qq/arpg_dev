extends Node


class Map:
	var cell_size
	var cell_center
	
	var map_scene
	var tile_map
	
	var map_size
	
	func _init(scene, tile_layer):
		map_scene = scene
		tile_map = tile_layer
		
		cell_size = tile_map.cell_size
		cell_center = Vector2(cell_size.x / 2, cell_size.y / 2)
	
	func grid_load():
		# Looking for non-null tiles
		var used_cells = tile_map.get_used_cells()
		print("Cells Used:\n", used_cells)
		
		var size_y = used_cells[-1].y - used_cells[0].y + 1
		
		var min_x = 0
		var max_x = 0
		
		for i in used_cells:
			if i.x < min_x:
				min_x = i.x
			if i.x > max_x:
				max_x = i.x
				
		var size_x = max_x - min_x + 1
		
		print("MapSize: ", size_x ," x ", size_y)
		pass
	
	func get_world_pos(x, y):
		print("Converting coordinates to world position...")
		return tile_map.world_to_map(Vector2(x, y))
		
