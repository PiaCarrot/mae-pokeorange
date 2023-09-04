	object_const_def
	const TANGELO_ISLAND_MARILL_1
	const TANGELO_ISLAND_MARILL_2
	const TANGELO_ISLAND_MARILL_3
	const TANGELO_ISLAND_ROCKET_1
	const TANGELO_ISLAND_ROCKET_2
	const TANGELO_ISLAND_ROCKET_3
	const TANGELO_ISLAND_TRACEY_1
	const TANGELO_ISLAND_LAPRAS_1
	const TANGELO_ISLAND_TRACEY_2
	const TANGELO_ISLAND_LAPRAS_2
	const TANGELO_GS_BALL

TangeloIsland_MapScripts:
	def_scene_scripts
	scene_script TangeloIslandNoOp, SCENE_TANGELO_ISLAND_NOOP
	scene_script TangeloMarillNeedsHelpScene, SCENE_TANGELO_ISLAND_MARILL_1
	scene_script TangeloMarillKeepFollowingScene, SCENE_TANGELO_ISLAND_MARILL_2
	scene_script TangeloRocketEventScene, SCENE_TANGELO_ISLAND_MARILL_3
	scene_script TangeloGSBallEventScene, SCENE_TANGELO_GS_BALL

	def_callbacks
	callback MAPCALLBACK_NEWMAP, TangeloIslandFlypointCallback
	callback MAPCALLBACK_OBJECTS, TangeloIslandGSBallCallback
	
TangeloIslandFlypointCallback:
	setflag ENGINE_FLYPOINT_TANGELO
	endcallback
	
TangeloIslandNoOp:
	end
	
TangeloMarillNeedsHelpScene:
	end
	
TangeloMarillKeepFollowingScene:
	end
	
TangeloRocketEventScene:
	end
	
TangeloGSBallEventScene:
	end
	
TangeloIslandGSBallCallback:
	checkevent EVENT_OBTAINED_GS_BALL
	iftrue .Static
	readmem wGSBallPosition
	ifequal  1, .PositionOne
	ifequal  2, .PositionTwo
	ifequal  3, .PositionThree
	ifequal  4, .PositionFour
	ifequal  5, .PositionFive
	ifequal  6, .PositionSix
.Static:
	endcallback
	
.PositionOne:
	moveobject TANGELO_GS_BALL, 15, 10
	appear TANGELO_GS_BALL
	endcallback

.PositionTwo:
	moveobject TANGELO_GS_BALL, 12, 17
	appear TANGELO_GS_BALL
	endcallback

.PositionThree:
	moveobject TANGELO_GS_BALL, 27, 4
	appear TANGELO_GS_BALL
	endcallback

.PositionFour:
	moveobject TANGELO_GS_BALL, 29, 17
	appear TANGELO_GS_BALL
	endcallback

.PositionFive:
	moveobject TANGELO_GS_BALL, 17, 11
	appear TANGELO_GS_BALL
	endcallback

.PositionSix:
	moveobject TANGELO_GS_BALL, 25, 27
	appear TANGELO_GS_BALL
	endcallback
	
TangeloGSBallScript:
	readmem wGSBallPosition
	ifequal  1, .Position1
	ifequal  2, .Position2
	ifequal  3, .Position3
	ifequal  4, .Position4
	ifequal  5, .Position5
	ifequal  6, .Position6
	
.Position1:
	showemote EMOTE_SHOCK, PLAYER, 15
	playsound SFX_WARP_TO
	disappear TANGELO_GS_BALL
	moveobject TANGELO_GS_BALL, 12, 17
	appear TANGELO_GS_BALL
	waitsfx
	loadmem wGSBallPosition, 2
	end
	
.Position2:
	showemote EMOTE_SHOCK, PLAYER, 15
	playsound SFX_WARP_TO
	disappear TANGELO_GS_BALL
	moveobject TANGELO_GS_BALL, 27, 4
	appear TANGELO_GS_BALL
	waitsfx
	loadmem wGSBallPosition, 3
	end
	
