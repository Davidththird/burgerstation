/obj/item/storage/bags/goodie
	name = "goodie bag"
	icon = 'icons/obj/item/event_bag.dmi'
	var/loot_generated = FALSE

	var/loot/loot_to_generate

	//We generate loot later to prevent lag."

	dynamic_inventory_count = 9
	max_inventory_x = 3
	container_max_size = 0
	container_max_slots = 1

	var/open_verb = "unwrap"

/obj/item/storage/bags/goodie/get_base_value()
	return loot_generated ? 5 : initial(value)

/obj/item/storage/bags/goodie/save_item_data(var/mob/living/advanced/player/P,var/save_inventory = TRUE,var/died=FALSE)
	. = ..()
	SAVEVAR("loot_generated")

/obj/item/storage/bags/goodie/load_item_data_pre(var/mob/living/advanced/player/P,var/list/object_data)
	. = ..()
	LOADVAR("loot_generated")

/obj/item/storage/bags/goodie/click_self(var/mob/caller)

	if(!loot_generated)

		INTERACT_CHECK
		INTERACT_DELAY(1)

		loot_generated = TRUE
		var/rarity = 0
		if(is_player(caller))
			var/mob/living/advanced/player/P = caller
			rarity = P.get_rarity()
		var/list/generated_loot = SPAWN_LOOT(loot_to_generate,get_turf(src),rarity)
		for(var/k in generated_loot)
			add_to_inventory(null,k,enable_messages=FALSE,bypass=TRUE,silent=TRUE)

		caller.to_chat(span("notice","You [open_verb] \the [src.name]."))

		return TRUE

	return ..()

/obj/item/storage/bags/goodie/halloween
	name = "halloween goodie bag"
	icon_state = "halloween"

	loot_to_generate = /loot/halloween

	value = 50

/obj/item/storage/bags/goodie/kitbag
	name = "kitbag"
	desc = "Green bag for a green(?) fatigue."
	desc_extended = "Green kitbag for holding various tactical equipment. Or junk."
	icon = 'icons/obj/item/clothing/back/kitbag.dmi'
	icon_state = "inventory"

	loot_to_generate = null

	value = 250

	size = MAX_INVENTORY_X*2*SIZE_3

	dynamic_inventory_count = 8 //Double, just in case.
	container_max_size = SIZE_4
	container_max_slots = 1

/obj/item/storage/bags/goodie/kitbag/rev
	loot_to_generate = /loot/rev

/obj/item/storage/bags/goodie/kitbag/syndie
	loot_to_generate = /loot/syndie

/obj/item/storage/bags/goodie/kitbag/survivor
	loot_to_generate = /loot/survivor/reward


/obj/item/storage/bags/goodie/loot_box
	name = "loot box"
	desc = "Gacha time"
	desc_extended = "A box filled with discarded items, why did you buy a box filled with literal trash again?."
	icon = 'icons/obj/item/storage/death_box.dmi'
	icon_state = "loot"

	value = 1500

	loot_to_generate = /loot/value/medium

	size = MAX_INVENTORY_X*2*SIZE_3

	dynamic_inventory_count = 8
	container_max_size = SIZE_4
	container_max_slots = 1

	open_verb = "unlock"