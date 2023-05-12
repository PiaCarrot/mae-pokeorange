SECTION "Sinnoh Evolutions and Attacks", ROMX

SinnohEvosAttacksPointers::
	dw ShinxEvosAttacks
	dw LuxioEvosAttacks
	dw LuxrayEvosAttacks
	dw CherubiEvosAttacks
	dw CherrimEvosAttacks
	dw ShellosEvosAttacks
	dw GastrodonEvosAttacks
	dw AmbipomEvosAttacks
	dw BunearyEvosAttacks
	dw LopunnyEvosAttacks
	dw MismagiusEvosAttacks
	dw HonchkrowEvosAttacks
	dw ChinglingEvosAttacks
	dw BonslyEvosAttacks
	dw MimeJrEvosAttacks
	dw HappinyEvosAttacks
	dw ChatotEvosAttacks
	dw MunchlaxEvosAttacks
	dw RioluEvosAttacks
	dw LucarioEvosAttacks
	dw CroagunkEvosAttacks
	dw ToxicroakEvosAttacks
	dw CarnivineEvosAttacks
	dw FinneonEvosAttacks
	dw LumineonEvosAttacks
	dw MantykeEvosAttacks
	dw WeavileEvosAttacks
	dw MagnezoneEvosAttacks
	dw LickilickyEvosAttacks
	dw RhyperiorEvosAttacks
	dw TangrowthEvosAttacks
	dw ElectivireEvosAttacks
	dw MagmortarEvosAttacks
	dw TogekissEvosAttacks
	dw YanmegaEvosAttacks
	dw LeafeonEvosAttacks
	dw GlaceonEvosAttacks
	dw GliscorEvosAttacks
	dw PorygonZEvosAttacks
	dw GalladeEvosAttacks
	dw DusknoirEvosAttacks
	dw FroslassEvosAttacks
	dw RotomEvosAttacks
	dw PhioneEvosAttacks
	dw ManaphyEvosAttacks
.IndirectEnd::

ShinxEvosAttacks:
	dbbw EVOLVE_LEVEL, 15, LUXIO
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 5, LEER
	dbw 9, CHARGE
	dbw 13, SPARK
	dbw 17, BITE
	dbw 21, ROAR
	dbw 25, SWAGGER
	dbw 29, THUNDER_FANG
	dbw 33, CRUNCH
	dbw 37, SCARY_FACE
	dbw 41, DISCHARGE
	db 0 ; no more level-up moves

LuxioEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, LUXRAY
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, LEER
	dbw 5, LEER
	dbw 9, CHARGE
	dbw 13, SPARK
	dbw 18, BITE
	dbw 23, ROAR
	dbw 28, SWAGGER
	dbw 33, THUNDER_FANG
	dbw 38, CRUNCH
	dbw 43, SCARY_FACE
	dbw 48, DISCHARGE
	db 0 ; no more level-up moves

LuxrayEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, LEER
	dbw 1, CHARGE
	dbw 5, LEER
	dbw 9, CHARGE
	dbw 13, SPARK
	dbw 18, BITE
	dbw 23, ROAR
	dbw 28, SWAGGER
	dbw 35, THUNDER_FANG
	dbw 42, CRUNCH
	dbw 49, SCARY_FACE
	dbw 56, DISCHARGE
	db 0 ; no more level-up moves

CherubiEvosAttacks:
	dbbw EVOLVE_LEVEL, 25, CHERRIM
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 7, GROWTH
	dbw 10, LEECH_SEED
;	dbw 13, HELPING_HAND
	dbw 19, MAGICAL_LEAF
	dbw 22, SUNNY_DAY
	dbw 28, WORRY_SEED
	dbw 31, TAKE_DOWN
	dbw 37, SOLARBEAM
	dbw 40, LUCKY_CHANT
	db 0 ; no more level-up moves

CherrimEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWTH
	dbw 7, GROWTH
	dbw 10, LEECH_SEED
