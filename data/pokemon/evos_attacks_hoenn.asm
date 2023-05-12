SECTION "Hoenn Evolutions and Attacks", ROMX

HoennEvosAttacksPointers::
	dw PoochyenaEvosAttacks
	dw MightyenaEvosAttacks
	dw ZigzagoonEvosAttacks
	dw LinooneEvosAttacks
	dw WingullEvosAttacks
	dw PelipperEvosAttacks
	dw RaltsEvosAttacks
	dw KirliaEvosAttacks
	dw GardevoirEvosAttacks
	dw SurskitEvosAttacks
	dw MasquerainEvosAttacks
	dw ShroomishEvosAttacks
	dw BreloomEvosAttacks
	dw NincadaEvosAttacks
	dw NinjaskEvosAttacks
	dw ShedinjaEvosAttacks
	dw MakuhitaEvosAttacks
	dw HariyamaEvosAttacks
	dw AzurillEvosAttacks
	dw AronEvosAttacks
	dw LaironEvosAttacks
	dw AggronEvosAttacks
	dw CarvanhaEvosAttacks
	dw SharpedoEvosAttacks
	dw WailmerEvosAttacks
	dw WailordEvosAttacks
	dw NumelEvosAttacks
	dw CameruptEvosAttacks
	dw SpoinkEvosAttacks
	dw GrumpigEvosAttacks
	dw SpindaEvosAttacks
	dw TrapinchEvosAttacks
	dw VibravaEvosAttacks
	dw FlygonEvosAttacks
	dw SwabluEvosAttacks
	dw AltariaEvosAttacks
	dw ZangooseEvosAttacks
	dw SeviperEvosAttacks
	dw FeebasEvosAttacks
	dw MiloticEvosAttacks
	dw KecleonEvosAttacks
	dw ShuppetEvosAttacks
	dw BanetteEvosAttacks
	dw DuskullEvosAttacks
	dw DusclopsEvosAttacks
	dw TropiusEvosAttacks
	dw ChimechoEvosAttacks
	dw WynautEvosAttacks
	dw SnoruntEvosAttacks
	dw GlalieEvosAttacks
	dw SphealEvosAttacks
	dw SealeoEvosAttacks
	dw WalreinEvosAttacks
	dw RelicanthEvosAttacks
	dw LuvdiscEvosAttacks
	dw LatiasEvosAttacks
	dw LatiosEvosAttacks
.IndirectEnd::

PoochyenaEvosAttacks:
	dbbw EVOLVE_LEVEL, 18, MIGHTYENA
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 5, HOWL
	dbw 9, SAND_ATTACK
	dbw 13, BITE
	dbw 17, ODOR_SLEUTH
	dbw 21, ROAR
	dbw 25, SWAGGER
	dbw 29, ASSURANCE
	dbw 33, SCARY_FACE
	dbw 37, TAUNT
	dbw 41, EMBARGO
	dbw 45, TAKE_DOWN
	dbw 49, SUCKER_PUNCH
	dbw 53, CRUNCH
	db 0 ; no more level-up moves

MightyenaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, HOWL
	dbw 1, SAND_ATTACK
	dbw 1, BITE
	dbw 5, HOWL
	dbw 9, SAND_ATTACK
	dbw 13, BITE
	dbw 17, ODOR_SLEUTH
	dbw 22, ROAR
	dbw 27, SWAGGER
	dbw 32, ASSURANCE
	dbw 37, SCARY_FACE
	dbw 42, TAUNT
	dbw 47, EMBARGO
	dbw 52, TAKE_DOWN
	dbw 57, THIEF
	dbw 62, SUCKER_PUNCH
	db 0 ; no more level-up moves

ZigzagoonEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, LINOONE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 5, TAIL_WHIP
	dbw 9, HEADBUTT
	dbw 13, SAND_ATTACK
	dbw 17, ODOR_SLEUTH
	dbw 21, MUD_SPORT
	dbw 25, PIN_MISSILE
	dbw 29, COVET
	dbw 33, FLAIL
	dbw 37, REST
	dbw 41, BELLY_DRUM
	dbw 45, FLING
	db 0 ; no more level-up moves

LinooneEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SWITCHEROO
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, TAIL_WHIP
	dbw 1, HEADBUTT
	dbw 5, TAIL_WHIP
	dbw 9, HEADBUTT
	dbw 13, SAND_ATTACK
	dbw 17, ODOR_SLEUTH
	dbw 23, MUD_SPORT
	dbw 29, FURY_SWIPES
	dbw 35, COVET
	dbw 41, SLASH
	dbw 47, REST
	dbw 53, BELLY_DRUM
	dbw 59, FLING
	db 0 ; no more level-up moves

