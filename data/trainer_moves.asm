

;joenote - commenting this all out because yellow's method is now being used
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;LoneMoves:
;; these are used for gym leaders.
;; this is not automatic! you have to write the number you want to wLoneAttackNo
;; first. e.g., erika's script writes 4 to wLoneAttackNo to get mega drain,
;; the fourth entry in the list.
;
;; first byte:  pokemon in the trainer's party that gets the move
;; second byte: move
;; unterminated
;	db 1,BIDE
;	db 1,BUBBLEBEAM
;	db 2,THUNDERBOLT
;	db 2,MEGA_DRAIN
;	db 3,TOXIC
;	db 3,PSYWAVE
;	db 3,FIRE_BLAST
;	db 4,FISSURE
;
;TeamMoves:
;; these are used for elite four.
;; this is automatic, based on trainer class.
;; don't be confused by LoneMoves above, the two data structures are
;	; _completely_ unrelated.
;
;; first byte: trainer (all trainers in this class have this move)
;; second byte: move
;; ff-terminated
;	db LORELEI,BLIZZARD
;	db BRUNO,FISSURE
;	db AGATHA,TOXIC
;	db LANCE,BARRIER
;	db $FF
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; yellow has its own format.

; entry = trainerclass, trainerid, moveset+, 0
; moveset = partymon location, partymon's move, moveid
SpecialTrainerMoves:
	db BROCK,$1
	;geodude - tackle, defense curl
	db 1,1,ROCK_THROW
	db 1,2,DEFENSE_CURL
	db 1,3,TACKLE
	db 1,4,DIG
	;omanyte
	db 2,1,WATER_GUN
	db 2,2,BITE
	db 2,3,CONSTRICT
	db 2,4,WITHDRAW
	;onix - tackle, screech, bind, bide
	db 3,1,ROCK_THROW
	db 3,2,SCREECH
	db 3,3,HARDEN
	db 3,4,BIDE
	db 0
	
	;joenote - give the abra of the cerulean rival something to do
	;		-assume the rival got some TMs from Celadon City
	db SONY1, $7
	;pidgeotto - gust, sand attack, quick attack
	;abra - teleport, counter, tri attack
	db 2,2,COUNTER
	db 2,3,TRI_ATTACK
	;rattata - tackle, tail whip, quick attack, hyper fang
	;squirtle
	db 0

	db SONY1, $8
	;pidgeotto - gust, sand attack, quick attack
	;abra - teleport, counter, tri attack
	db 2,2,COUNTER
	db 2,3,TRI_ATTACK
	;rattata - tackle, tail whip, quick attack, hyper fang
	;bulbasaur
	db 0

	db SONY1, $9
	;pidgeotto - gust, sand attack, quick attack
	;abra - teleport, counter, tri attack
	db 2,2,COUNTER
	db 2,3,TRI_ATTACK
	;rattata - tackle, tail whip, quick attack, hyper fang
	;charmander
	db 0
	
	db MISTY,$1
	;psyduck - tackle, water gun
	db 1,1,WATER_GUN
	db 1,2,CONFUSION
	db 1,3,DISABLE
	db 1,4,BUBBLE
	;horsea
	db 2,1,WATER_GUN
	db 2,2,SMOKESCREEN
	db 2,3,LEER
	db 2,4,BUBBLE
	;starmie - tackle, water gun, harden, bubblebeam
	db 3,1,CONFUSION
	db 3,2,SWIFT
	db 3,3,HARDEN
	db 3,4,BUBBLEBEAM
	db 0
	
	db LT_SURGE,$1
	;voltorb - thunder wave, quick attack, thundershock, double team
	db 1,1,THUNDERSHOCK
	db 1,2,SONICBOOM
	db 1,3,SELFDESTRUCT
	db 1,4,SWIFT
	;electabuzz - tackle, screech, sonic boom
	db 2,1,THUNDERPUNCH
	db 2,2,SUBMISSION
	db 2,3,QUICK_ATTACK
	db 2,4,LEER
	;raichu - thunderbolt, tail whip, thunder wave, slam
	db 3,1,THUNDERBOLT
	db 3,2,HEADBUTT
	db 3,3,THUNDER_WAVE
	db 3,4,TAIL_WHIP
	db 0
	
	db ERIKA,$1
	;tangela - constrict, bind, absorb, vine whip
	db 1,1,VINE_WHIP
	db 1,2,ABSORB
	db 1,3,SLEEP_POWDER
	db 1,4,CONSTRICT
	;victreebel
	db 2,1,GROWTH
	db 2,2,SLEEP_POWDER
	db 2,3,SLUDGE
	db 2,4,RAZOR_LEAF
	;vileplume
	db 3,1,SLUDGE
	db 3,2,MEGA_DRAIN
	db 3,3,SLEEP_POWDER
	db 3,4,PETAL_DANCE
	db 0
	
	db KOGA,$1
	;arbok - explosion, double-team, sludge, smokescreen
	db 1,1,ACID
	db 1,2,BITE
	db 1,3,SCREECH
	db 1,4,GLARE
	;muk - disable, substitute, minimize, sludge
	db 2,1,DISABLE
	db 2,2,SUBSTITUTE
	db 2,3,MINIMIZE
	db 2,4,SLUDGE
	;venomoth - takedown, supersonic, mega drain, sleep powder
	db 3,3,MEGA_DRAIN
	;weezing - toxic, sludge, mimic, explosion
	db 4,1,TOXIC
	db 4,2,SLUDGE
	db 4,3,MIMIC
	db 4,4,EXPLOSION
	db 0
	
	db SABRINA,$1
	;hypno - reflect, disable, psybeam, recover
	db 1,1,REFLECT
	db 1,2,PSYBEAM
	db 1,3,HEADBUTT
	db 1,4,MEDITATE
	;mr mime - confusion, barrier, light screen, seismic toss
	db 2,1,PSYBEAM
	db 2,2,BARRIER
	db 2,3,LIGHT_SCREEN
	db 2,4,SEISMIC_TOSS
	;slowbro - supersonic, leech life, stun spore, psybeam
	db 3,1,PSYBEAM
	db 3,2,BUBBLEBEAM
	db 3,3,HEADBUTT
	db 3,4,DISABLE
	;alakazam - psywave, recover, psychic, reflect
	db 4,1,PSYWAVE
	db 4,2,REFLECT
	db 4,3,PSYCHIC_M
	db 4,4,RECOVER
	db 0
	
	db BLAINE,$1
	;ninetales - quick attack, swift, confuse ray, flamethrower
	db 1,1,SWIFT
	db 1,2,PSYBEAM
	db 1,3,FLAMETHROWER
	db 1,4,NIGHT_SHADE
	;magmar - strength, counter, confuse ray, fire punch
	db 2,1,STRENGTH
	db 2,2,COUNTER
	db 2,3,SMOKESCREEN
	db 2,4,FIRE_PUNCH
	;rapidash - tail whip, stomp, double-edge, fire spin
	db 3,1,FLAMETHROWER
	db 3,2,STOMP
	db 3,3,DOUBLE_EDGE
	db 3,4,TAIL_WHIP
	;arcanine - fire blast, bite, leer, takedown
	db 4,1,FIRE_BLAST
	db 4,2,DOUBLE_EDGE
	db 4,3,BITE
	db 4,4,AGILITY
	db 0
	
	db GIOVANNI,$3
	;golem - stomp, tail whip, fury attack, horn drill
	db 1,1,ROCK_SLIDE
	db 1,2,EARTHQUAKE
	db 1,3,BODY_SLAM
	db 1,4,SELFDESTRUCT
	;dugtrio - fissure, dig, sand attack, slash
	db 2,1,FISSURE
	db 2,2,SLASH
	db 2,3,TRI_ATTACK
	db 2,4,ROCK_THROW
	;nidoqueen - earthquake, double kick, thunder, body slam
	db 3,1,EARTHQUAKE
	db 3,2,BODY_SLAM
	db 3,3,THUNDER
	db 3,4,SMOG
	;nidoking - earthquake, double kick, ice beam, thrash
	db 4,1,EARTHQUAKE
	db 4,2,THRASH
	db 4,3,ICE_BEAM
	db 4,4,HORN_DRILL
	;rhydon
	db 5,1,ROCK_SLIDE
	db 5,2,BODY_SLAM
	db 5,3,DOUBLE_TEAM
	db 5,4,EARTHQUAKE
	db 0
	
	db LORELEI,$1
	;dewgong -  bubblebeam, aurora beam, rest, takedown
	db 1,2,REST
	;cloyster - clamp, supersonic, aurora beam, spike cannon
	db 2,2,CLAMP
	;slowbro - surf, ice beam, amnesia, psychic
	db 3,3,SURF
	db 3,4,ICE_BEAM
	;jynx - psychic, ice punch, lovely kiss, thrash
	db 4,2,PSYCHIC_M
	db 4,3,ICE_PUNCH
	db 4,4,LOVELY_KISS
	;lapras - body slam, confuse ray, blizzard, hydro pump
	db 5,1,BLIZZARD
	db 0

	db BRUNO,$1
	;onix - rock slide, screech, slam, dig
	db 1,2,SCREECH
	db 1,4,DIG
	;hitmonchan - ice punch, thunder punch, mega punch, submission
	db 2,4,ICE_PUNCH
	;hitmonlee - rolling kick, focus energy, hi jump kick, mega kick
	db 3,3,ROLLING_KICK
	db 3,4,MEDITATE
	;poliwrath
	db 4,1,HYPNOSIS
	db 4,3,BODY_SLAM
	;machamp - earthquake, focus energy, siesmic toss, submission
	db 5,2,EARTHQUAKE
	db 5,3,FOCUS_ENERGY
	db 0

	db AGATHA,$1
	;hypno - confuse ray, mimic, hypnosis, dream eater
	db 1,2,MIMIC
	db 1,3,HYPNOSIS
	db 1,4,DREAM_EATER
	;ninetales - flamethrower, substitute, night shade, fire spin
	db 2,2,SUBSTITUTE
	;marowak - bonemerang, night shade, thrash, focus energy
	db 3,4,FOCUS_ENERGY
	;arbok - earthquake, glare, screech, acid
	db 4,1,EARTHQUAKE
	db 4,4,SCREECH
	;gengar - sludge, psychic, hypnosis, dream eater
	db 0

	db LANCE,$1
	;gyarados - dragon rage, bite, hydro pump, hyperbeam
	db 1,2,BITE
	;seadra - hydro pump, blizzard, agility, dragon rage
	db 2,2,BLIZZARD
	;charizard - surf, body slam, ice beam, hyperbeam
	db 3,2,RAZOR_WIND
	db 3,3,SMOKESCREEN
	;aerodactyl - rock slide, fire blast, fly, hyperbeam
	db 4,2,FIRE_BLAST
	db 4,3,FLY
	;dragonite - dragon rage, hyperbeam, thunder, razor wind
	db 5,3,THUNDER
	db 0

	db SONY3,$1
	;pidgeot
	db 1,1,SKY_ATTACK
	db 1,2,TRI_ATTACK
	db 1,3,DOUBLE_TEAM
	;alakazam - thunderwave, recover, psychic, reflect
	db 2,4,THUNDER_WAVE
	;rhydon
	db 3,3,THUNDERBOLT
	;arcanine - reflect, rest, double edge, flamethrower
	db 4,2,REFLECT
	db 4,3,REST
	db 4,4,FLAMETHROWER
	;exeggutor - leech seed, stomp, egg bomb, hypnosis
	db 4,2,STOMP
	db 4,3,LEECH_SEED
	db 4,4,HYPNOSIS
	;blastoise - blizzard, reflect, skull bash, hydro pump
	db 6,3,BLIZZARD
	db 6,4,REFLECT
	db 0

	db SONY3,$2
	;pidgeot
	db 1,1,SKY_ATTACK
	db 1,2,TRI_ATTACK
	db 1,3,DOUBLE_TEAM
	;alakazam - thunderwave, recover, psychic, reflect
	db 2,4,THUNDER_WAVE
	;rhydon
	db 3,3,THUNDERBOLT
	;gyarados - ice beam, body slam, hydro pump, hyperbeam
	db 4,1,ICE_BEAM
	db 4,2,BODY_SLAM
	;arcanine - reflect, rest, double edge, flamethrower
	db 5,2,REFLECT
	db 5,3,REST
	db 5,4,FLAMETHROWER
	;venusaur - petal dance, toxic, sleep powder, sludge
	db 6,2,TOXIC
	db 0

	db SONY3,$3
	;pidgeot
	db 1,1,SKY_ATTACK
	db 1,2,TRI_ATTACK
	db 1,3,DOUBLE_TEAM
	;alakazam - thunderwave, recover, psychic, reflect
	db 2,4,THUNDER_WAVE
	;rhydon
	db 3,3,THUNDERBOLT
	;exeggutor - leech seed, stomp, egg bomb, hypnosis
	db 4,2,STOMP
	db 4,3,LEECH_SEED
	db 4,4,HYPNOSIS
	;gyarados - ice beam, body slam, hydro pump, hyperbeam
	db 5,1,ICE_BEAM
	db 5,2,BODY_SLAM
	;charizard - swords dance, slash, fire blast, fire spin
	db 6,4,SWORDS_DANCE
	db 0

	;prof oak's pokemon
	db PROF_OAK,$1
	;tauros - tail whip, earthquake, thunderbolt, hyperbeam
	db 1,1,TAIL_WHIP
	db 1,2,EARTHQUAKE
	db 1,3,THUNDERBOLT
	db 1,4,HYPER_BEAM
	;exeggutor - reflect, stomp, solarbeam, hypnosis
	db 2,1,REFLECT
	db 2,2,STOMP
	db 2,3,SOLARBEAM
	db 2,4,HYPNOSIS
	;arcanine - bite, fire blast, takedown, flamethrower
	db 3,1,BITE
	db 3,3,TAKE_DOWN
	db 3,4,FLAMETHROWER
	;blastoise - bite, withdraw, blizzard, hydro pump
	db 4,1,BITE
	db 4,2,WITHDRAW
	db 4,4,BLIZZARD
	;gyarados - thunderbolt, ice beam, hydro pump, hyper beam
	db 5,1,THUNDERBOLT
	db 5,2,ICE_BEAM
	db 0
	
	db PROF_OAK,$2
	;tauros - tail whip, earthquake, thunderbolt, hyperbeam
	db 1,1,TAIL_WHIP
	db 1,2,EARTHQUAKE
	db 1,3,THUNDERBOLT
	db 1,4,HYPER_BEAM
	;exeggutor - reflect, stomp, solarbeam, hypnosis
	db 2,1,REFLECT
	db 2,2,STOMP
	db 2,3,SOLARBEAM
	db 2,4,HYPNOSIS
	;arcanine - bite, fire blast, takedown, flamethrower
	db 3,1,BITE
	db 3,3,TAKE_DOWN
	db 3,4,FLAMETHROWER
	;venusaur - razor leaf, growth, body slam, solar beam
	db 4,1,RAZOR_LEAF
	db 4,2,GROWTH
	db 4,4,BODY_SLAM
	;gyarados - thunderbolt, ice beam, hydro pump, hyper beam
	db 5,1,THUNDERBOLT
	db 5,2,ICE_BEAM
	db 0
	
	db PROF_OAK,$3
	;tauros - tail whip, earthquake, thunderbolt, hyperbeam
	db 1,1,TAIL_WHIP
	db 1,2,EARTHQUAKE
	db 1,3,THUNDERBOLT
	db 1,4,HYPER_BEAM
	;exeggutor - reflect, stomp, solarbeam, hypnosis
	db 2,1,REFLECT
	db 2,2,STOMP
	db 2,3,SOLARBEAM
	db 2,4,HYPNOSIS
	;arcanine - bite, fire blast, takedown, flamethrower
	db 3,1,BITE
	db 3,3,TAKE_DOWN
	db 3,4,FLAMETHROWER
	;charizard - toxic, slash, flamethrower, fire spin
	db 4,2,TOXIC
	db 4,3,FLAMETHROWER
	;gyarados - thunderbolt, ice beam, hydro pump, hyper beam
	db 5,1,THUNDERBOLT
	db 5,2,ICE_BEAM
	db 0
	
	;mr fuji battle
	db GENTLEMAN,$5
	db 1,1,BONEMERANG
	db 1,2,BODY_SLAM
	db 1,3,SEISMIC_TOSS
	db 1,4,BLIZZARD
	db 2,1,HYDRO_PUMP
	db 2,2,ICE_BEAM
	db 2,3,REFLECT
	db 2,4,TOXIC
	db 3,1,SWORDS_DANCE
	db 3,2,SURF
	db 3,3,SLASH
	db 3,4,DOUBLE_EDGE
	db 4,1,SKY_ATTACK
	db 4,2,REFLECT
	db 4,3,HYPER_BEAM
	db 4,4,SUPERSONIC
	db 5,1,FIRE_BLAST
	db 5,2,BODY_SLAM
	db 5,3,MIMIC
	db 5,4,HYPER_BEAM
	db 0
	
	;Chief battle
	db CHIEF,$1
	db 1,1,BODY_SLAM
	db 1,2,SUBMISSION
	db 1,3,FIRE_BLAST
	db 1,4,HYPER_BEAM
	db 2,1,THUNDERBOLT
	db 2,2,ROCK_SLIDE
	db 2,3,SUBSTITUTE
	db 2,4,EARTHQUAKE
	db 3,1,AMNESIA
	db 3,2,BLIZZARD
	db 3,3,SURF
	db 3,4,MIMIC
	db 4,1,SLASH
	db 4,2,SWORDS_DANCE
	db 4,3,SEISMIC_TOSS
	db 4,4,BODY_SLAM
	db 5,1,SWORDS_DANCE
	db 5,2,SLASH
	db 5,3,AGILITY
	db 5,4,DOUBLE_EDGE
	db 6,1,HYPER_BEAM
	db 6,2,DOUBLE_EDGE
	db 6,3,STOMP
	db 6,4,REST
	db 0
	
	;Seiga battle
	db JR_TRAINER_F,$18
	db 1,1,PSYCHIC_M
	db 1,2,SING
	db 1,3,METRONOME
	db 1,4,DOUBLE_EDGE
	db 2,1,THUNDERBOLT
	db 2,2,HYPNOSIS
	db 2,3,MEGA_DRAIN
	db 2,4,CONFUSE_RAY
	db 3,1,SWORDS_DANCE
	db 3,2,RAZOR_LEAF
	db 3,3,SLEEP_POWDER
	db 3,4,BODY_SLAM
	db 4,1,FIRE_BLAST
	db 4,2,REFLECT
	db 4,3,HYPER_BEAM
	db 4,4,CONFUSE_RAY
	db 5,1,EARTHQUAKE
	db 5,2,ROCK_SLIDE
	db 5,3,SUBMISSION
	db 5,4,HYPER_BEAM
	db 6,1,SURF
	db 6,2,BLIZZARD
	db 6,3,SEISMIC_TOSS
	db 6,4,MIMIC
	db 0
	
	;Red battle
	db JR_TRAINER_M,$9
	db 1,1,BLIZZARD
	db 1,2,THUNDERBOLT
	db 1,3,BODY_SLAM
	db 1,4,CONFUSE_RAY
	db 2,1,RAZOR_LEAF
	db 2,2,SLEEP_POWDER
	db 2,3,BODY_SLAM
	db 2,4,SWORDS_DANCE
	db 3,1,FIRE_BLAST
	db 3,2,EARTHQUAKE
	db 3,3,SWORDS_DANCE
	db 3,4,HYPER_BEAM
	db 4,1,HYDRO_PUMP
	db 4,2,BLIZZARD
	db 4,3,BODY_SLAM
	db 4,4,EARTHQUAKE
	db 5,1,HYPER_BEAM
	db 5,2,REST
	db 5,3,BODY_SLAM
	db 5,4,EARTHQUAKE
	db 6,1,THUNDER
	db 6,2,THUNDER_WAVE
	db 6,3,SURF
	db 6,4,DOUBLE_TEAM
	db 0
	
	;multi missingno superboss battle
	db CHIEF,$3
	db 1,1,LEECH_SEED
	db 1,2,TOXIC
	db 1,3,SUPER_FANG
	db 1,4,NIGHT_SHADE
	db 2,1,EARTHQUAKE
	db 2,2,HYPER_BEAM
	db 2,3,CONFUSE_RAY
	db 2,4,SPORE
	db 3,1,PSYCHIC_M
	db 3,2,BLIZZARD
	db 3,3,THUNDER_WAVE
	db 3,4,REST
	db 0
	
	db $ff