.Position3:
	showemote EMOTE_SHOCK, PLAYER, 15
	playsound SFX_WARP_TO
	disappear TANGELO_GS_BALL
	moveobject TANGELO_GS_BALL, 29, 17
	appear TANGELO_GS_BALL
	waitsfx
	loadmem wGSBallPosition, 4
	end
	
.Position4:
	showemote EMOTE_SHOCK, PLAYER, 15
	playsound SFX_WARP_TO
	disappear TANGELO_GS_BALL
	moveobject TANGELO_GS_BALL, 17, 11
	appear TANGELO_GS_BALL
	waitsfx
	loadmem wGSBallPosition, 5
	end
	
.Position5:
	showemote EMOTE_SHOCK, PLAYER, 15
	playsound SFX_WARP_TO
	disappear TANGELO_GS_BALL
	moveobject TANGELO_GS_BALL, 25, 27
	appear TANGELO_GS_BALL
	waitsfx
	loadmem wGSBallPosition, 6
	end
	
.Position6:
	opentext
	verbosegiveitem GS_BALL
	closetext
	setevent EVENT_OBTAINED_GS_BALL
	disappear TANGELO_GS_BALL
	clearevent EVENT_GS_BALL_ENCOUNTER
	end

TangeloGSBallEventScript:
	showemote EMOTE_QUESTION, PLAYER, 15
	applymovement PLAYER, TangeloPlayerMovement2
	playsound SFX_WARP_TO
	disappear TANGELO_GS_BALL
	moveobject TANGELO_GS_BALL, 12, 17
	appear TANGELO_GS_BALL
	waitsfx
	showemote EMOTE_SHOCK, PLAYER, 15
	setscene SCENE_TANGELO_ISLAND_NOOP
	loadmem wGSBallPosition, 2
	end
	
TangeloMarillNeedsHelpScript:
	turnobject TANGELO_ISLAND_MARILL_1, RIGHT
	showemote EMOTE_SHOCK, TANGELO_ISLAND_MARILL_1, 15
	playsound SFX_JUMP_OVER_LEDGE
	applymovement TANGELO_ISLAND_MARILL_1, MarillHopMovement
	cry MARILL
	pause 15
	playsound SFX_JUMP_OVER_LEDGE
	applymovement TANGELO_ISLAND_MARILL_1, MarillHopMovement2
	setscene SCENE_TANGELO_ISLAND_MARILL_2
	setevent EVENT_MARILL_TANGELO_1
	disappear TANGELO_ISLAND_MARILL_1
	end	

TangeloMarillKeepFollowingScript:
	turnobject TANGELO_ISLAND_MARILL_2, LEFT
	playsound SFX_JUMP_OVER_LEDGE
	applymovement TANGELO_ISLAND_MARILL_2, MarillHopMovement
	turnobject TANGELO_ISLAND_MARILL_2, LEFT
	cry MARILL
	pause 15
	playsound SFX_JUMP_OVER_LEDGE
	applymovement TANGELO_ISLAND_MARILL_2, MarillHopMovement3
	setscene SCENE_TANGELO_ISLAND_MARILL_3
	setevent EVENT_MARILL_TANGELO_2
	disappear TANGELO_ISLAND_MARILL_2
	end

TangeloMarillKeepFollowingScript2:
	turnobject TANGELO_ISLAND_MARILL_2, RIGHT
	playsound SFX_JUMP_OVER_LEDGE
	applymovement TANGELO_ISLAND_MARILL_2, MarillHopMovement
	cry MARILL
	pause 15
	playsound SFX_JUMP_OVER_LEDGE
	applymovement TANGELO_ISLAND_MARILL_2, MarillHopMovement3
	setscene SCENE_TANGELO_ISLAND_MARILL_3
	setevent EVENT_MARILL_TANGELO_2
	disappear TANGELO_ISLAND_MARILL_2
	end

TangeloRocketScript:
	applymovement PLAYER, TangeloPlayerMovement1