WingullEvosAttacks:
	dbbw EVOLVE_LEVEL, 25, PELIPPER
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, WATER_GUN
	dbw 6, SUPERSONIC
	dbw 11, WING_ATTACK
	dbw 16, MIST
	dbw 19, WATER_PULSE
	dbw 24, QUICK_ATTACK
	dbw 29, ROOST
	dbw 34, PURSUIT
	dbw 37, AGILITY
	dbw 42, AERIAL_ACE
	dbw 47, AIR_SLASH
	db 0 ; no more level-up moves

PelipperEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, WATER_GUN
	dbw 1, WATER_SPORT
	dbw 1, WING_ATTACK
	dbw 6, SUPERSONIC
	dbw 11, WING_ATTACK
	dbw 16, MIST
	dbw 19, WATER_PULSE
	dbw 24, PAYBACK
	dbw 25, PROTECT
	dbw 31, ROOST
	dbw 38, STOCKPILE
	dbw 38, SWALLOW
	dbw 38, SPIT_UP
	dbw 43, FLING
	dbw 50, TAILWIND
	dbw 57, HYDRO_PUMP
	db 0 ; no more level-up moves

RaltsEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, KIRLIA
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 6, CONFUSION
	dbw 10, DOUBLE_TEAM
	dbw 12, TELEPORT
	dbw 17, LUCKY_CHANT
	dbw 21, MAGICAL_LEAF
	dbw 23, CALM_MIND
	dbw 28, PSYCHIC_M
	dbw 32, IMPRISON
	dbw 34, FUTURE_SIGHT
	dbw 39, CHARM
	dbw 43, HYPNOSIS
	dbw 45, DREAM_EATER
	db 0 ; no more level-up moves

KirliaEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, GARDEVOIR
	dbbw EVOLVE_ITEM_MALE, WATER_STONE, GALLADE ;DAWN_STONE
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, CONFUSION
	dbw 1, DOUBLE_TEAM
	dbw 1, TELEPORT
	dbw 6, CONFUSION
	dbw 10, DOUBLE_TEAM
	dbw 12, TELEPORT
	dbw 17, LUCKY_CHANT
	dbw 22, MAGICAL_LEAF
	dbw 25, CALM_MIND
	dbw 31, PSYCHIC_M
	dbw 36, IMPRISON
	dbw 39, FUTURE_SIGHT
	dbw 45, CHARM
	dbw 50, HYPNOSIS
	dbw 53, DREAM_EATER
	db 0 ; no more level-up moves

GardevoirEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, HEALING_WISH
	dbw 1, GROWL
	dbw 1, CONFUSION
	dbw 1, DOUBLE_TEAM
	dbw 1, TELEPORT
	dbw 6, CONFUSION
	dbw 10, DOUBLE_TEAM
	dbw 12, TELEPORT
	dbw 17, WISH
	dbw 22, MAGICAL_LEAF
	dbw 25, CALM_MIND
	dbw 33, PSYCHIC_M
	dbw 40, IMPRISON
	dbw 45, FUTURE_SIGHT
	dbw 53, CAPTIVATE
	dbw 60, HYPNOSIS
	dbw 65, DREAM_EATER
	db 0 ; no more level-up moves

SurskitEvosAttacks:
	dbbw EVOLVE_LEVEL, 22, MASQUERAIN
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 7, QUICK_ATTACK
	dbw 13, SWEET_SCENT
	dbw 19, WATER_SPORT
	dbw 25, BUBBLEBEAM
	dbw 31, AGILITY
	dbw 37, MIST
	dbw 37, HAZE
	dbw 43, BATON_PASS
	db 0 ; no more level-up moves

MasquerainEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, OMINOUS_WIND
	dbw 1, BUBBLE
	dbw 1, QUICK_ATTACK
	dbw 1, SWEET_SCENT
	dbw 1, WATER_SPORT
	dbw 7, QUICK_ATTACK
	dbw 13, SWEET_SCENT
	dbw 19, WATER_SPORT
	dbw 22, GUST
	dbw 26, SCARY_FACE
	dbw 33, STUN_SPORE
	dbw 40, SILVER_WIND
	dbw 47, AIR_SLASH
	dbw 54, WHIRLWIND
	dbw 61, BUG_BUZZ
	db 0 ; no more level-up moves

