#
#	Unit
#

func get_physical_mitigation(armor) -> float:
	# 1% of physical mitigation per 100 armor
	var mitigation = armor / 100
	if mitigation > 90:	# 90% is THE cap
		return 90.0
	else:
		return mitigation


class_name Unit
# General
var name: String
var guid: String	# Unique ID
	
var type: UnitType
	
# Unit Attributes
var attributes: UnitAttributes
	
# Flags
var isAlive: bool
	
# Stats container (with some functions)
var stats: UnitStats
	
func _init(unit_name: String, unit_type: UnitType, unit_stats: UnitStats) -> void:
	self.name = unit_name
	self.type = unit_type
	self.stats = unit_stats
	self.attributes = unit_stats.attributes

	
