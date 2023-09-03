DEF __trainer_class__ = 0

MACRO trainerclass
	DEF \1 EQU __trainer_class__
	DEF __trainer_class__ += 1
	const_def 1
ENDM

; trainer class ids
; `trainerclass` indexes are for:
; - TrainerClassNames (see data/trainers/class_names.asm)
; - TrainerClassAttributes (see data/trainers/attributes.asm)
; - TrainerClassDVs (see data/trainers/dvs.asm)
; - TrainerGroups (see data/trainers/party_pointers.asm)
; - TrainerEncounterMusic (see data/trainers/encounter_music.asm)
; - TrainerPicPointers (see data/trainers/pic_pointers.asm)
; - TrainerPalettes (see data/trainers/palettes.asm)
; - BTTrainerClassSprites (see data/trainers/sprites.asm)
; - BTTrainerClassGenders (see data/trainers/genders.asm)
; trainer constants are Trainers indexes, for the sub-tables of TrainerGroups (see data/trainers/parties.asm)
DEF CHRIS EQU __trainer_class__
	trainerclass TRAINER_NONE ; 0
	const PHONECONTACT_MOM
	const PHONECONTACT_BIKESHOP
	const PHONECONTACT_BILL
	const PHONECONTACT_ELM
	const PHONECONTACT_BUENA
DEF NUM_NONTRAINER_PHONECONTACTS EQU const_value - 1

	trainerclass FALKNER ; 1
	const FALKNER1

	trainerclass WHITNEY ; 2
	const WHITNEY1

	trainerclass BUGSY ; 3
	const BUGSY1

	trainerclass MORTY ; 4
	const MORTY1

	trainerclass PRYCE ; 5
	const PRYCE1

	trainerclass JASMINE ; 6
	const JASMINE1

	trainerclass CHUCK ; 7
	const CHUCK1

	trainerclass CLAIR ; 8
	const CLAIR1

	trainerclass RIVAL1 ; 9
	const RIVAL1_1_CHIKORITA

	trainerclass POKEMON_PROF ; a

	trainerclass WILL ; b
	const WILL1

	trainerclass CAL ; c
	const CAL1 ; unused

	trainerclass BRUNO ; d
	const BRUNO1

	trainerclass KAREN ; e
	const KAREN1

	trainerclass KOGA ; f
	const KOGA1

	trainerclass CHAMPION ; 10
	const LANCE

	trainerclass BROCK ; 11
	const BROCK1

	trainerclass MISTY ; 12
	const MISTY1

	trainerclass LT_SURGE ; 13
	const LT_SURGE1

	trainerclass SCIENTIST ; 14
	const ROSS

	trainerclass ERIKA ; 15
	const ERIKA1

	trainerclass YOUNGSTER ; 16
	const JOEY1

	trainerclass SCHOOLBOY ; 17
	const JACK1

	trainerclass BIRD_KEEPER ; 18
	const ROD

	trainerclass LASS ; 19
	const CARRIE

	trainerclass JANINE ; 1a
	const JANINE1

	trainerclass COOLTRAINERM ; 1b
	const NICK

	trainerclass COOLTRAINERF ; 1c
	const GWEN

	trainerclass BEAUTY ; 1d
	const VICTORIA

	trainerclass POKEMANIAC ; 1e
	const LARRY

	trainerclass GRUNTM ; 1f
	const GRUNTM_1

	trainerclass GENTLEMAN ; 20
	const PRESTON

	trainerclass SKIER ; 21
	const ROXANNE

	trainerclass TEACHER ; 22
	const COLETTE

	trainerclass SABRINA ; 23
	const SABRINA1

	trainerclass BUG_CATCHER ; 24
	const DON

	trainerclass FISHER ; 25
	const JUSTIN

	trainerclass SWIMMERM ; 26
	const HAROLD

	trainerclass SWIMMERF ; 27
	const ELAINE

	trainerclass SAILOR ; 28
	const EUGENE

	trainerclass SUPER_NERD ; 29
	const STAN

	trainerclass RIVAL2 ; 2a
	const RIVAL2_1_CHIKORITA

	trainerclass GUITARIST ; 2b
	const CLYDE

	trainerclass HIKER ; 2c
	const ANTHONY1

	trainerclass BIKER ; 2d
	const BIKER_BENNY ; unused

	trainerclass BLAINE ; 2e
	const BLAINE1

	trainerclass BURGLAR ; 2f
	const DUNCAN

	trainerclass FIREBREATHER ; 30
	const OTIS

	trainerclass JUGGLER ; 31
	const IRWIN1

	trainerclass BLACKBELT_T ; 32
	const KENJI1 ; unused

	trainerclass EXECUTIVEM ; 33
	const EXECUTIVEM_1

	trainerclass PSYCHIC_T ; 34
	const NATHAN

	trainerclass PICNICKER ; 35
	const LIZ1

	trainerclass CAMPER ; 36
	const ROLAND

	trainerclass EXECUTIVEF ; 37
	const EXECUTIVEF_1

	trainerclass SAGE ; 38
	const CHOW

	trainerclass MEDIUM ; 39
	const MARTHA

	trainerclass BOARDER ; 3a
	const RONALD

	trainerclass POKEFANM ; 3b
	const WILLIAM

	trainerclass KIMONO_GIRL ; 3c
	const NAOKO_UNUSED ; unused

	trainerclass TWINS ; 3d
	const AMYANDMAY1

	trainerclass POKEFANF ; 3e
	const BEVERLY1

	trainerclass RED ; 3f
	const RED1

	trainerclass BLUE ; 40
	const BLUE1

	trainerclass OFFICER ; 41
	const KEITH

	trainerclass GRUNTF ; 42
	const GRUNTF_1

	trainerclass MYSTICALMAN ; 43
	const EUSINE

	trainerclass LORELEI1 ; 44
	const LORELEI_1

	trainerclass LORELEI2 ; 45
	const LORELEI_2

	trainerclass LORELEI3 ; 46
	const LORELEI_3

	trainerclass TRACEY1 ; 46
	const TRACEY_1

DEF KRIS EQU __trainer_class__
DEF NUM_TRAINER_CLASSES EQU __trainer_class__ - 1