ShroomishEvosAttacks:
	dbbw EVOLVE_LEVEL, 23, BRELOOM
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 5, TACKLE
	dbw 9, STUN_SPORE
	dbw 13, LEECH_SEED
	dbw 17, MEGA_DRAIN
	dbw 21, HEADBUTT
	dbw 25, POISONPOWDER
	dbw 29, WORRY_SEED
	dbw 33, GROWTH
	dbw 37, GIGA_DRAIN
	dbw 41, SEED_BOMB
	dbw 45, SPORE
	db 0 ; no more level-up moves

BreloomEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 1, TACKLE
	dbw 1, STUN_SPORE
	dbw 1, LEECH_SEED
	dbw 5, TACKLE
	dbw 9, STUN_SPORE
	dbw 13, LEECH_SEED
	dbw 17, MEGA_DRAIN
	dbw 21, HEADBUTT
	dbw 23, MACH_PUNCH
	dbw 25, COUNTER
	dbw 29, FORCE_PALM
	dbw 33, SKY_UPPERCUT
	dbw 37, MIND_READER
	dbw 41, SEED_BOMB
	dbw 45, DYNAMICPUNCH
	db 0 ; no more level-up moves

NincadaEvosAttacks:
	dbbwbw EVOLVE_CREATE_NEW, POKE_BALL, SHEDINJA, 20, NINJASK
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, HARDEN
	dbw 5, LEECH_LIFE
	dbw 9, SAND_ATTACK
	dbw 14, FURY_SWIPES
	dbw 19, MIND_READER
	dbw 25, FALSE_SWIPE
	dbw 31, MUD_SLAP
	dbw 38, METAL_CLAW
	dbw 45, DIG
	db 0 ; no more level-up moves

NinjaskEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BUG_BITE
	dbw 1, SCRATCH
	dbw 1, HARDEN
	dbw 1, LEECH_LIFE
	dbw 1, SAND_ATTACK
	dbw 4, SPACIAL_REND
	dbw 5, LEECH_LIFE
	dbw 9, SAND_ATTACK
	dbw 14, FURY_SWIPES
	dbw 19, MIND_READER
	dbw 20, DOUBLE_TEAM
	dbw 20, FURY_CUTTER
	dbw 20, SCREECH
	dbw 25, SWORDS_DANCE
	dbw 31, SLASH
	dbw 38, AGILITY
	dbw 45, BATON_PASS
	dbw 52, X_SCISSOR
	db 0 ; no more level-up moves

ShedinjaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, HARDEN
	dbw 5, LEECH_LIFE
	dbw 9, SAND_ATTACK
	dbw 14, FURY_SWIPES
	dbw 19, MIND_READER
	dbw 25, SPITE
	dbw 31, CONFUSE_RAY
	dbw 38, SHADOW_SNEAK
	dbw 45, GRUDGE
	dbw 52, HEAL_BLOCK
	dbw 59, SHADOW_BALL
	db 0 ; no more level-up moves

MakuhitaEvosAttacks:
	dbbw EVOLVE_LEVEL, 24, HARIYAMA
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, FOCUS_ENERGY
	dbw 4, SAND_ATTACK
	dbw 7, ARM_THRUST
	dbw 10, VITAL_THROW
	dbw 13, FAKE_OUT
	dbw 16, WHIRLWIND
	dbw 19, KNOCK_OFF
	dbw 22, SMELLINGSALT
	dbw 25, BELLY_DRUM
	dbw 28, FORCE_PALM
	dbw 31, SEISMIC_TOSS
	dbw 34, WAKE_UP_SLAP
	dbw 37, ENDURE
	dbw 40, CLOSE_COMBAT
	dbw 43, REVERSAL
	db 0 ; no more level-up moves

HariyamaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BRINE
	dbw 1, TACKLE
	dbw 1, FOCUS_ENERGY
	dbw 1, SAND_ATTACK
	dbw 1, ARM_THRUST
	dbw 4, SAND_ATTACK
	dbw 7, ARM_THRUST
	dbw 10, VITAL_THROW
	dbw 13, FAKE_OUT
	dbw 16, WHIRLWIND
	dbw 19, KNOCK_OFF
	dbw 22, SMELLINGSALT
	dbw 27, BELLY_DRUM
	dbw 32, FORCE_PALM
	dbw 37, SEISMIC_TOSS
	dbw 42, WAKE_UP_SLAP
	dbw 47, ENDURE
	dbw 52, CLOSE_COMBAT
	dbw 57, REVERSAL
	db 0 ; no more level-up moves

AzurillEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, MARILL
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 2, CHARM
	dbw 7, TAIL_WHIP
	dbw 10, BUBBLE
	dbw 15, SLAM
	dbw 18, WATER_GUN
	db 0 ; no more level-up moves

AronEvosAttacks:
	dbbw EVOLVE_LEVEL, 32, LAIRON
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 4, HARDEN
	dbw 8, MUD_SLAP
	dbw 11, HEADBUTT
	dbw 15, METAL_CLAW
	dbw 18, IRON_DEFENSE
	dbw 22, ROAR
	dbw 25, TAKE_DOWN
	dbw 29, IRON_HEAD
	dbw 32, PROTECT
	dbw 36, METAL_SOUND
	dbw 39, IRON_TAIL
	dbw 43, DOUBLE_EDGE
	dbw 46, METAL_BURST
	db 0 ; no more level-up moves

LaironEvosAttacks:
	dbbw EVOLVE_LEVEL, 42, AGGRON
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, HARDEN
	dbw 1, MUD_SLAP
	dbw 1, HEADBUTT
	dbw 4, HARDEN
	dbw 8, MUD_SLAP
	dbw 11, HEADBUTT
	dbw 15, METAL_CLAW
	dbw 18, IRON_DEFENSE
	dbw 22, ROAR
	dbw 25, TAKE_DOWN
	dbw 29, IRON_HEAD
	dbw 34, PROTECT
	dbw 40, METAL_SOUND
	dbw 45, IRON_TAIL
	dbw 51, DOUBLE_EDGE
	dbw 56, METAL_BURST
	db 0 ; no more level-up moves

AggronEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, HARDEN
	dbw 1, MUD_SLAP
	dbw 1, HEADBUTT
	dbw 4, HARDEN
	dbw 8, MUD_SLAP
	dbw 11, HEADBUTT
	dbw 15, METAL_CLAW
	dbw 18, IRON_DEFENSE
	dbw 22, ROAR
	dbw 25, TAKE_DOWN
	dbw 29, IRON_HEAD
	dbw 34, PROTECT
	dbw 40, METAL_SOUND
	dbw 48, IRON_TAIL
	dbw 57, DOUBLE_EDGE
	dbw 65, METAL_BURST
	db 0 ; no more level-up moves

CarvanhaEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, SHARPEDO
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, BITE
	dbw 6, RAGE
	dbw 8, FOCUS_ENERGY
	dbw 11, SCARY_FACE
	dbw 16, ICE_FANG
	dbw 18, SCREECH
	dbw 21, SWAGGER
	dbw 26, ASSURANCE
	dbw 28, CRUNCH
	dbw 31, AQUA_JET
	dbw 36, AGILITY
	dbw 38, TAKE_DOWN
	db 0 ; no more level-up moves

SharpedoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, FEINT
	dbw 1, LEER
	dbw 1, BITE
	dbw 1, RAGE
	dbw 1, FOCUS_ENERGY
	dbw 6, RAGE
	dbw 8, FOCUS_ENERGY
	dbw 11, SCARY_FACE
	dbw 16, ICE_FANG
	dbw 18, SCREECH
	dbw 21, SWAGGER
	dbw 26, ASSURANCE
	dbw 28, CRUNCH
	dbw 30, SLASH
	dbw 34, AQUA_JET
	dbw 40, TAUNT
	dbw 45, AGILITY
	dbw 50, SKULL_BASH
	dbw 56, NIGHT_SLASH
	db 0 ; no more level-up moves

WailmerEvosAttacks:
	dbbw EVOLVE_LEVEL, 40, WAILORD
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 4, GROWL
	dbw 7, WATER_GUN
	dbw 11, ROLLOUT
	dbw 14, WHIRLPOOL
	dbw 17, ASTONISH
	dbw 21, WATER_PULSE
	dbw 24, MIST
	dbw 27, REST
	dbw 31, BRINE
	dbw 34, WATER_SPOUT
	dbw 37, AMNESIA
	dbw 41, DIVE
	dbw 44, BOUNCE
	dbw 47, HYDRO_PUMP
	db 0 ; no more level-up moves

WailordEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 1, GROWL
	dbw 1, WATER_GUN
	dbw 1, ROLLOUT
	dbw 4, GROWL
	dbw 7, WATER_GUN
	dbw 11, ROLLOUT
	dbw 14, WHIRLPOOL
	dbw 17, ASTONISH
	dbw 21, WATER_PULSE
	dbw 24, MIST
	dbw 27, REST
	dbw 31, BRINE
	dbw 34, WATER_SPOUT
	dbw 37, AMNESIA
	dbw 46, DIVE
	dbw 54, BOUNCE
	dbw 62, HYDRO_PUMP
	db 0 ; no more level-up moves

