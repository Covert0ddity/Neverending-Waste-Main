/mob/living/simple_animal/hostile/enclave
    //default value if no values are defined in the mobs themselves // don't use this mob, he is a placeholder and has no sprite
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
	loot = list(/obj/effect/mob_spawn/human/corpse/enclave)
	atmos_requirements = list("min_oxy" = 5, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 1, "min_co2" = 0, "max_co2" = 5, "min_n2" = 0, "max_n2" = 0)
	unsuitable_atmos_damage = 15
	faction = list(ROLE_SYNDICATE) //add an enclave faction instead of syndie if we want them not to fire at enclave PCs
	check_friendly_fire = 1
	status_flags = CANPUSH
	del_on_death = 1

/mob/living/simple_animal/hostile/enclave/recruit //basic goon
     //combat values = 3burst to crit an unarmored, 4 for CA or T45 , 5 + 1shot connecting for a T51
	ranged = 1
	maxHealth = 75 //zergling HP, deploy in mass
	health = 75
	extra_projectiles = 2
	retreat_distance = 3
	minimum_distance = 2
	//Fluff elements
	name = "Enclave recruit"
	desc = "A poorly armored recruit armed with a burst fire AER7."
	//wich sprites we use
	icon_state = "syndicateranged"
	icon_living = "syndicateranged"
	//wich weapon is used
	projectilesound = 'sound/f13weapons/laser_pistol.ogg'
	projectiletype = /obj/item/projectile/beam/laser/enclaveAER7
	//what loot he drop,the loot itself is spawned along the body (see Ecorpses)
	loot = list(/obj/effect/mob_spawn/human/corpse/enclaverecruit , /obj/effect/spawner/lootdrop/f13/Enclaverecruit)
	//some flavor quotes, have fun adding to them
	speak = list("Muties are there!","DIE!","FOR THE US!","I SEE MUTATED SCUM!")
	speak_emote = list("swear loudly")
	emote_taunt = list("stares ferociously", "Aim his gun")
	speak_chance = 10
	taunt_chance = 25

/mob/living/simple_animal/hostile/enclave/Trooper //better equipped goon
    //crit unarmored in two bursts, CA and T45 in 3, T51 in 4
	ranged = 1
	maxHealth = 150
	health = 150
	//melee if you get close, intended to be a ripper
	harm_intent_damage = 5
	melee_damage_lower = 25
	melee_damage_upper = 25
	attacktext = "Swing his ripper "
	attack_sound = 'sound/weapons/drill.ogg'
	//melee end
	extra_projectiles = 1
	retreat_distance = 2
	minimum_distance = 2
	name = "Enclave soldier"
	desc = "A well armored veteran armed with a modified AER9."
	icon_state = "syndicaterangedstormtrooper"
	icon_living = "syndicaterangedstormtrooper"
	projectilesound = 'sound/f13weapons/laser_rifle.ogg'
	projectiletype = /obj/item/projectile/beam/laser/enclaveAER9
	loot = list(/obj/effect/mob_spawn/human/corpse/enclavetrooper , /obj/effect/spawner/lootdrop/f13/Enclavesoldier)

	speak = list("REMEMBER THE RIG!","Engaging subhumans!!","Contact spotted!","BURN IN HELL!")
	speak_emote = list("swear loudly")
	emote_taunt = list("stares ferociously", "Aim his gun")
	speak_chance = 10
	taunt_chance = 25

/mob/living/simple_animal/hostile/enclave/Elite //PA dude with a gatling, intended as a mini boss
    //full burst kill anyone, altough a full burst takes two second to fire
	ranged = 1
	maxHealth = 750 //mother deathclaw HP pool, meant to represent his PA ( get me a spriter, REEEE!)
	health = 750
	harm_intent_damage = 5
	melee_damage_lower = 75 // i mean it's a PA powerfisting, you won't enjoy it
	melee_damage_upper = 75
	attacktext = "Powerfists"
	attack_sound = 'sound/weapons/punch1.ogg'
	extra_projectiles = 9
	retreat_distance = 0 //this guy ain't afraid of you
	minimum_distance = 2 //try to stay close
	name = "Enclave Elite"
	desc = "A scary foe wearing advanced power armor and using a gatling laser, RUN!."
	icon_state = "syndicaterangedspace"
	icon_living = "syndicaterangedspace"
	projectilesound = 'sound/f13weapons/laser_rifle.ogg'
	projectiletype = /obj/item/projectile/beam/laser/enclaveAER7
	speak = list("FOR NAVARRO","I'm here to kick your ass and chew bubblegum, AND I'M OUT OF BUBBLEGUM!","ENCLAVE, HURRAH!","DIE IN LASER FIRE!")
	speak_emote = list("yell hatefully")
	emote_taunt = list("stares ferociously trough the eyeslits", "spin his gun barrels")
	speak_chance = 30
	taunt_chance = 50
	loot = list(/obj/effect/mob_spawn/human/corpse/enclaveelite , /obj/effect/spawner/lootdrop/f13/Enclaveelite)

/mob/living/simple_animal/hostile/enclave/officer //just a flavor officer,cowardly but well armed,working on making him summon troops to his aid
    //Plasma rifle, 2 shots for unarmored, 3 for T45 and CA, 4for T51
	ranged = 1
	maxHealth = 150 //Not that tanky but he will flee, making him a pain to deal with
	health = 150
	harm_intent_damage = 5
	melee_damage_lower = 45 // powerfist but no PA augmented
	melee_damage_upper = 45
	attacktext = "Powerfists" //why the fuck are you in melee?
	attack_sound = 'sound/weapons/punch1.ogg'
	extra_projectiles = 0
	retreat_distance = 7 //this guy is afraid of you
	minimum_distance = 5 //try to stay behind his goons
	name = "Enclave officer"
	desc = "A ranking officer with a bruning hate for wasters. Prick."
	icon_state = "russianrangedelite"
	icon_living = "russianrangedelite"
	projectilesound = 'sound/f13weapons/plasmarifle.ogg'
	projectiletype = /obj/item/projectile/plasma
	speak = list("Contacts! enact balleplan Sigma!","Troopers! Clean these abominations!","I WILL BURN YOUR BODIES!","Troopers! Get ready for a mutie hunt!")
	speak_emote = list("talk in his headset")
	emote_taunt = list("stares with disgust")
	speak_chance = 30
	taunt_chance = 50
	loot = list(/obj/effect/mob_spawn/human/corpse/enclaveofficer , /obj/effect/spawner/lootdrop/f13/Enclaveofficer )
/mob/living/simple_animal/hostile/enclave/officer/Aggro() //this line can be recycled for other mobs, all mobs belongign to the parent type "enclave" who can see him will come to his aid when he spots a PC....so he can run away
	..()
	summon_backup(15) //15 is the radius in which the goons react
	say("MUTIE HUNTING TIME!" , "CONTACT! TO ME LADS!" , "COVER ME, FREAKING MUTIES ARE HERE!")