TangeloRocketScript2:
	playmusic MUSIC_ROCKET_OVERTURE
	opentext
	writetext TangeloRocketText1
	waitbutton
	closetext
	playsound SFX_TACKLE
	applymovement TANGELO_ISLAND_ROCKET_2, TangeloRocketGetsPushedMovement
	showemote EMOTE_SHOCK, TANGELO_ISLAND_ROCKET_2, 15
	showemote EMOTE_SHOCK, TANGELO_ISLAND_TRACEY_1, 15
	turnobject TANGELO_ISLAND_ROCKET_1, RIGHT
	turnobject TANGELO_ISLAND_ROCKET_3, RIGHT
	opentext
	writetext TangeloRocketText2
	waitbutton
	closetext
	winlosstext TangeloRocketWinText, TangeloRocketLossText
	setlasttalked TANGELO_ISLAND_ROCKET_2
	loadtrainer GRUNTM, GRUNTM_1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle
	
.AfterBattle:	
	playmusic MUSIC_ROCKET_OVERTURE
	opentext
	writetext TangeloRocketText3
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	disappear TANGELO_ISLAND_ROCKET_1
	disappear TANGELO_ISLAND_ROCKET_2
	disappear TANGELO_ISLAND_ROCKET_3
	pause 15
	special FadeInQuickly
	playmapmusic
	applymovement TANGELO_ISLAND_TRACEY_1, TangeloTraceyMovement1
	opentext
	writetext TangeloTraceyText1
	waitbutton
	closetext
	playsound SFX_JUMP_OVER_LEDGE
	applymovement TANGELO_ISLAND_MARILL_3, MarillHopMovement4
	cry MARILL
	pause 15
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	disappear TANGELO_ISLAND_TRACEY_1
	disappear TANGELO_ISLAND_LAPRAS_1
	disappear TANGELO_ISLAND_MARILL_3
	pause 15
	special FadeInQuickly
	setevent EVENT_TANGELO_ROCKETS_DEFEATED
	setscene SCENE_TANGELO_ISLAND_NOOP
	clearevent EVENT_TRACEY_TANGELO_CENTER_INSIDE
	end
	
TangeloMarillScript:
	faceplayer
	cry MARILL
	opentext
	writetext TangeloMarillScriptText
	waitbutton
	closetext
	end
	
LaprasScript:
	opentext
	cry LAPRAS
	writetext LaprasText
	yesorno
	iftrue .ObtainedLapras
	closetext
	end
	
.ObtainedLapras:
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	writetext ReceivedLaprasText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke LAPRAS, 5, ORAN_BERRY
	closetext
	setevent EVENT_LAPRAS_OBTAINED
	disappear TANGELO_ISLAND_LAPRAS_2
	end
	
.NoRoom:
	writetext LaprasPartyFullText
	waitbutton
	closetext
	end
	
TraceyTangeloScript:
	faceplayer
	showemote EMOTE_SHOCK, TANGELO_ISLAND_TRACEY_2, 15
	opentext
	writetext TraceyTangeloText1
	waitbutton
	playmusic MUSIC_TRACEY_ENCOUNTER
	writetext TraceyTangeloText2
	waitbutton
	closetext
	winlosstext TangeloTraceyWinText, TangeloTraceyLossText
	setlasttalked TANGELO_ISLAND_TRACEY_2
	loadtrainer TRACEY1, TRACEY_1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle
	
.AfterBattle:
	playmusic MUSIC_TRACEY_ENCOUNTER
	opentext
	writetext TraceyTangeloText3
	waitbutton
	closetext
	applymovement PLAYER, TraceyBattlePlayerMovement
	applymovement TANGELO_ISLAND_TRACEY_2, TraceyTangeloMovement
	pause 15
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	disappear TANGELO_ISLAND_TRACEY_2
	pause 15
	special FadeInQuickly
	playmapmusic
	setevent EVENT_TRACEY_BATTLE_TANGELO
	end
	
TangeloIslandSign:
;	jumptext TangeloIslandSignText
	clearevent EVENT_OBTAINED_GS_BALL
	setscene SCENE_TANGELO_GS_BALL
	giveitem PINKAN_BERRY
	end
	
TangeloCenterSign:
	jumptext TangeloCenterSignText
	