NumelEvosAttacks:
	dbbw EVOLVE_LEVEL, 33, CAMERUPT
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, TACKLE
	dbw 5, EMBER
	dbw 11, MAGNITUDE
	dbw 15, FOCUS_ENERGY
	dbw 21, TAKE_DOWN
	dbw 25, AMNESIA
	dbw 31, LAVA_PLUME
	dbw 35, EARTH_POWER
	dbw 41, EARTHQUAKE
	dbw 45, FLAMETHROWER
	dbw 51, DOUBLE_EDGE
	db 0 ; no more level-up moves

CameruptEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, TACKLE
	dbw 1, EMBER
	dbw 1, MAGNITUDE
	dbw 5, EMBER
	dbw 11, MAGNITUDE
	dbw 15, FOCUS_ENERGY
	dbw 21, TAKE_DOWN
	dbw 25, AMNESIA
	dbw 31, LAVA_PLUME
	dbw 33, ROCK_SLIDE
	dbw 39, EARTH_POWER
	dbw 49, EARTHQUAKE
	dbw 57, ERUPTION
	dbw 67, FISSURE
	db 0 ; no more level-up moves

SpoinkEvosAttacks:
	dbbw EVOLVE_LEVEL, 32, GRUMPIG
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 7, PSYWAVE
	dbw 10, ODOR_SLEUTH
	dbw 14, PSYBEAM
	dbw 15, PSYCH_UP
	dbw 18, CONFUSE_RAY
	dbw 21, MAGIC_COAT
	dbw 26, ZEN_HEADBUTT
	dbw 29, REST
	dbw 29, SNORE
	dbw 34, PAYBACK
	dbw 41, PSYCHIC_M
	dbw 46, POWER_GEM
	dbw 48, BOUNCE
	db 0 ; no more level-up moves

GrumpigEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 1, PSYWAVE
	dbw 1, ODOR_SLEUTH
	dbw 1, PSYBEAM
	dbw 7, PSYWAVE
	dbw 10, ODOR_SLEUTH
	dbw 14, PSYBEAM
	dbw 15, PSYCH_UP
	dbw 18, CONFUSE_RAY
	dbw 21, MAGIC_COAT
	dbw 26, ZEN_HEADBUTT
	dbw 29, REST
	dbw 29, SNORE
	dbw 37, PAYBACK
	dbw 47, PSYCHIC_M
	dbw 55, POWER_GEM
	dbw 60, BOUNCE
	db 0 ; no more level-up moves

SpindaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 5, UPROAR
	dbw 10, COPYCAT
	dbw 14, FAINT_ATTACK
	dbw 19, PSYBEAM
	dbw 23, HYPNOSIS
	dbw 28, DIZZY_PUNCH
	dbw 32, SUCKER_PUNCH
	dbw 37, TEETER_DANCE
	dbw 41, PSYCH_UP
	dbw 46, DOUBLE_EDGE
	dbw 50, FLAIL
	dbw 55, THRASH
	db 0 ; no more level-up moves

TrapinchEvosAttacks:
	dbbw EVOLVE_LEVEL, 35, VIBRAVA
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 9, SAND_ATTACK
	dbw 17, FAINT_ATTACK
	dbw 25, SAND_TOMB
	dbw 33, CRUNCH
	dbw 41, DIG
	dbw 49, SANDSTORM
	dbw 57, HYPER_BEAM
	dbw 65, EARTH_POWER
	dbw 73, EARTHQUAKE
	dbw 81, FEINT
	dbw 89, FISSURE
	db 0 ; no more level-up moves

VibravaEvosAttacks:
	dbbw EVOLVE_LEVEL, 45, FLYGON
	db 0 ; no more evolutions
	dbw 1, SONICBOOM
	dbw 1, SAND_ATTACK
	dbw 1, FAINT_ATTACK
	dbw 1, SAND_TOMB
	dbw 9, SAND_ATTACK
	dbw 17, FAINT_ATTACK
	dbw 25, SAND_TOMB
	dbw 33, SUPERSONIC
	dbw 35, DRAGONBREATH
	dbw 41, SCREECH
	dbw 49, SANDSTORM
	dbw 57, HYPER_BEAM
	db 0 ; no more level-up moves

FlygonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SONICBOOM
	dbw 1, SAND_ATTACK
	dbw 1, FAINT_ATTACK
	dbw 1, SAND_TOMB
	dbw 9, SAND_ATTACK
	dbw 17, FAINT_ATTACK
	dbw 25, SAND_TOMB
	dbw 33, SUPERSONIC
	dbw 35, DRAGONBREATH
	dbw 41, SCREECH
	dbw 45, DRAGON_CLAW
	dbw 49, SANDSTORM
	dbw 57, HYPER_BEAM
	db 0 ; no more level-up moves

