/obj/item/container/simple/alcohol/
	icon = 'icons/obj/item/container/alcohol.dmi'
	reagents = /reagent_container/beaker/large
	size = SIZE_2

	allow_reagent_transfer_to = TRUE
	allow_reagent_transfer_from = TRUE

/obj/item/container/simple/alcohol/fernet
	name = "Fernet Italiano"
	icon_state = "fernet"
	initial_reagent = /reagent/nutrition/ethanol/fernet

/obj/item/container/simple/alcohol/beer
	name = "Space Beer"
	icon_state = "beer"
	reagents = /reagent_container/beaker
	initial_reagent = /reagent/nutrition/ethanol/beer

/obj/item/container/simple/alcohol/ale
	name = "Urist's Ale"
	icon_state = "ale"
	reagents = /reagent_container/beaker
	initial_reagent = /reagent/nutrition/ethanol/ale

/obj/item/container/simple/alcohol/cider
	name = "Toolbox Hard Cider"
	icon_state = "cider"
	reagents = /reagent_container/beaker
	initial_reagent = /reagent/nutrition/ethanol/cider

/obj/item/container/simple/alcohol/rum
	name = "Captain Pete's Spiced Rum"
	icon_state = "rum"
	initial_reagent = /reagent/nutrition/ethanol/rum

/obj/item/container/simple/alcohol/whiskey
	name = "Uncle Git's Special Reserve Whiskey"
	icon_state = "whiskey"
	initial_reagent = /reagent/nutrition/ethanol/whiskey

/obj/item/container/simple/alcohol/vodka
	name = "Vladimr Vodka"
	icon_state = "vodka"
	initial_reagent = /reagent/nutrition/ethanol/vodka

/obj/item/container/simple/alcohol/vodka/premium
	name = "Badminka Vodka"
	icon_state = "badminka"
	initial_reagent = /reagent/nutrition/ethanol/vodka/premium

/obj/item/container/simple/alcohol/gin
	name = "Griffeater's Gin"
	icon_state = "gin"
	initial_reagent = /reagent/nutrition/ethanol/gin

/obj/item/container/simple/alcohol/brandy
	name = "Woody & Andy's Brandy"
	icon_state = "brandy"
	initial_reagent = /reagent/nutrition/ethanol/brandy

/obj/item/container/simple/alcohol/schnapps/gold
	name = "Gold Sparkle Schnapps"
	icon_state = "schnapps_gold"
	initial_reagent = /reagent/nutrition/ethanol/schnapps/gold

/obj/item/container/simple/alcohol/nothing
	name = "Nothing"
	icon_state = "nothing"
	initial_reagent = /reagent/nutrition/ethanol/nothing

/obj/item/container/simple/alcohol/coffee_liqueur
	name = "Robusto Coffee Liqueur"
	icon_state = "coffee_liqueur"
	initial_reagent = null

/obj/item/container/simple/alcohol/coffee_liqueur/Generate()
	reagents.add_reagent(/reagent/nutrition/ethanol/coffee_liqueur,reagents.volume_max*0.5)
	reagents.add_reagent(/reagent/nutrition/energy/coffee,reagents.volume_max*0.5)
	return ..()

/obj/item/container/simple/alcohol/tequila
	name = "Spaceworm Tequila"
	icon_state = "tequila"
	initial_reagent = /reagent/nutrition/ethanol/tequila

/obj/item/container/simple/alcohol/tequila/premium
	name = "Star Premium Tequila"
	icon_state = "tequila_premium"
	initial_reagent = /reagent/nutrition/ethanol/tequila/premium

/obj/item/container/simple/alcohol/wine
	name = "Doublebeard's Red Wine"
	icon_state = "wine"
	initial_reagent = /reagent/nutrition/ethanol/wine

/obj/item/container/simple/alcohol/wine/vermouth
	name = "Bernie Sander's Vermouth"
	icon_state = "vermouth"
	initial_reagent = /reagent/nutrition/ethanol/wine/vermouth

/obj/item/container/simple/alcohol/wine/lizard
	name = "Lizard Wine"
	icon_state = "lizardwine"
	initial_reagent = /reagent/nutrition/ethanol/wine/lizard

/obj/item/container/simple/alcohol/hearty_punch
	name = "Hearty Punch"
	icon_state = "hearty_punch"
	initial_reagent = /reagent/nutrition/ethanol/hearty_punch

/obj/item/container/simple/alcohol/absinthe
	name = "Absinthe"
	icon_state = "absinthe"
	initial_reagent = /reagent/nutrition/ethanol/absinthe

/obj/item/container/simple/alcohol/absinthe/New(var/desired_loc)

	var/list/possible_names = list(
		"\[CENSORED]-Strong Absinthe",
		"Extra-Strong Absinthe",
		"EXTREMELY ROBUST Absinthe"
	)

	name = pick(possible_names)

	return ..()

/obj/item/container/simple/alcohol/absinthe/premium
	name = "Premium Yellowliver Absinthe"
	icon_state = "absinthepremium"
	initial_reagent = /reagent/nutrition/ethanol/absinthe/premium

/obj/item/container/simple/alcohol/grappa
	name = "Grandpa's Grappa"
	icon_state = "grappa"
	initial_reagent = /reagent/nutrition/ethanol/grappa