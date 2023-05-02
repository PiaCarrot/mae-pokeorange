	object_const_def
	const ELMSLAB_ELM
	const ELMSLAB_POKE_BALL1
	const ELMSLAB_POKE_BALL2
	const ELMSLAB_POKE_BALL3

IvysLab_MapScripts:
	def_scene_scripts
	scene_script .MeetIvy, SCENE_IVYS_LAB_MEET_IVY
	scene_script .DummyScene1, SCENE_IVYSLAB_CANT_LEAVE

	def_callbacks
	
.MeetIvy:
	priorityjump .WalkUpToIvy
	end
	
.DummyScene1:
	end
	
.WalkUpToIvy:
	applymovement PLAYER, IvysLab_WalkUpToIvyMovement
	showemote EMOTE_SHOCK, ELMSLAB_ELM, 15
	turnobject ELMSLAB_ELM, DOWN
	opentext
	writetext IvyText_Intro
	closetext
	playmusic MUSIC_SHOW_ME_AROUND
	follow ELMSLAB_ELM, PLAYER
	applymovement ELMSLAB_ELM, IvyMovement1
	stopfollow
	turnobject PLAYER, RIGHT
	turnobject ELMSLAB_ELM, LEFT
	opentext
	writetext IvyText_ChooseAPokemon
	waitbutton
	setscene SCENE_IVYSLAB_CANT_LEAVE
	closetext
	special RestartMapMusic
	turnobject ELMSLAB_ELM, DOWN
	end
	
LabTryToLeaveScript:
	opentext
	writetext IvysLabCantLeaveText
	waitbutton
	closetext
	applymovement PLAYER, IvysLabCantLeaveMovement
	end	

LabTryToLeaveScript2:
	opentext
	writetext IvysLabCantLeaveText
	waitbutton
	closetext
	applymovement PLAYER, IvysLabCantLeaveMovement2
	end
	
ProfessorIvyScript:
	end
	
CharmanderPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_IVY
	iftrue LookAtElmPokeBallScript
	turnobject ELMSLAB_ELM, RIGHT
	refreshscreen
	pokepic CHARMANDER
	cry CHARMANDER
	waitbutton
	closepokepic
	opentext
	writetext TakeCharmanderText
	yesorno
	iffalse DidntChooseStarterScript
	disappear ELMSLAB_POKE_BALL1
	setevent EVENT_GOT_CHARMANDER_FROM_IVY
	writetext ChoseStarterText
	promptbutton
	waitsfx
	getmonname STRING_BUFFER_3, CHARMANDER
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke CHARMANDER, 5, BERRY
	closetext
	readvar VAR_FACING
	ifequal RIGHT, ElmDirectionsScript
	applymovement PLAYER, AfterCharmanderMovement
	sjump ElmDirectionsScript

SquirtlePokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_IVY
	iftrue LookAtElmPokeBallScript
	turnobject ELMSLAB_ELM, RIGHT
	refreshscreen
	pokepic SQUIRTLE
	cry SQUIRTLE
	waitbutton
	closepokepic
	opentext
	writetext TakeSquirtleText
	yesorno
	iffalse DidntChooseStarterScript
	disappear ELMSLAB_POKE_BALL2
	setevent EVENT_GOT_SQUIRTLE_FROM_IVY
	writetext ChoseStarterText
	promptbutton
	waitsfx
	getmonname STRING_BUFFER_3, SQUIRTLE
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke SQUIRTLE, 5, BERRY
	closetext
	applymovement PLAYER, AfterSquirtleMovement
	sjump ElmDirectionsScript

BulbasaurPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_IVY
	iftrue LookAtElmPokeBallScript
	turnobject ELMSLAB_ELM, RIGHT
	refreshscreen
	pokepic BULBASAUR
	cry BULBASAUR
	waitbutton
	closepokepic
	opentext
	writetext TakeBulbasaurText
	yesorno
	iffalse DidntChooseStarterScript
	disappear ELMSLAB_POKE_BALL3
	setevent EVENT_GOT_BULBASAUR_FROM_IVY
	writetext ChoseStarterText
	promptbutton
	waitsfx
	getmonname STRING_BUFFER_3, BULBASAUR
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke BULBASAUR, 5, BERRY
	closetext
	applymovement PLAYER, AfterBulbasaurMovement
	sjump ElmDirectionsScript
	