;	dbw 13, HELPING_HAND
	dbw 19, MAGICAL_LEAF
	dbw 22, SUNNY_DAY
	dbw 25, PETAL_DANCE
	dbw 30, WORRY_SEED
	dbw 35, TAKE_DOWN
	dbw 43, SOLARBEAM
	dbw 48, LUCKY_CHANT
	db 0 ; no more level-up moves

ShellosEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, GASTRODON
	db 0 ; no more evolutions
	dbw 1, MUD_SLAP
	dbw 2, MUD_SPORT
	dbw 4, HARDEN
	dbw 7, WATER_PULSE
	dbw 11, MUD_BOMB
	dbw 16, HIDDEN_POWER
	dbw 22, RAIN_DANCE
	dbw 29, BODY_SLAM
	dbw 37, MUDDY_WATER
	dbw 46, RECOVER
	db 0 ; no more level-up moves

GastrodonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, MUD_SLAP
	dbw 1, MUD_SPORT
	dbw 1, HARDEN
	dbw 1, WATER_PULSE
	dbw 2, MUD_SPORT
	dbw 4, HARDEN
	dbw 7, WATER_PULSE
	dbw 11, MUD_BOMB
	dbw 16, HIDDEN_POWER
	dbw 22, RAIN_DANCE
	dbw 29, BODY_SLAM
	dbw 41, MUDDY_WATER
	dbw 54, RECOVER
	db 0 ; no more level-up moves

AmbipomEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, TAIL_WHIP
	dbw 1, SAND_ATTACK
	dbw 1, ASTONISH
	dbw 4, SAND_ATTACK
	dbw 8, ASTONISH
	dbw 11, BATON_PASS
	dbw 15, TICKLE
	dbw 18, FURY_SWIPES
	dbw 22, SWIFT
	dbw 25, SCREECH
	dbw 29, AGILITY
	dbw 32, DOUBLE_HIT
	dbw 36, FLING
	dbw 39, NASTY_PLOT
	dbw 43, LAST_RESORT
	db 0 ; no more level-up moves

BunearyEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, LOPUNNY
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 1, POUND
	dbw 1, DEFENSE_CURL
	dbw 1, FORESIGHT
	dbw 6, ENDURE
	dbw 13, FRUSTRATION
	dbw 16, QUICK_ATTACK
	dbw 23, JUMP_KICK
	dbw 26, BATON_PASS
	dbw 33, AGILITY
	dbw 36, DIZZY_PUNCH
	dbw 43, CHARM
	dbw 46, BOUNCE
	dbw 53, HEALING_WISH
	db 0 ; no more level-up moves

LopunnyEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, MIRROR_COAT
	dbw 1, MAGIC_COAT
	dbw 1, SPLASH
	dbw 1, POUND
	dbw 1, DEFENSE_CURL
	dbw 1, FORESIGHT
	dbw 6, ENDURE
	dbw 13, RETURN
	dbw 16, QUICK_ATTACK
	dbw 23, JUMP_KICK
	dbw 26, BATON_PASS
	dbw 33, AGILITY
	dbw 36, DIZZY_PUNCH
	dbw 43, CHARM
	dbw 46, BOUNCE
	dbw 53, HEALING_WISH
	db 0 ; no more level-up moves

MismagiusEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, LUCKY_CHANT
	dbw 1, MAGICAL_LEAF
	dbw 1, GROWL
	dbw 1, PSYWAVE
	dbw 1, SPITE
	dbw 1, ASTONISH
	db 0 ; no more level-up moves

HonchkrowEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ASTONISH
	dbw 1, PURSUIT
	dbw 1, HAZE
	dbw 1, WING_ATTACK
	dbw 25, SWAGGER
	dbw 35, NASTY_PLOT
	dbw 45, NIGHT_SLASH
	dbw 55, DARK_PULSE
	db 0 ; no more level-up moves

ChinglingEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_NITE, CHIMECHO
	db 0 ; no more evolutions
	dbw 1, WRAP
	dbw 6, GROWL
	dbw 9, ASTONISH
	dbw 14, CONFUSION
	dbw 17, UPROAR
	dbw 22, LAST_RESORT
	db 0 ; no more level-up moves

BonslyEvosAttacks:
 	dbww EVOLVE_MOVE, MIMIC, SUDOWOODO
	db 0 ; no more evolutions
	dbw 1, FAKE_TEARS
	dbw 1, COPYCAT
	dbw 6, FLAIL
	dbw 9, LOW_KICK
	dbw 14, ROCK_THROW
	dbw 17, MIMIC
	dbw 22, BLOCK
	dbw 25, FAINT_ATTACK
	dbw 30, ROCK_TOMB
	dbw 33, ROCK_SLIDE
	dbw 38, SLAM
	dbw 41, SUCKER_PUNCH
	dbw 46, DOUBLE_EDGE
	db 0 ; no more level-up moves

MimeJrEvosAttacks:
 	dbww EVOLVE_MOVE, MIMIC, MR__MIME
	db 0 ; no more evolutions
	dbw 1, TICKLE
	dbw 1, BARRIER
	dbw 1, CONFUSION
	dbw 4, COPYCAT
	dbw 8, MEDITATE
	dbw 11, ENCORE
	dbw 15, DOUBLESLAP
	dbw 18, MIMIC
	dbw 22, LIGHT_SCREEN
	dbw 22, REFLECT
	dbw 25, PSYBEAM
	dbw 29, SUBSTITUTE
	dbw 32, RECYCLE
	dbw 36, TRICK
	dbw 39, PSYCHIC_M
	dbw 43, ROLE_PLAY
	dbw 46, BATON_PASS
	dbw 50, SAFEGUARD
	db 0 ; no more level-up moves

HappinyEvosAttacks:
 	dbbbw EVOLVE_HOLD, RARE_CANDY, TR_MORNDAY, CHANSEY ;OVAL_STONE
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, CHARM
	dbw 5, COPYCAT
	dbw 9, REFRESH
	dbw 12, SWEET_KISS
	db 0 ; no more level-up moves

ChatotEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 5, GROWL
	dbw 9, MIRROR_MOVE
	dbw 13, SING
	dbw 17, FURY_ATTACK
	dbw 21, CHATTER
	dbw 25, TAUNT
	dbw 29, MIMIC
	dbw 33, ROOST
	dbw 37, UPROAR
	dbw 41, FEATHER_DANCE
	dbw 45, HYPER_VOICE
	db 0 ; no more level-up moves

MunchlaxEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, SNORLAX
	db 0 ; no more evolutions
	dbw 1, METRONOME
	dbw 1, ODOR_SLEUTH
	dbw 1, TACKLE
	dbw 4, DEFENSE_CURL
	dbw 9, AMNESIA
	dbw 12, LICK
	dbw 17, RECYCLE
	dbw 20, SCREECH
	dbw 25, STOCKPILE
	dbw 28, SWALLOW
	dbw 33, BODY_SLAM
	dbw 36, FLING
	dbw 41, ROLLOUT
	dbw 44, NATURAL_GIFT
	dbw 49, LAST_RESORT
	db 0 ; no more level-up moves

RioluEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_MORNDAY, LUCARIO
	db 0 ; no more evolutions
	dbw 1, QUICK_ATTACK
	dbw 1, FORESIGHT
	dbw 1, ENDURE
	dbw 6, COUNTER
	dbw 11, FORCE_PALM
	dbw 15, FEINT
	dbw 19, REVERSAL
	dbw 24, SCREECH
	dbw 29, COPYCAT
	db 0 ; no more level-up moves

LucarioEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, DARK_PULSE
	dbw 1, QUICK_ATTACK
	dbw 1, FORESIGHT
	dbw 1, DETECT
	dbw 1, METAL_CLAW
	dbw 6, COUNTER
	dbw 11, FORCE_PALM
	dbw 15, FEINT
	dbw 19, BONE_RUSH
	dbw 24, METAL_SOUND
	dbw 29, ME_FIRST
	dbw 33, SWORDS_DANCE
	dbw 37, AURA_SPHERE
	dbw 42, CLOSE_COMBAT
	dbw 47, DRAGON_PULSE
	dbw 51, EXTREMESPEED
	db 0 ; no more level-up moves

