; Trainer data structure:
; - db "NAME@", TRAINERTYPE_* constant
; - 1 to 6 Pokémon:
;    * for TRAINERTYPE_NORMAL:     db level, species
;    * for TRAINERTYPE_MOVES:      db level, species, 4 moves
;    * for TRAINERTYPE_ITEM:       db level, species, item
;    * for TRAINERTYPE_ITEM_MOVES: db level, species, item, 4 moves
; - db -1 ; end

SECTION "Enemy Trainer Parties 1", ROMX

FalknerGroup:
	next_list_item ; FALKNER (1)
	db "FALKNER@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end
	end_list_items

WhitneyGroup:
	next_list_item ; WHITNEY (1)
	db "WHITNEY@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end
	end_list_items

BugsyGroup:
	next_list_item ; BUGSY (1)
	db "BUGSY@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end
	end_list_items

MortyGroup:
	next_list_item ; MORTY (1)
	db "MORTY@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end
	end_list_items

PryceGroup:
	next_list_item ; PRYCE (1)
	db "PRYCE@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end
	end_list_items

JasmineGroup:
	next_list_item ; JASMINE (1)
	db "JASMINE@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end
	end_list_items

ChuckGroup:
	next_list_item ; CHUCK (1)
	db "CHUCK@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end
	end_list_items

ClairGroup:
	next_list_item ; CLAIR (1)
	db "CLAIR@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end
	end_list_items

Rival1Group:
	next_list_item ; RIVAL1 (1)
	db "?@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end
	end_list_items

PokemonProfGroup:

WillGroup:
	next_list_item ; WILL (1)
	db "WILL@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end
	end_list_items

PKMNTrainerGroup:
	next_list_item ; CAL (1)
	db "CAL@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end
	end_list_items

BrunoGroup:
	next_list_item ; BRUNO (1)
	db "BRUNO@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end
	end_list_items

KarenGroup:
	next_list_item ; KAREN (1)
	db "KAREN@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end
	end_list_items

KogaGroup:
	next_list_item ; KOGA (1)
	db "KOGA@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end
	end_list_items

ChampionGroup:
	next_list_item ; CHAMPION (1)
	db "LANCE@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end
	end_list_items

BrockGroup:
	next_list_item ; BROCK (1)
	db "BROCK@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end
	end_list_items

MistyGroup:
	next_list_item ; MISTY (1)
	db "MISTY@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end

	end_list_items

LtSurgeGroup:
	next_list_item ; LT_SURGE (1)
	db "LT.SURGE@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end

	end_list_items

ScientistGroup:
	next_list_item ; SCIENTIST (1)
	db "ROSS@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end

	end_list_items

ErikaGroup:
	next_list_item ; ERIKA (1)
	db "ERIKA@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end

	end_list_items

YoungsterGroup:
	next_list_item ; YOUNGSTER (1)
	db "JOEY@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end

	end_list_items

SECTION "Enemy Trainer Parties 2", ROMX

SchoolboyGroup:
	next_list_item ; SCHOOLBOY (1)
	db "JACK@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end

	end_list_items

BirdKeeperGroup:
	next_list_item ; BIRD_KEEPER (1)
	db "ROD@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end

	end_list_items

LassGroup:
	next_list_item ; LASS (1)
	db "CARRIE@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end

	end_list_items

JanineGroup:
	next_list_item ; JANINE (1)
	db "JANINE@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end

	end_list_items

CooltrainerMGroup:
	next_list_item ; COOLTRAINERM (1)
	db "NICK@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end

	end_list_items

CooltrainerFGroup:
	next_list_item ; COOLTRAINERF (1)
	db "GWEN@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end

	end_list_items

BeautyGroup:
	next_list_item ; BEAUTY (1)
	db "VICTORIA@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end

	end_list_items

PokemaniacGroup:
	next_list_item ; POKEMANIAC (1)
	db "LARRY@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end

	end_list_items

GruntMGroup:
	next_list_item ; GRUNTM (1)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end

	end_list_items

GentlemanGroup:
	next_list_item ; GENTLEMAN (1)
	db "PRESTON@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end

	end_list_items

SkierGroup:
	next_list_item ; SKIER (1)
	db "ROXANNE@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end

	end_list_items

TeacherGroup:
	next_list_item ; TEACHER (1)
	db "COLETTE@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end

	end_list_items

SabrinaGroup:
	next_list_item ; SABRINA (1)
	db "SABRINA@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end

	end_list_items

BugCatcherGroup:
	next_list_item ; BUG_CATCHER (1)
	db "DON@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end

	end_list_items

FisherGroup:
	next_list_item ; FISHER (1)
	db "JUSTIN@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end

	end_list_items

SwimmerMGroup:
	next_list_item ; SWIMMERM (1)
	db "HAROLD@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end

	end_list_items

SwimmerFGroup:
	next_list_item ; SWIMMERF (1)
	db "ELAINE@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end

	end_list_items

SailorGroup:
	next_list_item ; SAILOR (1)
	db "EUGENE@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end

	end_list_items