DidntChooseStarterScript:
	writetext DidntChooseStarterText
	waitbutton
	closetext
	end
	
LookAtElmPokeBallScript:
	opentext
	writetext ElmPokeBallText
	waitbutton
	closetext
	end
	
ElmDirectionsScript:
	turnobject PLAYER, LEFT
	end
	
ElmsLabHealingMachine:
	opentext
	checkevent EVENT_GOT_A_POKEMON_FROM_IVY
	iftrue .CanHeal
	writetext ElmsLabHealingMachineText1
	waitbutton
	closetext
	end

.CanHeal:
	writetext ElmsLabHealingMachineText2
	yesorno
	iftrue ElmsLabHealingMachine_HealParty
	closetext
	end

ElmsLabHealingMachine_HealParty:
	special StubbedTrainerRankings_Healings
	special HealParty
	playmusic MUSIC_NONE
	setval HEALMACHINE_ELMS_LAB
	special HealMachineAnim
	pause 30
	special RestartMapMusic
	closetext
	end
	
ElmsLabHealingMachineText1:
	text "A healing machine."
	line "But, you have no"
	cont "#MON to heal!"
	done

ElmsLabHealingMachineText2:
	text "Would you like to"
	line "heal your #MON?"
	done
	
IvyText_Intro:
	text "IVY: <PLAYER>!"
	line "Welcome. I take"
	cont "you're here for"
	cont "your very first"
	cont "#MON."
	
	para "You must be ready"
	line "to take on the"
	cont "ORANGE CREW, then!"
	cont "Follow me."
	done
	
IvyText_ChooseAPokemon:
	text "IVY: Here. I have"
	line "3 #MON that I"
	cont "caught myself on"
	cont "my last trip to"
	cont "SHAMOUTI ISLAND."
	
	para "Take a look, and"
	line "choose wisely."
	done
	
IvysLabCantLeaveText:
	text "No."
	done
	
TakeCharmanderText:
	text "IVY: You'll take"
	line "CHARMANDER, the"
	cont "fire #MON?"
	done

TakeSquirtleText:
	text "IVY: Do you want"
	line "SQUIRTLE, the"
	cont "water #MON?"
	done

TakeBulbasaurText:
	text "IVY: So, you like"
	line "BULBASAUR, the"
	cont "grass #MON?"
	done

DidntChooseStarterText:
	text "IVY: Think it over"
	line "carefully."

	para "Your partner is"
	line "important."
	done

ChoseStarterText:
	text "IVY: I think"
	line "that's a great"
	cont "#MON too!"
	done
	
ElmPokeBallText:
	text "It contains a"
	line "#MON caught by"
	cont "PROF.IVY."
	done

ReceivedStarterText:
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done
	
IvysLab_WalkUpToIvyMovement:
	step UP
	step UP
	step_end
	
IvyMovement1:
	step UP
	step UP
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end
	
AfterCharmanderMovement:
	step LEFT
	step_end

AfterSquirtleMovement:
	step LEFT
	step LEFT
	step_end
	
AfterBulbasaurMovement:
	turn_head LEFT
	step_end
	
IvysLabCantLeaveMovement:
	step RIGHT
	step_end
	
IvysLabCantLeaveMovement2:
	step UP
	step_end

IvysLab_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, VALENCIA_ISLAND, 4
	warp_event  3,  7, VALENCIA_ISLAND, 4

	def_coord_events
	coord_event  6,  2, SCENE_IVYSLAB_CANT_LEAVE, LabTryToLeaveScript
	coord_event  6,  3, SCENE_IVYSLAB_CANT_LEAVE, LabTryToLeaveScript
	coord_event  9,  5, SCENE_IVYSLAB_CANT_LEAVE, LabTryToLeaveScript2

	def_bg_events
	bg_event  2,  1, BGEVENT_READ, ElmsLabHealingMachine

	def_object_events
	object_event  2,  4, SPRITE_ELM, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, ProfessorIvyScript, -1
	object_event 12,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CharmanderPokeBallScript, EVENT_CHARMANDER_POKEBALL_IN_IVYS_LAB
	object_event 13,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SquirtlePokeBallScript, EVENT_SQUIRTLE_POKEBALL_IN_IVYS_LAB
	object_event 11,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BulbasaurPokeBallScript, EVENT_BULBASAUR_POKEBALL_IN_IVYS_LAB
