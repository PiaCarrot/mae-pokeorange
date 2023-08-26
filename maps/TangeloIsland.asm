	object_const_def
	const TANGELO_ISLAND_MARILL_1
	const TANGELO_ISLAND_MARILL_2
	const TANGELO_ISLAND_MARILL_3
	const TANGELO_ISLAND_ROCKET_1
	const TANGELO_ISLAND_ROCKET_2
	const TANGELO_ISLAND_ROCKET_3
	const TANGELO_ISLAND_TRACEY_1
	const TANGELO_ISLAND_LAPRAS_1

TangeloIsland_MapScripts:
	def_scene_scripts
	scene_script TangeloIslandNoOp, SCENE_TANGELO_ISLAND_NOOP
	scene_script TangeloMarillNeedsHelpScene, SCENE_TANGELO_ISLAND_MARILL_1
	scene_script TangeloMarillKeepFollowingScene, SCENE_TANGELO_ISLAND_MARILL_2
	scene_script TangeloRocketEventScene, SCENE_TANGELO_ISLAND_MARILL_3

	def_callbacks
	callback MAPCALLBACK_NEWMAP, TangeloIslandFlypointCallback
	
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
	end
	
TangeloMarillScript:
	faceplayer
	cry MARILL
	opentext
	writetext TangeloMarillScriptText
	waitbutton
	closetext
	end
	
TangeloIslandSign:
	jumptext TangeloIslandSignText
	
TangeloIslandSignText:
	text "TANGELO ISLAND"
	
	para "Where all walks of"
	line "life meet on soft"
	cont "sands."
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

	def_bg_events
	bg_event 24, 10, BGEVENT_READ, TangeloIslandSign

	def_object_events
	object_event 28, 10, SPRITE_MARILL_WALK, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_MARILL_TANGELO_1
	object_event 19, 17, SPRITE_MARILL_WALK, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_MARILL_TANGELO_2
	object_event 17, 25, SPRITE_MARILL_WALK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TangeloMarillScript, EVENT_MARILL_TANGELO_3
	object_event 12, 24, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_TANGELO_ROCKETS_DEFEATED
	object_event 13, 25, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_TANGELO_ROCKETS_DEFEATED
	object_event 12, 26, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_TANGELO_ROCKETS_DEFEATED
	object_event 12, 25, SPRITE_TRACEY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_MARILL_TANGELO_3
	object_event 11, 25, SPRITE_SURF, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_MARILL_TANGELO_3
