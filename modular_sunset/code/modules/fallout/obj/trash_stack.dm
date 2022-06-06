/obj/item/storage/trash_stack/initialize_lootable_trash()
	. = ..()
	var/list/extra_garbage = list(
		GLOB.trash_clothing_ex
	)
	LAZYADD(garbage_list, extra_garbage)
