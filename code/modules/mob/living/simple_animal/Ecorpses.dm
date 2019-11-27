//separating it from the other mobs to keep things organized and allow for easier copy pasta
var/proba = 0
/backpack/loot/proc/stimdrop(proba)

/obj/effect/mob_spawn/human/corpse/enclave/
	name = "Enclave"
	id_job = "Enclave" //if we want them to join a faction, fluff element as they are mobs
	hair_style = "Bald"
	facial_hair_style = "Shaved"
	outfit = /datum/outfit/enclave

/datum/outfit/enclave
	name = "enclave corpse"
	uniform = /obj/item/clothing/under/syndicate
	suit = /obj/item/clothing/suit/armor/vest
	shoes = /obj/item/clothing/shoes/combat
	gloves = /obj/item/clothing/gloves/combat
	ears = /obj/item/radio/headset
	mask = /obj/item/clothing/mask/gas
	head = /obj/item/clothing/head/helmet/swat
	back = /obj/item/storage/backpack
	//backpack_contents = list(/obj/item/reagent_containers/hypospray/medipen/stimpak = 25)

/obj/effect/mob_spawn/human/corpse/enclaverecruit
	name = "Enclave recruit"
	hair_style = "Bald"
	facial_hair_style = "Shaved"
	outfit = /datum/outfit/enclaverecruit

/datum/outfit/enclaverecruit
	name = "Enclave Recruit"
	uniform = /obj/item/clothing/under/f13/navy
	suit = /obj/item/clothing/suit/armor/vest
	shoes = /obj/item/clothing/shoes/combat
	gloves = /obj/item/clothing/gloves/combat
	ears = /obj/item/radio/headset
	mask = /obj/item/clothing/mask/gas
	head = /obj/item/clothing/head/helmet/alt
	back = /obj/item/storage/backpack


obj/effect/mob_spawn/human/corpse/enclavetrooper
	name = "Enclave trooper"
	hair_style = "Bald"
	facial_hair_style = "Shaved"
	outfit = /datum/outfit/enclavetrooper

/datum/outfit/enclavetrooper
	name = "Enclave trooper"
	uniform = /obj/item/clothing/under/f13/navy
	suit = /obj/item/clothing/suit/armor/f13/combat/enclave
	shoes = /obj/item/clothing/shoes/combat
	gloves = /obj/item/clothing/gloves/combat
	ears = /obj/item/radio/headset
	mask = /obj/item/clothing/mask/gas
	head = /obj/item/clothing/head/helmet/f13/combat/enclave
	back = /obj/item/storage/backpack
	backpack_contents = list(/obj/item/reagent_containers/hypospray/medipen/stimpak = 33, "" = 67)


obj/effect/mob_spawn/human/corpse/enclaveelite
	name = "Enclave Elite"
	hair_style = "Bald"
	facial_hair_style = "Shaved"
	outfit = /datum/outfit/enclaveelite

/datum/outfit/enclaveelite
	name = "Enclave Elite"
	uniform = /obj/item/clothing/under/f13/recon
	suit = /obj/item/clothing/suit/armor/f13/power_armor/advanced/mk2
	shoes = /obj/item/clothing/shoes/combat
	gloves = /obj/item/clothing/gloves/combat
	ears = /obj/item/radio/headset
	head = /obj/item/clothing/head/helmet/power_armor/advanced/mk2
	back = /obj/item/storage/backpack
	backpack_contents = list(/obj/item/reagent_containers/hypospray/medipen/stimpak )
	backpack_contents = list(/obj/item/reagent_containers/hypospray/medipen/stimpak/super = 50 , "" = 50 )

obj/effect/mob_spawn/human/corpse/enclaveofficer
	name = "Enclave Officer"
	hair_style = "Bald"
	facial_hair_style = "Shaved"
	outfit = /datum/outfit/enclaveofficer

/datum/outfit/enclaveofficer
	name = "Enclave Officer"
	uniform = /obj/item/clothing/under/f13/enclave_officer
	suit = /obj/item/clothing/suit/armor/f13/combat/enclave
	shoes = /obj/item/clothing/shoes/combat
	gloves = /obj/item/clothing/gloves/combat
	ears = /obj/item/radio/headset
	mask = /obj/item/clothing/mask/gas
	head = /obj/item/clothing/head/soft/f13/enclave
	back = /obj/item/storage/backpack
	backpack_contents = list(/obj/item/reagent_containers/hypospray/medipen/stimpak )