TangeloBerrySellerScript:
	faceplayer
	opentext
	checkevent EVENT_BERRY_SELLER_PINKAN
	iftrue .PinkanBerryShop
	checkitem PINKAN_BERRY
	iftrue .GivePinkanBerry
.RefusedPinkanBerry
	pokemart MARTTYPE_STANDARD, MART_BERRY_SELLER
	closetext
	end
	
.GivePinkanBerry
	writetext BerrySellerGotPinkText
	yesorno
	iftrue .GavePinkanBerry
	sjump .RefusedPinkanBerry
.GavePinkanBerry
	writetext BerrySellerGavePinkText
	waitbutton
	closetext
	takeitem PINKAN_BERRY
	setevent EVENT_BERRY_SELLER_PINKAN
	end
.PinkanBerryShop
	pokemart MARTTYPE_STANDARD, MART_BERRY_SELLER_PINKAN
	closetext
	end

BerrySellerGotPinkText:
	text "Oh, is that what I"
	line "think it is?"
	
	para "That's a PINKAN"
	line "BERRY!"
	
	para "Why don't you give"
	line "me one? I can grow"
	cont "them and offer it"
	cont "as a new product!"
	done
	
BerrySellerGavePinkText:
	text "Thanks! Talk to me"
	line "in a bit and I'll"
	cont "have PINKAN BERRY"
	cont "in my shop!"
	done

TangeloIslandSignText:
	text "TANGELO ISLAND"
	
	para "Where all walks of"
	line "life meet on soft"
	cont "sands."
	done
	
TangeloCenterSignText:
	text "TANGELO ISLAND"
	line "#MON CENTER"
	done
	
TraceyTangeloText1:
	text "TRACEY: Yo!"
	line "LAPRAS is fully"
	cont "healed! I was able"
	cont "to make a great"
	cont "sketch."
	
	para "But the reason I"
	line "waited up for you"
	cont "was because…"
	done
	
TraceyTangeloText2:
	text "I saw how you"
	line "handled those guys"
	cont "earlier. I want to"
	cont "battle you!"
	done
	
TraceyTangeloText3:
	text "TRACEY: Not bad!"
	line "By the way, I"
	cont "didn't catch your"
	cont "name."
	
	para "… … …"
	
	para "TRACEY: So your"
	line "name is <PLAYER>!"
	cont "Well, hopefully I"
	cont "will seeya around!"
	
	para "By the way, LAPRAS"
	line "has been staring"
	cont "at you this whole"
	cont "time!"
	
	para "Later, <PLAYER>!"
	done
	
TangeloMarillScriptText:
	text "MARILL: Mari! Ma!"
	done
	
TangeloRocketText1:
	text "Buzz off, brat!"
	line "Finder's keepers,"
	cont "and we found it"
	cont "first!"
	
	para "???: As if!"
	line "You goons were"
	cont "about to set those"
	cont "whips on LAPRAS!"
	cont "Any respectable"
	cont "trainer should"
	cont "know better!"
	done
	
TangeloRocketText2:
	text "Ack!"
	line "If it's a fight"
	cont "you want, you got"
	cont "it!"
	done
	
TangeloRocketWinText:
	text "I'll remember this"
	line "incident!"
	done
	
TangeloRocketLossText:
	text "TEAM ROCKET lives"
	line "forever, baby!"
	done
	
TangeloRocketText3:
	text "Let's get out of"
	line "here!"
	done
	
TangeloTraceyText1:
	text "???: Thanks for"
	line "the help! I need"
	cont "to get this LAPRAS"
	cont "to the #MON"
	cont "CENTER. Please"
	cont "meet me there in a"
	cont "a bit."
	done
	
LaprasText:
	text "LAPRAS: Gyuuoh!"
	
	para "LAPRAS seems to"
	line "be ready to join"
	cont "you. Take LAPRAS?"
	done
	
LaprasPartyFullText:
	text "Your party is"
	line "full."
	done
	
ReceivedLaprasText:
	text "<PLAYER> received"
	line "LAPRAS!"
	done
	
TangeloTraceyWinText:
	text "That was fun!"
	done
	
