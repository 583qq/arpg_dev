#
#	Unit Type
#

class_name UnitType

var name: String
var isNPC: bool	# if not => Player
	
func _init(type_name: String, npc: bool):
	self.name = type_name
	self.isNPC = npc
