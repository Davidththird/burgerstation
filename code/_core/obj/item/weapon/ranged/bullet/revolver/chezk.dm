/obj/item/weapon/ranged/bullet/revolver/chezk
	name = "\improper Chezk tidle revolver"
	desc = "KURVA!!!!!!!!"
	desc_extended = "A horrible, peice of shit 12 shot toploader. A small envgraving on the side reads: 'neo-sybaria arms company, 2356'. Not compatible with any known third-party parts and somehow shoots .357"
	icon = 'icons/obj/item/weapons/ranged/revolver/chezk.dmi'
	icon_state = "inventory"
	value = 200

	company_type = "neo-sybaria arms company"

	tier = 2

	shoot_delay = 1

	automatic = FALSE

	bullet_count_max = 12

	shoot_sounds = list('sound/weapons/traitor/fire.ogg')

	size = SIZE_2
	weight = 10

	bullet_length_min = 20
	bullet_length_best = 33
	bullet_length_max = 35

	bullet_diameter_min = 8.5
	bullet_diameter_best = 9
	bullet_diameter_max = 9.5

	heat_max = 0.05

	attachment_whitelist = list(
		/obj/item/attachment/barrel/charger = FALSE, /obj/item/attachment/barrel/charger/advanced = FALSE,
		/obj/item/attachment/barrel/compensator = FALSE,
		/obj/item/attachment/barrel/extended = FALSE,
		/obj/item/attachment/barrel/gyro = FALSE,
		/obj/item/attachment/barrel/laser_charger = FALSE,
		/obj/item/attachment/barrel/suppressor = FALSE,

		/obj/item/attachment/sight/laser_sight = FALSE,
		/obj/item/attachment/sight/quickfire_adapter = FALSE,
		/obj/item/attachment/sight/red_dot = FALSE,
		/obj/item/attachment/sight/scope = FALSE,
		/obj/item/attachment/sight/scope/large = FALSE,
		/obj/item/attachment/sight/targeting_computer = FALSE,



		/obj/item/attachment/undermount/angled_grip = FALSE,
		/obj/item/attachment/undermount/bipod = FALSE,
		/obj/item/attachment/undermount/burst_adapter = FALSE,
		/obj/item/attachment/undermount/vertical_grip = FALSE
	)

	attachment_barrel_offset_x = 30 - 16
	attachment_barrel_offset_y = 21 - 16

	attachment_sight_offset_x = 13 - 16
	attachment_sight_offset_y = 21 - 16

	attachment_undermount_offset_x = 27 - 16
	attachment_undermount_offset_y = 19 - 16



	inaccuracy_modifier = 0.25
	movement_inaccuracy_modifier = 0.75
	movement_spread_base = 0.04


/obj/item/weapon/ranged/bullet/revolver/traitor_357/get_static_spread()
	return 0.001

/obj/item/weapon/ranged/bullet/revolver/traitor_357/get_skill_spread(var/mob/living/L)
	return max(0,0.01 - (0.01 * L.get_skill_power(SKILL_RANGED)))