TangeloTraceyLossText:
	text "Are you ok?"
	done
	
MarillHopMovement:
	jump_in_place
	turn_head UP
	step_sleep 8
	turn_head LEFT
	step_sleep 8
	turn_head DOWN
	step_sleep 8
	turn_head RIGHT
	step_sleep 8
	step_end
	
MarillHopMovement2:
	jump_in_place
	step_sleep 16
	run_step LEFT
	run_step LEFT
	step_end
	
MarillHopMovement3:
	jump_in_place
	step_sleep 16
	run_step LEFT
	run_step DOWN
	run_step DOWN
	run_step DOWN
	run_step DOWN
	run_step DOWN
	step_end
	
TangeloRocketGetsPushedMovement:
	turn_head LEFT
	fix_facing
	step RIGHT
	remove_fixed_facing
	step_sleep 16
	turn_head RIGHT
	step_end
	
TangeloPlayerMovement1:
	step DOWN
	turn_head LEFT
	step_end
	
TangeloTraceyMovement1:
	step RIGHT
	step RIGHT
	step_end
	
MarillHopMovement4:
	jump_in_place
	step_sleep 16
	run_step UP
	run_step LEFT
	run_step LEFT
	run_step LEFT
	turn_head DOWN
	step_end
	
TraceyBattlePlayerMovement:
	step RIGHT
	turn_head LEFT
	step_end
	
TraceyTangeloMovement:
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end
	
TangeloPlayerMovement2:
	step DOWN
	step_end

TangeloIsland_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events
	coord_event 31, 10, SCENE_TANGELO_ISLAND_MARILL_1, TangeloMarillNeedsHelpScript
	coord_event 31, 11, SCENE_TANGELO_ISLAND_MARILL_1, TangeloMarillNeedsHelpScript
	coord_event 17, 16, SCENE_TANGELO_ISLAND_MARILL_2, TangeloMarillKeepFollowingScript
	coord_event 17, 17, SCENE_TANGELO_ISLAND_MARILL_2, TangeloMarillKeepFollowingScript
	coord_event 21, 16, SCENE_TANGELO_ISLAND_MARILL_2, TangeloMarillKeepFollowingScript2
	coord_event 21, 17, SCENE_TANGELO_ISLAND_MARILL_2, TangeloMarillKeepFollowingScript2
	coord_event 15, 24, SCENE_TANGELO_ISLAND_MARILL_3, TangeloRocketScript
	coord_event 15, 25, SCENE_TANGELO_ISLAND_MARILL_3, TangeloRocketScript2
	coord_event 15,  8, SCENE_TANGELO_GS_BALL, TangeloGSBallEventScript

	def_bg_events
	bg_event 24, 10, BGEVENT_READ, TangeloIslandSign
	bg_event 21,  7, BGEVENT_READ, TangeloCenterSign

	def_object_events
	object_event 28, 10, SPRITE_MARILL_WALK, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_MARILL_TANGELO_1
	object_event 19, 17, SPRITE_MARILL_WALK, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_MARILL_TANGELO_2
	object_event 17, 25, SPRITE_MARILL_WALK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TangeloMarillScript, EVENT_TANGELO_ROCKETS_DEFEATED
	object_event 12, 24, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_TANGELO_ROCKETS_DEFEATED
	object_event 13, 25, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_TANGELO_ROCKETS_DEFEATED
	object_event 12, 26, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_TANGELO_ROCKETS_DEFEATED
	object_event 12, 25, SPRITE_TRACEY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_TANGELO_ROCKETS_DEFEATED
	object_event 11, 25, SPRITE_SURF, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_TANGELO_ROCKETS_DEFEATED
	object_event 20,  7, SPRITE_TRACEY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, TraceyTangeloScript, EVENT_TRACEY_BATTLE_TANGELO
	object_event 20,  5, SPRITE_SURF, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, LaprasScript, EVENT_LAPRAS_OBTAINED
	object_event 15, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TangeloGSBallScript, EVENT_OBTAINED_GS_BALL
	object_event 21, 11, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, TangeloBerrySellerScript, -1
