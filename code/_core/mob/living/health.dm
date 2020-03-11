/mob/living/proc/add_health_element(var/obj/hud/button/H)
	health_elements[H.id] = H
	if(client)
		client.screen += H
	update_health_elements()

/mob/living/proc/remove_health_element(var/obj/hud/button/H)
	health_elements -= H
	if(client)
		client.screen -= H
	update_health_elements()

/mob/living/proc/restore_health_elements()
	if(!client)
		return

	for(var/k in health_elements)
		var/obj/hud/button/H = health_elements[k]
		client.screen += H

	update_health_elements()

/mob/living/proc/update_health_elements()
	if(client)
		client.known_health_elements = health_elements

/mob/living/proc/update_health_element_icons(var/health=FALSE,var/stamina=FALSE,var/mana=FALSE,var/update_body=FALSE)

	if(!src.client)
		return FALSE

	if(health && health_elements["health"])
		var/obj/hud/button/health/H = health_elements["health"]
		H.update_stats(src)

	if(stamina && health_elements["stamina"])
		var/obj/hud/button/health/S = health_elements["stamina"]
		S.update_stats(src)

	if(mana && health_elements["mana"])
		var/obj/hud/button/health/M = health_elements["mana"]
		M.update_stats(src)

	if(length(screen_blood))
		for(var/obj/hud/screen_blood/SB in screen_blood)
			SB.update_stats()

	return TRUE

/mob/living/proc/check_death()

	if(!health)
		return FALSE

	if(status & FLAG_STATUS_ADRENALINE)
		var/health_added = adrenaline_time < 0 ? 100 : max(adrenaline_time/2,100)
		return health.health_current <= -health_added

	return health.health_current <= 0

/mob/living/on_damage_received(var/atom/atom_damaged,var/atom/attacker,var/list/damage_table,var/damage_amount)

	. = ..()

	if(damage_amount >= 0)
		new/obj/effect/temp/damage_number(src.loc,60,damage_amount)

	var/total_bleed_damage = SAFENUM(damage_table[BLADE])*3 + SAFENUM(damage_table[BLUNT]) + SAFENUM(damage_table[PIERCE])*2

	if(total_bleed_damage && prob(total_bleed_damage))
		var/offset_x = (src.x - attacker.x)
		var/offset_y = (src.y - attacker.y)

		if(!offset_x && !offset_y)
			offset_x = pick(-1,1)
			offset_y = pick(-1,1)

		var/norm_offset = max(abs(offset_x),abs(offset_y),1)
		offset_x = (offset_x/norm_offset) * total_bleed_damage * 0.25
		offset_y = (offset_y/norm_offset) * total_bleed_damage * 0.25

		for(var/i=1,i<=clamp(round(total_bleed_damage/50),1,5),i++)
			var/obj/blood/splatter/S = new(src.loc,SECONDS_TO_DECISECONDS(60),"#FF0000",offset_x,offset_y)
			reagents.transfer_reagents_to(S.reagents,10)

		world.log << "atom damaged: [atom_damaged]."

		if(is_organ(atom_damaged))
			var/obj/item/organ/O = atom_damaged
			O.bleeding = TRUE
			world.log << "The [O.name] is now bleeding!"

	if(ai)
		ai.on_damage_received(atom_damaged,attacker,damage_table,damage_amount)




	return .