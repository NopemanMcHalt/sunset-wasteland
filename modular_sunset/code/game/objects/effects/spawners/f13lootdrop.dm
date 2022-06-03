// Alot of random rolls because I like random rolls, I guess.
/obj/effect/spawner/lootdrop/f13/gasmask
	name = "random gasmask spawner"
	loot = list(
		/obj/item/clothing/mask/gas/goner/aesthetic = 6,
		/obj/item/clothing/mask/gas = 3,
		/obj/item/clothing/mask/gas/stalker = 2,
		/obj/item/clothing/mask/gas/goner = 2,
		/obj/item/clothing/mask/gas/sechailer/swat = 1
	)

/obj/effect/spawner/lootdrop/f13/gasmask/goner
	name = "trencher gasmask spawner"
	loot = list(
		/obj/item/clothing/mask/gas/goner/aesthetic = 9,
		/obj/item/clothing/mask/gas/goner = 1
	)

/obj/effect/spawner/lootdrop/f13/goner_cap
	name = "random peaked cap"
	loot = list(
		/obj/item/clothing/head/helmet/f13/goner/officer/red = 5,
		/obj/item/clothing/head/helmet/f13/goner/officer/green = 5,
		/obj/item/clothing/head/helmet/f13/goner/officer/blue = 5,
		/obj/item/clothing/head/helmet/f13/goner/officer/yellow = 5
	)

/obj/effect/spawner/lootdrop/f13/goner_cap/red
	name = "peaked cap luck - red"
	loot = list(
		/obj/item/clothing/head/helmet/f13/goner/red = 8,
		/obj/item/clothing/head/helmet/f13/goner/officer/red = 2
	)

/obj/effect/spawner/lootdrop/f13/goner_cap/green
	name = "peaked cap luck - green"
	loot = list(
		/obj/item/clothing/head/helmet/f13/goner/green = 8,
		/obj/item/clothing/head/helmet/f13/goner/officer/green = 2
	)

/obj/effect/spawner/lootdrop/f13/goner_cap/blue
	name = "peaked cap luck - blue"
	loot = list(
		/obj/item/clothing/head/helmet/f13/goner/blue = 8,
		/obj/item/clothing/head/helmet/f13/goner/officer/blue = 2
	)

/obj/effect/spawner/lootdrop/f13/goner_cap/yellow
	name = "peaked cap luck - yellow"
	loot = list(
		/obj/item/clothing/head/helmet/f13/goner/yellow = 8,
		/obj/item/clothing/head/helmet/f13/goner/officer/yellow = 2
	)

// Make sure to add an extra list and a LAZYADD proc BEFORE it calls for . = ..()
// And yes, these outfits again. Probably will be replaced with just one when there would be more items to add.
/obj/effect/spawner/lootdrop/f13/armor/tier1/Initialize(mapload)
	var/list/loot_extra = list(
		/obj/effect/spawner/bundle/f13/armor/goner/red,
		/obj/effect/spawner/bundle/f13/armor/goner/green,
		/obj/effect/spawner/bundle/f13/armor/goner/blue,
		/obj/effect/spawner/bundle/f13/armor/goner/yellow
	)
	LAZYADD(loot, loot_extra)
	. = ..()

/obj/effect/spawner/bundle/f13/armor/goner/red
	name = "red trencher outfit spawner"
	items = list(
		/obj/item/clothing/under/f13/goner/red,
		/obj/item/clothing/suit/f13/goner/red,
		/obj/effect/spawner/lootdrop/f13/gasmask/goner,
		/obj/effect/spawner/lootdrop/f13/goner_cap/red
	)

/obj/effect/spawner/bundle/f13/armor/goner/green
	name = "green trencher outfit spawner"
	items = list(
		/obj/item/clothing/under/f13/goner/green,
		/obj/item/clothing/suit/f13/goner/green,
		/obj/effect/spawner/lootdrop/f13/gasmask/goner,
		/obj/effect/spawner/lootdrop/f13/goner_cap/green
	)

/obj/effect/spawner/bundle/f13/armor/goner/blue
	name = "blue trencher outfit spawner"
	items = list(
		/obj/item/clothing/under/f13/goner/blue,
		/obj/item/clothing/suit/f13/goner/blue,
		/obj/effect/spawner/lootdrop/f13/gasmask/goner,
		/obj/effect/spawner/lootdrop/f13/goner_cap/blue
	)

/obj/effect/spawner/bundle/f13/armor/goner/yellow
	name = "yellow trencher outfit spawner"
	items = list(
		/obj/item/clothing/under/f13/goner/yellow,
		/obj/item/clothing/suit/f13/goner/yellow,
		/obj/effect/spawner/lootdrop/f13/gasmask/goner,
		/obj/effect/spawner/lootdrop/f13/goner_cap/yellow
	)