SuperNerdGroup:
	next_list_item ; SUPER_NERD (1)
	db "STAN@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end

	end_list_items

Rival2Group:
	next_list_item ; RIVAL2 (1)
	db "?@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end

	end_list_items

GuitaristGroup:
	next_list_item ; GUITARIST (1)
	db "CLYDE@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end

	end_list_items

HikerGroup:
	next_list_item ; HIKER (1)
	db "ANTHONY@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end

	end_list_items

BikerGroup:
	next_list_item ; BIKER (1)
	db "BENNY@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end

	end_list_items

BlaineGroup:
	next_list_item ; BLAINE (1)
	db "BLAINE@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end

	end_list_items

BurglarGroup:
	next_list_item ; BURGLAR (1)
	db "DUNCAN@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end

	end_list_items

FirebreatherGroup:
	next_list_item ; FIREBREATHER (1)
	db "OTIS@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end

	end_list_items

JugglerGroup:
	next_list_item ; JUGGLER (1)
	db "IRWIN@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end

	end_list_items

BlackbeltGroup:
	next_list_item ; BLACKBELT_T (1)
	db "KENJI@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end

	end_list_items

ExecutiveMGroup:
	next_list_item ; EXECUTIVEM (1)
	db "EXECUTIVE@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end

	end_list_items

PsychicGroup:
	next_list_item ; PSYCHIC_T (1)
	db "NATHAN@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end

	end_list_items

PicnickerGroup:
	next_list_item ; PICNICKER (1)
	db "LIZ@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end

	end_list_items

CamperGroup:
	next_list_item ; CAMPER (1)
	db "ROLAND@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end

	end_list_items

ExecutiveFGroup:
	next_list_item ; EXECUTIVEF (1)
	db "EXECUTIVE@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end

	end_list_items

SageGroup:
	next_list_item ; SAGE (1)
	db "CHOW@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end

	end_list_items

MediumGroup:
	next_list_item ; MEDIUM (1)
	db "MARTHA@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end

	end_list_items

SECTION "Enemy Trainer Parties 3", ROMX

BoarderGroup:
	next_list_item ; BOARDER (1)
	db "RONALD@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end

	end_list_items

PokefanMGroup:
	next_list_item ; POKEFANM (1)
	db "WILLIAM@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end

	end_list_items

KimonoGirlGroup:
	next_list_item ; KIMONO_GIRL (1)
	db "NAOKO@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end

	end_list_items

TwinsGroup:
	next_list_item ; TWINS (1)
	db "AMY & MAY@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end

	end_list_items

PokefanFGroup:
	next_list_item ; POKEFANF (1)
	db "BEVERLY@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end

	end_list_items

RedGroup:
	next_list_item ; RED (1)
	db "RED@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end

	end_list_items

BlueGroup:
	next_list_item ; BLUE (1)
	db "BLUE@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end

	end_list_items

OfficerGroup:
	next_list_item ; OFFICER (1)
	db "KEITH@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end

	end_list_items

GruntFGroup:
	next_list_item ; GRUNTF (1)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end

	end_list_items

MysticalmanGroup:
	next_list_item ; MYSTICALMAN (1)
	db "EUSINE@", TRAINERTYPE_NORMAL
	db 5
	dw PIKACHU
	db -1 ; end

	end_list_items

Lorelei1Group:
	next_list_item ; AUNT (1)
	db "PRIMA@", TRAINERTYPE_MOVES
	db  5
	dw SMOOCHUM, POUND, NO_MOVE, NO_MOVE, NO_MOVE
	db -1 ; end

	end_list_items

Lorelei2Group:
	next_list_item ; ELITE FOUR (1)
	db "LORELEI@", TRAINERTYPE_MOVES
	db 40
	dw DEWGONG, TAKE_DOWN, AQUA_JET, ENCORE, ICE_BEAM
	db 40
	dw JYNX, BODY_SLAM, AVALANCHE, MEAN_LOOK, BLIZZARD
	db 40
	dw CLOYSTER, SPIKE_CANNON, BRINE, PROTECT, HAIL
	db -1 ; end

	end_list_items

Lorelei3Group:
	next_list_item ; ELITE FOUR (1)
	db "LORELEI@", TRAINERTYPE_MOVES
	db 40
	dw DEWGONG, TAKE_DOWN, AQUA_JET, ENCORE, ICE_BEAM
	db 40
	dw JYNX, BODY_SLAM, AVALANCHE, MEAN_LOOK, BLIZZARD
	db 40
	dw CLOYSTER, SPIKE_CANNON, BRINE, PROTECT, HAIL
	db 40
	dw CLOYSTER, SPIKE_CANNON, BRINE, PROTECT, HAIL
	db 40
	dw CLOYSTER, SPIKE_CANNON, BRINE, PROTECT, HAIL
	db 40
	dw CLOYSTER, SPIKE_CANNON, BRINE, PROTECT, HAIL
	db -1 ; end
	end_list_items