SwabluEvosAttacks:
	dbbw EVOLVE_LEVEL, 35, ALTARIA
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, GROWL
	dbw 5, ASTONISH
	dbw 9, SING
	dbw 13, FURY_ATTACK
	dbw 18, SAFEGUARD
	dbw 23, MIST
	dbw 28, TAKE_DOWN
	dbw 32, NATURAL_GIFT
	dbw 36, MIRROR_MOVE
	dbw 40, REFRESH
	dbw 45, DRAGON_PULSE
	dbw 50, PERISH_SONG
	db 0 ; no more level-up moves

AltariaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PLUCK
	dbw 1, PECK
	dbw 1, GROWL
	dbw 1, ASTONISH
	dbw 1, SING
	dbw 5, ASTONISH
	dbw 9, SING
	dbw 13, FURY_ATTACK
	dbw 18, SAFEGUARD
	dbw 23, MIST
	dbw 28, TAKE_DOWN
	dbw 32, NATURAL_GIFT
	dbw 35, DRAGONBREATH
	dbw 39, DRAGON_DANCE
	dbw 46, REFRESH
	dbw 54, DRAGON_PULSE
	dbw 62, PERISH_SONG
	dbw 70, SKY_ATTACK
	db 0 ; no more level-up moves
	
ZangooseEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 5, QUICK_ATTACK
	dbw 9, SWORDS_DANCE
	dbw 14, FURY_CUTTER
	dbw 18, SLASH
	dbw 22, PURSUIT
	dbw 27, EMBARGO
	dbw 31, CRUSH_CLAW
	dbw 35, TAUNT
	dbw 40, DETECT
	dbw 44, FALSE_SWIPE
	dbw 48, X_SCISSOR
	dbw 53, CLOSE_COMBAT
	db 0 ; no more level-up moves

SeviperEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WRAP
	dbw 7, LICK
	dbw 10, BITE
	dbw 16, POISON_TAIL
	dbw 19, SCREECH
	dbw 25, GLARE
	dbw 28, CRUNCH
	dbw 34, POISON_FANG
	dbw 37, SWAGGER
	dbw 43, HAZE
	dbw 46, NIGHT_SLASH
	dbw 52, POISON_JAB
	dbw 55, WRING_OUT
	db 0 ; no more level-up moves

FeebasEvosAttacks:
	dbbw EVOLVE_TRADE, DRAGON_SCALE, MILOTIC ;PRISM_SCALE
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 15, TACKLE
	dbw 30, FLAIL
	db 0 ; no more level-up moves

MiloticEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WATER_GUN
	dbw 1, WRAP
	dbw 5, WATER_SPORT
	dbw 9, REFRESH
	dbw 13, WATER_PULSE
	dbw 17, TWISTER
	dbw 21, RECOVER
	dbw 25, CAPTIVATE
	dbw 29, AQUA_TAIL
	dbw 33, RAIN_DANCE
	dbw 37, HYDRO_PUMP
	dbw 41, ATTRACT
	dbw 45, SAFEGUARD
	dbw 49, AQUA_RING
	db 0 ; no more level-up moves

KecleonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, THIEF
	dbw 1, TAIL_WHIP
	dbw 1, ASTONISH
	dbw 1, LICK
	dbw 1, SCRATCH
	dbw 4, BIND
	dbw 7, FAINT_ATTACK
	dbw 10, FURY_SWIPES
	dbw 14, FEINT
	dbw 18, PSYBEAM
	dbw 22, SHADOW_SNEAK
	dbw 27, SLASH
	dbw 32, SCREECH
	dbw 37, SUBSTITUTE
	dbw 43, SUCKER_PUNCH
	dbw 49, SHADOW_CLAW
	dbw 55, ANCIENTPOWER
	db 0 ; no more level-up moves

ShuppetEvosAttacks:
	dbbw EVOLVE_LEVEL, 37, BANETTE
	db 0 ; no more evolutions
	dbw 1, KNOCK_OFF
	dbw 5, SCREECH
	dbw 8, NIGHT_SHADE
	dbw 13, CURSE
	dbw 16, SPITE
	dbw 20, SHADOW_SNEAK
	dbw 23, WILL_O_WISP
	dbw 28, FAINT_ATTACK
	dbw 31, SHADOW_BALL
	dbw 35, SUCKER_PUNCH
	dbw 38, EMBARGO
	dbw 43, SNATCH
	dbw 46, GRUDGE
	dbw 50, TRICK
	db 0 ; no more level-up moves

BanetteEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, KNOCK_OFF
	dbw 1, SCREECH
	dbw 1, NIGHT_SHADE
	dbw 1, CURSE
	dbw 8, SCREECH
	dbw 5, NIGHT_SHADE
	dbw 13, CURSE
	dbw 16, SPITE
	dbw 20, SHADOW_SNEAK
	dbw 23, WILL_O_WISP
	dbw 28, FAINT_ATTACK
	dbw 31, SHADOW_BALL
	dbw 35, SUCKER_PUNCH
	dbw 42, EMBARGO
	dbw 51, SNATCH
	dbw 58, GRUDGE
	dbw 66, TRICK
	db 0 ; no more level-up moves

DuskullEvosAttacks:
	dbbw EVOLVE_LEVEL, 37, DUSCLOPS
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, NIGHT_SHADE
	dbw 6, DISABLE
	dbw 9, FORESIGHT
	dbw 14, ASTONISH
	dbw 17, CONFUSE_RAY
	dbw 22, SHADOW_SNEAK
	dbw 25, PURSUIT
	dbw 30, CURSE
	dbw 33, WILL_O_WISP
	dbw 38, MEAN_LOOK
	dbw 41, PAYBACK
	dbw 46, FUTURE_SIGHT
	db 0 ; no more level-up moves

DusclopsEvosAttacks:
	dbbw EVOLVE_TRADE, DRAGON_SCALE, DUSKNOIR ;REAPER_CLOTH
	db 0 ; no more evolutions
	dbw 1, FIRE_PUNCH
	dbw 1, ICE_PUNCH
	dbw 1, THUNDERPUNCH
	dbw 1, GRAVITY
	dbw 1, BIND
	dbw 1, LEER
	dbw 1, NIGHT_SHADE
	dbw 1, DISABLE
	dbw 6, DISABLE
	dbw 9, FORESIGHT
	dbw 14, ASTONISH
	dbw 17, CONFUSE_RAY
	dbw 22, SHADOW_SNEAK
	dbw 25, PURSUIT
	dbw 30, CURSE
	dbw 33, WILL_O_WISP
	dbw 37, SHADOW_PUNCH
	dbw 43, MEAN_LOOK
	dbw 51, PAYBACK
	dbw 61, FUTURE_SIGHT
	db 0 ; no more level-up moves

TropiusEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, GUST
	dbw 7, GROWTH
	dbw 11, RAZOR_LEAF
	dbw 17, STOMP
	dbw 21, SWEET_SCENT
	dbw 27, WHIRLWIND
	dbw 31, MAGICAL_LEAF
	dbw 37, BODY_SLAM
	dbw 41, SYNTHESIS
	dbw 47, AIR_SLASH
	dbw 51, SOLARBEAM
	dbw 57, NATURAL_GIFT
	dbw 61, LEAF_STORM
	db 0 ; no more level-up moves

ChimechoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WRAP
	dbw 6, GROWL
	dbw 9, ASTONISH
	dbw 14, CONFUSION
	dbw 17, UPROAR
	dbw 22, TAKE_DOWN
	dbw 25, YAWN
	dbw 30, PSYWAVE
	dbw 33, DOUBLE_EDGE
	dbw 38, HEAL_BELL
	dbw 41, SAFEGUARD
	dbw 46, EXTRASENSORY
	dbw 49, HEALING_WISH
	db 0 ; no more level-up moves

WynautEvosAttacks:
	dbbw EVOLVE_LEVEL, 15, WOBBUFFET
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 1, CHARM
	dbw 1, ENCORE
	dbw 15, COUNTER
	dbw 15, MIRROR_COAT
	dbw 15, SAFEGUARD
	dbw 15, DESTINY_BOND
	db 0 ; no more level-up moves

SnoruntEvosAttacks:
	dbbw EVOLVE_LEVEL, 42, GLALIE
	dbbw EVOLVE_ITEM_FEMALE, WATER_STONE, FROSLASS ;DAWN_STONE
	db 0 ; no more evolutions
	dbw 1, POWDER_SNOW
	dbw 1, LEER
	dbw 4, DOUBLE_TEAM
	dbw 10, BITE
	dbw 13, ICY_WIND
	dbw 19, HEADBUTT
	dbw 22, PROTECT
	dbw 28, ICE_FANG
	dbw 31, CRUNCH
	dbw 37, ICE_SHARD
	dbw 40, HAIL
	dbw 46, BLIZZARD
	db 0 ; no more level-up moves

GlalieEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POWDER_SNOW
	dbw 1, LEER
	dbw 1, DOUBLE_TEAM
	dbw 1, BITE
	dbw 4, DOUBLE_TEAM
	dbw 10, BITE
	dbw 13, ICY_WIND
	dbw 19, HEADBUTT
	dbw 22, PROTECT
	dbw 28, ICE_FANG
	dbw 31, CRUNCH
	dbw 37, ICE_BEAM
	dbw 40, HAIL
	dbw 51, BLIZZARD
	dbw 59, SHEER_COLD
	db 0 ; no more level-up moves

SphealEvosAttacks:
	dbbw EVOLVE_LEVEL, 32, SEALEO
	db 0 ; no more evolutions
	dbw 1, DEFENSE_CURL
	dbw 1, POWDER_SNOW
	dbw 1, GROWL
	dbw 1, WATER_GUN
	dbw 7, ENCORE
	dbw 13, ICE_BALL
	dbw 19, BODY_SLAM
	dbw 25, AURORA_BEAM
	dbw 31, HAIL
	dbw 37, REST
	dbw 37, SNORE
	dbw 43, BLIZZARD
	dbw 49, SHEER_COLD
	db 0 ; no more level-up moves

SealeoEvosAttacks:
	dbbw EVOLVE_LEVEL, 44, WALREIN
	db 0 ; no more evolutions
	dbw 1, POWDER_SNOW
	dbw 1, GROWL
	dbw 1, WATER_GUN
	dbw 1, ENCORE
	dbw 7, ENCORE
	dbw 13, ICE_BALL
	dbw 19, BODY_SLAM
	dbw 25, AURORA_BEAM
	dbw 31, HAIL
	dbw 32, SWAGGER
	dbw 39, REST
	dbw 39, SNORE
	dbw 47, BLIZZARD
	dbw 55, SHEER_COLD
	db 0 ; no more level-up moves

WalreinEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CRUNCH
	dbw 1, POWDER_SNOW
	dbw 1, GROWL
	dbw 1, WATER_GUN
	dbw 1, ENCORE
	dbw 7, ENCORE
	dbw 13, ICE_BALL
	dbw 19, BODY_SLAM
	dbw 25, AURORA_BEAM
	dbw 31, HAIL
	dbw 32, SWAGGER
	dbw 39, REST
	dbw 39, SNORE
	dbw 44, ICE_FANG
	dbw 52, BLIZZARD
	dbw 65, SHEER_COLD
	db 0 ; no more level-up moves

RelicanthEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, HARDEN
	dbw 8, WATER_GUN
	dbw 15, ROCK_TOMB
	dbw 22, YAWN
	dbw 29, TAKE_DOWN
	dbw 36, MUD_SPORT
	dbw 43, ANCIENTPOWER
	dbw 50, DOUBLE_EDGE
	dbw 57, DIVE
	dbw 64, REST
	dbw 71, HYDRO_PUMP
	dbw 78, HEAD_SMASH
	db 0 ; no more level-up moves

LuvdiscEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 4, CHARM
	dbw 7, WATER_GUN
	dbw 9, AGILITY
	dbw 14, TAKE_DOWN
	dbw 17, LUCKY_CHANT
	dbw 22, ATTRACT
	dbw 27, SWEET_KISS
	dbw 31, WATER_PULSE
	dbw 37, AQUA_RING
	dbw 40, CAPTIVATE
	dbw 46, FLAIL
	dbw 51, SAFEGUARD
	db 0 ; no more level-up moves

LatiasEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PSYWAVE
	dbw 5, WISH
;	dbw 10, HELPING_HAND
	dbw 15, SAFEGUARD
	dbw 20, DRAGONBREATH
	dbw 25, WATER_SPORT
	dbw 30, REFRESH
	dbw 35, MIST_BALL
	dbw 40, ZEN_HEADBUTT
	dbw 45, RECOVER
	dbw 50, PSYCHO_SHIFT
	dbw 55, CHARM
	dbw 60, HEALING_WISH
	dbw 65, PSYCHIC_M
	dbw 70, DRAGON_PULSE
	db 0 ; no more level-up moves

LatiosEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PSYWAVE
	dbw 5, HEAL_BLOCK
;	dbw 10, HELPING_HAND
	dbw 15, SAFEGUARD
	dbw 20, DRAGONBREATH
	dbw 25, PROTECT
	dbw 30, REFRESH
	dbw 35, LUSTER_PURGE
	dbw 40, ZEN_HEADBUTT
	dbw 45, RECOVER
	dbw 50, PSYCHO_SHIFT
	dbw 55, DRAGON_DANCE
	dbw 60, MEMENTO
	dbw 65, PSYCHIC_M
	dbw 70, DRAGON_PULSE
	db 0 ; no more level-up moves
