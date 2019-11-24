
/mob/living/simple_animal/hostile/enclave
    //default value if no values are defined in the mobs themselves
	name = "Enclave soldier"
	desc = "America will rise again."
	icon = 'icons/mob/simple_human.dmi'
	icon_state = "enclave" //add a sprite (default enclave appearance if no others are defined for the differents goons)
	icon_living = "enclave"  // add a sprite
	icon_dead = "enclave_dead" //add a sprite or keep it like that if we keep gibbing them on death
	icon_gib = "syndicate_gib"
	mob_biotypes = list(MOB_ORGANIC, MOB_HUMANOID)
	speak_chance = 0
	turns_per_move = 5
	response_help = "pokes"
	response_disarm = "shoves"
	response_harm = "hits"
	speed = 0
	stat_attack = UNCONSCIOUS
	robust_searching = 1
	maxHealth = 100
	health = 100
	harm_intent_damage = 5
	melee_damage_lower = 10
	melee_damage_upper = 10
	attacktext = "punches"
	attack_sound = 'sound/weapons/punch1.ogg'
	a_intent = INTENT_HARM
	loot = list(/obj/effect/mob_spawn/human/corpse/syndicatesoldier)
	atmos_requirements = list("min_oxy" = 5, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 1, "min_co2" = 0, "max_co2" = 5, "min_n2" = 0, "max_n2" = 0)
	unsuitable_atmos_damage = 15
	faction = list(ROLE_SYNDICATE) //add an enclave faction instead of syndie if we want them not to fire at enclave PCs
	check_friendly_fire = 1
	status_flags = CANPUSH
	del_on_death = 1





/mob/living/simple_animal/hostile/enclave/recruit //basic goon
     //combat values = 3burst to crit an unarmored, 4 for CA or T45 , 5 + 1shot connecting for a T51
	ranged = 1
	extra_projectiles = 2
	retreat_distance = 5
	minimum_distance = 5
	//Fluff elements
	name = "Enclave recruit"
	desc = "A poorly armored recruit armed with a burst fire AER7."
	//wich sprites we use
	icon_state = "syndicateranged"
	icon_living = "syndicateranged"
	//wich weapon is used
	projectilesound = 'sound/f13weapons/laser_pistol.ogg'
	projectiletype = /obj/item/projectile/beam/laser/enclaveAER7
	loot = list(/obj/effect/gibspawner/human)
	//some flavor quotes, have fun adding to them
	speak = list("Mutie SCUM!","DIE!","FOR THE US!","I SEE YOU, SCUM!")
	speak_emote = list("swear loudly")
	emote_taunt = list("stares ferociously", "Aim his gun")
	speak_chance = 10
	taunt_chance = 25


/mob/living/simple_animal/hostile/enclave/Soldier //better equipped goon
    //crit unarmored in two bursts, CA and T45 in 3, T51 in 4
	ranged = 1
	extra_projectiles = 1
	retreat_distance = 5
	minimum_distance = 5
	name = "Enclave soldier"
	desc = "A well armored veteran armed with a modified AER9."
	icon_state = "syndicaterangedstormtrooper"
	icon_living = "syndicaterangedstormtrooper"
	projectilesound = 'sound/f13weapons/laser_rifle.ogg'
	projectiletype = /obj/item/projectile/beam/laser/enclaveAER9
	loot = list(/obj/effect/gibspawner/human)
	speak = list("REMEMBER THE RIG!","DIE!","FOR THE US of A!","BURN IN HELL!")
	speak_emote = list("swear loudly")
	emote_taunt = list("stares ferociously", "Aim his gun")
	speak_chance = 10
	taunt_chance = 25