CroagunkEvosAttacks:
	dbbw EVOLVE_LEVEL, 37, TOXICROAK
	db 0 ; no more evolutions
	dbw 1, ASTONISH
	dbw 3, MUD_SLAP
	dbw 8, POISON_STING
	dbw 10, TAUNT
	dbw 15, PURSUIT
	dbw 17, FAINT_ATTACK
	dbw 22, REVENGE
	dbw 24, SWAGGER
	dbw 29, MUD_BOMB
	dbw 31, SUCKER_PUNCH
	dbw 36, NASTY_PLOT
	dbw 38, POISON_JAB
	dbw 43, SLUDGE_BOMB
	dbw 45, FLATTER
	db 0 ; no more level-up moves

ToxicroakEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ASTONISH
	dbw 1, MUD_SLAP
	dbw 1, POISON_STING
	dbw 3, MUD_SLAP
	dbw 8, POISON_STING
	dbw 10, TAUNT
	dbw 15, PURSUIT
	dbw 17, FAINT_ATTACK
	dbw 22, REVENGE
	dbw 24, SWAGGER
	dbw 29, MUD_BOMB
	dbw 31, SUCKER_PUNCH
	dbw 36, NASTY_PLOT
	dbw 41, POISON_JAB
	dbw 49, SLUDGE_BOMB
	dbw 54, FLATTER
	db 0 ; no more level-up moves

CarnivineEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BIND
	dbw 1, GROWTH
	dbw 7, BITE
	dbw 11, VINE_WHIP
	dbw 17, SWEET_SCENT
	dbw 21, INGRAIN
	dbw 27, FAINT_ATTACK
	dbw 31, STOCKPILE
	dbw 31, SPIT_UP
	dbw 31, SWALLOW
	dbw 37, CRUNCH
	dbw 41, WRING_OUT
	dbw 47, POWER_WHIP
	db 0 ; no more level-up moves

FinneonEvosAttacks:
	dbbw EVOLVE_LEVEL, 31, LUMINEON
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 6, WATER_GUN
	dbw 10, ATTRACT
	dbw 13, RAIN_DANCE
	dbw 17, GUST
	dbw 22, WATER_PULSE
	dbw 26, CAPTIVATE
	dbw 29, SAFEGUARD
	dbw 33, AQUA_RING
	dbw 38, WHIRLPOOL
	dbw 42, U_TURN
	dbw 45, BOUNCE
	dbw 49, SILVER_WIND
	db 0 ; no more level-up moves

LumineonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, WATER_GUN
	dbw 1, ATTRACT
	dbw 6, WATER_GUN
	dbw 10, ATTRACT
	dbw 13, RAIN_DANCE
	dbw 17, GUST
	dbw 22, WATER_PULSE
	dbw 26, CAPTIVATE
	dbw 29, SAFEGUARD
	dbw 35, AQUA_RING
	dbw 42, WHIRLPOOL
	dbw 48, U_TURN
	dbw 53, BOUNCE
	dbw 59, SILVER_WIND
	db 0 ; no more level-up moves

MantykeEvosAttacks:
	dbww EVOLVE_PARTY, REMORAID, MANTINE
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 1, TACKLE
	dbw 4, SUPERSONIC
	dbw 10, BUBBLEBEAM
	dbw 13, HEADBUTT
	dbw 19, AGILITY
	dbw 22, WING_ATTACK
	dbw 28, WATER_PULSE
	dbw 31, TAKE_DOWN
	dbw 37, CONFUSE_RAY
	dbw 40, BOUNCE
	dbw 46, AQUA_RING
	dbw 49, HYDRO_PUMP
	db 0 ; no more level-up moves

WeavileEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ASSURANCE
	dbw 1, EMBARGO
	dbw 1, REVENGE
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 1, TAUNT
	dbw 1, QUICK_ATTACK
	dbw 8, QUICK_ATTACK
	dbw 10, SCREECH
	dbw 14, FAINT_ATTACK
	dbw 21, FURY_SWIPES
	dbw 24, NASTY_PLOT
	dbw 28, ICY_WIND
	dbw 35, NIGHT_SLASH
	dbw 38, FLING
	dbw 42, METAL_CLAW
	dbw 49, DARK_PULSE
	db 0 ; no more level-up moves

MagnezoneEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, MIRROR_COAT
	dbw 1, BARRIER
	dbw 1, METAL_SOUND
	dbw 1, TACKLE
	dbw 1, THUNDERSHOCK
	dbw 1, SUPERSONIC
	dbw 6, THUNDERSHOCK
	dbw 11, SUPERSONIC
	dbw 14, SONICBOOM
	dbw 17, THUNDER_WAVE
	dbw 22, SPARK
	dbw 27, LOCK_ON
	dbw 30, MAGNET_BOMB
	dbw 34, SCREECH
	dbw 40, DISCHARGE
	dbw 46, MIRROR_SHOT
	dbw 50, MAGNET_RISE
	dbw 54, GYRO_BALL
	dbw 60, ZAP_CANNON
	db 0 ; no more level-up moves

LickilickyEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, LICK
	dbw 5, SUPERSONIC
	dbw 9, DEFENSE_CURL
	dbw 13, KNOCK_OFF
	dbw 17, WRAP
	dbw 21, STOMP
	dbw 25, DISABLE
	dbw 29, SLAM
	dbw 33, ROLLOUT
	dbw 37, ME_FIRST
	dbw 41, REFRESH
	dbw 45, SCREECH
	dbw 49, POWER_WHIP
	dbw 53, WRING_OUT
	dbw 57, GYRO_BALL
	db 0 ; no more level-up moves

RhyperiorEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POISON_JAB
	dbw 1, HORN_ATTACK
	dbw 1, TAIL_WHIP
	dbw 1, STOMP
	dbw 1, FURY_ATTACK
	dbw 9, STOMP
	dbw 13, FURY_ATTACK
	dbw 21, SCARY_FACE
	dbw 25, ROCK_BLAST
	dbw 33, TAKE_DOWN
	dbw 37, HORN_DRILL
	dbw 42, HAMMER_ARM
	dbw 45, STONE_EDGE
	dbw 49, EARTHQUAKE
	dbw 57, MEGAHORN
	dbw 61, ROCK_WRECKER
	db 0 ; no more level-up moves

TangrowthEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, INGRAIN
	dbw 1, CONSTRICT
	dbw 5, SLEEP_POWDER
	dbw 8, ABSORB
	dbw 12, GROWTH
	dbw 15, POISONPOWDER
	dbw 19, VINE_WHIP
	dbw 22, BIND
	dbw 26, MEGA_DRAIN
	dbw 29, STUN_SPORE
	dbw 33, ANCIENTPOWER
	dbw 36, KNOCK_OFF
	dbw 40, NATURAL_GIFT
	dbw 43, SLAM
	dbw 47, TICKLE
	dbw 50, WRING_OUT
	dbw 54, POWER_WHIP
	dbw 57, BLOCK
	db 0 ; no more level-up moves

ElectivireEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, FIRE_PUNCH
	dbw 1, QUICK_ATTACK
	dbw 1, LEER
	dbw 1, THUNDERSHOCK
	dbw 1, LOW_KICK
	dbw 7, THUNDERSHOCK
	dbw 10, LOW_KICK
	dbw 16, SWIFT
	dbw 19, SHOCK_WAVE
	dbw 25, LIGHT_SCREEN
	dbw 28, THUNDERPUNCH
	dbw 37, DISCHARGE
	dbw 43, THUNDERBOLT
	dbw 52, SCREECH
	dbw 58, THUNDER
	dbw 67, GIGA_IMPACT
	db 0 ; no more level-up moves

MagmortarEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, THUNDERPUNCH
	dbw 1, SMOG
	dbw 1, LEER
	dbw 1, EMBER
	dbw 1, SMOKESCREEN
	dbw 7, EMBER
	dbw 10, SMOKESCREEN
	dbw 16, FAINT_ATTACK
	dbw 19, FIRE_SPIN
	dbw 25, CONFUSE_RAY
	dbw 28, FIRE_PUNCH
	dbw 37, LAVA_PLUME
	dbw 43, FLAMETHROWER
	dbw 52, SUNNY_DAY
	dbw 58, FIRE_BLAST
	dbw 67, HYPER_BEAM
	db 0 ; no more level-up moves

TogekissEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SKY_ATTACK
	dbw 1, EXTREMESPEED
	dbw 1, AURA_SPHERE
	dbw 1, AIR_SLASH
	db 0 ; no more level-up moves

YanmegaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, NIGHT_SLASH
	dbw 1, BUG_BITE
	dbw 1, TACKLE
	dbw 1, FORESIGHT
	dbw 1, QUICK_ATTACK
	dbw 1, DOUBLE_TEAM
	dbw 6, QUICK_ATTACK
	dbw 11, DOUBLE_TEAM
	dbw 14, SONICBOOM
	dbw 17, DETECT
	dbw 22, SUPERSONIC
	dbw 27, UPROAR
	dbw 30, PURSUIT
	dbw 33, ANCIENTPOWER
	dbw 38, FEINT
	dbw 43, SLASH
	dbw 46, SCREECH
	dbw 49, U_TURN
	dbw 54, AIR_SLASH
	dbw 57, BUG_BUZZ
	db 0 ; no more level-up moves

LeafeonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
;	dbw 1, HELPING_HAND
	dbw 1, SAND_ATTACK
	dbw 15, RAZOR_LEAF
	dbw 22, QUICK_ATTACK
	dbw 29, SYNTHESIS
	dbw 36, MAGICAL_LEAF
	dbw 43, GIGA_DRAIN
	dbw 50, LAST_RESORT
	dbw 57, GRASSWHISTLE
	dbw 64, SUNNY_DAY
	dbw 71, LEAF_BLADE
	dbw 78, SWORDS_DANCE
	db 0 ; no more level-up moves

GlaceonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
;	dbw 1, HELPING_HAND
	dbw 1, SAND_ATTACK
	dbw 15, ICY_WIND
	dbw 22, QUICK_ATTACK
	dbw 29, BITE
	dbw 36, ICE_SHARD
	dbw 43, ICE_FANG
	dbw 50, LAST_RESORT
	dbw 57, MIRROR_COAT
	dbw 64, HAIL
	dbw 71, BLIZZARD
	dbw 78, BARRIER
	db 0 ; no more level-up moves

GliscorEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, THUNDER_FANG
	dbw 1, FIRE_FANG
	dbw 1, ICE_FANG
	dbw 1, POISON_JAB
	dbw 1, SAND_ATTACK
	dbw 1, HARDEN
	dbw 1, KNOCK_OFF
	dbw 5, SAND_ATTACK
	dbw 9, HARDEN
	dbw 12, KNOCK_OFF
	dbw 16, QUICK_ATTACK
	dbw 20, FURY_CUTTER
	dbw 23, FAINT_ATTACK
	dbw 27, SCREECH
	dbw 31, NIGHT_SLASH
	dbw 34, SWORDS_DANCE
	dbw 38, U_TURN
	dbw 42, X_SCISSOR
	dbw 45, GUILLOTINE
	db 0 ; no more level-up moves

PorygonZEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TRICK_ROOM
	dbw 1, TACKLE
	dbw 1, NASTY_PLOT
	dbw 1, CONVERSION
	dbw 1, CONVERSION2
	dbw 7, PSYBEAM
	dbw 12, AGILITY
	dbw 18, RECOVER
	dbw 23, MAGNET_RISE
	dbw 29, SIGNAL_BEAM
	dbw 34, EMBARGO
	dbw 40, DISCHARGE
	dbw 45, LOCK_ON
	dbw 51, TRI_ATTACK
	dbw 56, MAGIC_COAT
	dbw 62, ZAP_CANNON
	dbw 67, HYPER_BEAM
	db 0 ; no more level-up moves

GalladeEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, NIGHT_SLASH
	dbw 1, LEAF_BLADE
	dbw 1, LEER
	dbw 1, CONFUSION
	dbw 1, DOUBLE_TEAM
	dbw 1, TELEPORT
	dbw 6, CONFUSION
	dbw 10, DOUBLE_TEAM
	dbw 12, TELEPORT
	dbw 17, FURY_CUTTER
	dbw 22, SLASH
	dbw 25, SWORDS_DANCE
	dbw 31, PSYCHO_CUT
;	dbw 36, HELPING_HAND ;Doesnt Exist
	dbw 39, FEINT
	dbw 45, FALSE_SWIPE
	dbw 50, PROTECT
	dbw 53, CLOSE_COMBAT
	db 0 ; no more level-up moves

DusknoirEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, THUNDERPUNCH
	dbw 1, FIRE_PUNCH
	dbw 1, ICE_PUNCH
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

FroslassEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POWDER_SNOW
	dbw 1, LEER
	dbw 1, DOUBLE_TEAM
	dbw 1, ASTONISH
	dbw 4, DOUBLE_TEAM
	dbw 10, ASTONISH
	dbw 13, ICY_WIND
	dbw 19, CONFUSE_RAY
	dbw 22, OMINOUS_WIND
	dbw 28, WAKE_UP_SLAP
	dbw 31, CAPTIVATE
	dbw 37, ICE_SHARD
	dbw 40, HAIL
	dbw 51, BLIZZARD
	dbw 59, DESTINY_BOND
	db 0 ; no more level-up moves

RotomEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TRICK
	dbw 1, ASTONISH
	dbw 1, THUNDER_WAVE
	dbw 1, THUNDERSHOCK ;Changes Upon form
;	dbw 1, OVERHEAT ;Heat
;	dbw 1, HYDRO_PUMP ;Wash
;	dbw 1, BLIZZARD ;Frost
;	dbw 1, AIR_SLASH ;Fan
;	dbw 1, LEAF_STORM ;Mow
	dbw 1, THUNDERSHOCK
	dbw 1, CONFUSE_RAY
	dbw 8, UPROAR
	dbw 15, DOUBLE_TEAM
	dbw 22, SHOCK_WAVE
	dbw 29, OMINOUS_WIND
	dbw 36, SUBSTITUTE
	dbw 43, CHARGE
	dbw 50, DISCHARGE
	db 0 ; no more level-up moves

PhioneEvosAttacks:
;	dbbw EVOLVE_ITEM, MOON_STONE_RED, MANAPHY
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 1, WATER_SPORT
	dbw 9, CHARM
	dbw 16, SUPERSONIC
	dbw 24, BUBBLEBEAM
	dbw 31, ACID_ARMOR
	dbw 39, WHIRLPOOL
	dbw 46, WATER_PULSE
	dbw 54, AQUA_RING
	dbw 61, DIVE
	dbw 69, RAIN_DANCE
	db 0 ; no more level-up moves

ManaphyEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TAIL_GLOW
	dbw 1, BUBBLE
	dbw 1, WATER_SPORT
	dbw 9, CHARM
	dbw 16, SUPERSONIC
	dbw 24, BUBBLEBEAM
	dbw 31, ACID_ARMOR
	dbw 39, WHIRLPOOL
	dbw 46, WATER_PULSE
	dbw 54, AQUA_RING
	dbw 61, DIVE
	dbw 69, RAIN_DANCE
	dbw 76, HEART_SWAP
	db 0 ; no more level-up moves
