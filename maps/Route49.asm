	object_const_def
	const ROUTE_49_GATE_GUARDIAN

Route49_MapScripts:
	def_scene_scripts
	scene_script Route49StarterCheckScene, SCENE_ROUTE_49_NO_POKEMON
	scene_script Route49NoopScene,         SCENE_ROUTE_49_NOOP

	def_callbacks
	
Route49StarterCheckScene:
	end
	
Route49NoopScene:
	end
	
Route49YouDontHaveMon1:
	turnobject ROUTE_49_GATE_GUARDIAN, RIGHT
	showemote EMOTE_SHOCK, ROUTE_49_GATE_GUARDIAN, 15
	applymovement ROUTE_49_GATE_GUARDIAN, Route49NoPokeMovement1
	opentext
	writetext ValenciaCooltrainerText
	waitbutton
	closetext
	applymovement PLAYER, Route49NoPokeMovement1
	applymovement ROUTE_49_GATE_GUARDIAN, Route49NoPokeMovement2
	end
	
Route49YouDontHaveMon2:
	turnobject ROUTE_49_GATE_GUARDIAN, RIGHT
	showemote EMOTE_SHOCK, ROUTE_49_GATE_GUARDIAN, 15
	applymovement ROUTE_49_GATE_GUARDIAN, Route49NoPokeMovement3
	opentext
	writetext ValenciaCooltrainerText
	waitbutton
	closetext
	applymovement PLAYER, Route49NoPokeMovement1
	applymovement ROUTE_49_GATE_GUARDIAN, Route49NoPokeMovement4
	end

ValenciaCooltrainerScript:
	faceplayer
	opentext
	writetext ValenciaCooltrainerText2
	waitbutton
	closetext
	end
	
ValenciaCooltrainerText:
	text "Ah, <PLAYER>!"
	line "Aren't you meeting"
	cont "PROF. IVY to get"
	cont "get your first"
	cont "#MON?"
	
	para "Her lab is on"
	line "BAYVIEW ROAD."
	done
	
ValenciaCooltrainerText2:
	text "Hey, <PLAYER>!"
	line "Good luck out"
	cont "there, bud!"
	done
	
Route49NoPokeMovement1:
	step RIGHT
	step RIGHT
	step_end

Route49NoPokeMovement2:
	step LEFT
	step LEFT
	step_end

Route49NoPokeMovement3:
	step DOWN
	step RIGHT
	step RIGHT
	step_end

Route49NoPokeMovement4:
	step UP
	step LEFT
	step LEFT
	step_end

Route49_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events
	coord_event 37, 12, SCENE_ROUTE_49_NO_POKEMON, Route49YouDontHaveMon1
	coord_event 37, 13, SCENE_ROUTE_49_NO_POKEMON, Route49YouDontHaveMon2

	def_bg_events

	def_object_events
	object_event 34, 12, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ValenciaCooltrainerScript, -1
