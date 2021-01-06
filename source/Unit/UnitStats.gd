#
#	Unit Stats
#

class_name UnitStats
# HP
var hp_maximum: int
var hp_current: int
	
# MP
var resource_maximum: int
var resource_current: int
	
var attributes: UnitAttributes
	
	
func _init(_attributes: UnitAttributes) -> void:
	# Unit base stats
	hp_maximum = _attributes.get_hp_bonus()
	resource_maximum = _attributes.get_mp_bonus()
	attributes = _attributes
	
func calculate_gear_bonus(gear) -> void:
	# add gear bonuses to stat
	pass
	
func calculate_multiplier_bonus(multipliers) -> void:
	# multiply stat
	pass
