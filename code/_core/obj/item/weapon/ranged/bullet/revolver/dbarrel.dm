/obj/item/weapon/ranged/bullet/revolver/dbarrel
	name = "\improper 12g Boomstick"
	desc = "The bartender's trusty double barrel shotgun. It was cut in half by a clown."
	desc_extended = "Double barreled shotguns are often sawed off in order to be used as a sidearm, at the cost of the user's wrist bones."
	icon = 'icons/obj/item/weapons/ranged/dbarrel.dmi'
	icon_state = "inventory"
	value = 400

	company_type = "Solarian"

	tier = 1

	damage_mod = 0.6
	shoot_delay = 3

	automatic = FALSE

	bullet_count_max = 2

	insert_limit = 2

	shoot_sounds = list('sound/weapons/combat_shotgun/shoot.ogg')

	size = SIZE_2
	weight = 8

	bullet_length_min = 76
	bullet_length_best = 76.2
	bullet_length_max = 76.4

	bullet_diameter_min = 18
	bullet_diameter_best = 18.5
	bullet_diameter_max = 19

	heat_max = 0.1

	inaccuracy_modifier = 1
	movement_inaccuracy_modifier = 0
	movement_spread_base = 0.02

/obj/item/weapon/ranged/bullet/revolver/dbarrel/get_base_spread()
	return 0.3

/obj/item/weapon/ranged/bullet/revolver/dbarrel/get_static_spread()
	return 0.01

/obj/item/weapon/ranged/bullet/revolver/dbarrel/get_skill_spread(var/mob/living/L)
	return max(0,0.03 - (0.06 * L.get_skill_power(SKILL_RANGED)))