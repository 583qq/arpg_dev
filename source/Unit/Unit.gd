#
#	Unit
#

func get_physical_mitigation(armor):
	# 1% of physical mitigation per 100 armor
	var mitigation = armor / 100
	if mitigation > 90:	# 90% is THE cap
		return 90
	else:
		return mitigation


class Unit:
	# Includes
	const _UnitType = preload("res://source/Unit/UnitType.gd")
	const _UnitAttributes = preload("res://source/Unit/UnitAttributes.gd")
	const _UnitStats = preload("res://source/Unit/UnitStats.gd")

	# General
	var name: String
	var guid: String	# Unique ID
	
	var type: _UnitType.UnitType
	
	# Unit Attributes
	var attributes: _UnitAttributes.UnitAttributes
	
	# Flags
	var isAlive: bool
	
	# Stats container (with some functions)
	var stats: _UnitStats.UnitStats
	
	func _init(unit_name: String, unit_type: _UnitType.UnitType, unit_stats: _UnitStats.UnitStats):
		name = unit_name
		type = unit_type
		stats = unit_stats
		attributes = unit_stats.attributes

	
