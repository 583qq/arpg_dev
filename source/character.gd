extends Node

##################################
#								 #
#	RPG-like Classes			 #
#								 #
#	By NoWayRage (Vitaliy M)	 #
#								 #
##################################



func get_physical_mitigation(armor):
	# 1% of physical mitigation per 100 armor
	var mitigation = armor / 100
	if mitigation > 90:	# 90% is THE cap
		return 90
	else:
		return mitigation


class Stats:
	var strength_val
	var dexterity_val
	var intelligence_val
	var vitality_val
	
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


class Player:
	var name
	var hp_maximum = 0 
	var hp_current = 0
	
	var player_stats
	var arcane_resistance = 10
	
	func _init(pname, stats_c, arc = 10):
		name = pname
		player_stats = stats_c	# Stats class defined
		arcane_resistance = arc
		hp_maximum = stats_c.get_hp_bonus()
		hp_current = hp_maximum
	
	
