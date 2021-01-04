#
#
#

class UnitAttributes:
	var strength_val: int
	var dexterity_val: int
	var intelligence_val: int
	var vitality_val: int
	
	func _init(strv, dexv, intv, vitv):
		strength_val = strv
		dexterity_val = dexv
		intelligence_val = intv
		vitality_val = vitv
	
	func get_armor_bonus():
		return dexterity_val * 2.5
	
	func get_mp_bonus():
		return intelligence_val * 5
		
	func get_hp_bonus():
		return vitality_val * 5
	
	func get_melee_physical_bonus():
		return strength_val / 5
	
	func get_spell_bonus():
		return intelligence_val / 5
