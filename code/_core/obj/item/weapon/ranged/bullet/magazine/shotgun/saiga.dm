/obj/item/weapon/ranged/bullet/magazine/shotgun/saiga_20
	name = "\improper 20g Saiga"
	desc = "For when you want to clear the house and erase the walls."
	desc_extended = "The 20g Saiga is an insanely powerful semiautomatic AK-based shotgun, nicknamed \"Saiga\" because it's Saiga. <br> The description designer wasn't very original, it seems."
	icon = 'icons/obj/item/weapons/ranged/shotgun/slavic/auto.dmi'
	icon_state = "inventory"
	value = 2700

	company_type = "Slavic"

	tier = 3

	shoot_delay = 3

	automatic = FALSE

	shoot_sounds = list('sound/weapons/combat_shotgun/shoot.ogg')

	can_wield = TRUE

	size = SIZE_4
	weight = 12

	heat_max = 0.2

	bullet_length_min = 88
	bullet_length_best = 88.9
	bullet_length_max = 89

	bullet_diameter_min = 15
	bullet_diameter_best = 15.6
	bullet_diameter_max = 16

	ai_heat_sensitivity = 0.75

	attachment_whitelist = list(
		/obj/item/attachment/barrel/charger = TRUE,
		/obj/item/attachment/barrel/charger/advanced = TRUE,
		/obj/item/attachment/barrel/compensator = TRUE,
		/obj/item/attachment/barrel/extended = TRUE,
		/obj/item/attachment/barrel/gyro = TRUE,
		/obj/item/attachment/barrel/laser_charger = FALSE,
		/obj/item/attachment/barrel/suppressor = TRUE,

		/obj/item/attachment/sight/laser_sight = TRUE,
		/obj/item/attachment/sight/quickfire_adapter = TRUE,
		/obj/item/attachment/sight/red_dot = TRUE,
		/obj/item/attachment/sight/scope = FALSE,
		/obj/item/attachment/sight/scope/large = FALSE,
		/obj/item/attachment/sight/targeting_computer = TRUE,



		/obj/item/attachment/undermount/angled_grip = TRUE,
		/obj/item/attachment/undermount/bipod = TRUE,
		/obj/item/attachment/undermount/burst_adapter = TRUE,
		/obj/item/attachment/undermount/vertical_grip = TRUE
	)

	attachment_barrel_offset_x = 32 - 16
	attachment_barrel_offset_y = 20 - 16

	attachment_sight_offset_x = 14 - 14
	attachment_sight_offset_y = 21 - 14

	attachment_undermount_offset_x = 23 - 12
	attachment_undermount_offset_y = 12 - 13



	inaccuracy_modifier = 0.75
	movement_inaccuracy_modifier = 0.25
	movement_spread_base = 0.04

/obj/item/weapon/ranged/bullet/magazine/shotgun/saiga_20/get_base_spread()
	return 0.2

/obj/item/weapon/ranged/bullet/magazine/shotgun/saiga_20/get_static_spread()
	return 0.007

/obj/item/weapon/ranged/bullet/magazine/shotgun/saiga_20/get_skill_spread(var/mob/living/L)
	return max(0,0.08 - (0.15 * L.get_skill_power(SKILL_RANGED)))