	object_const_def

ValenciaIsland_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, NewBarkTownFlypointCallback

ValenciaIslandFlypointCallback:
	setflag ENGINE_FLYPOINT_NEW_BARK
	clearevent EVENT_FIRST_TIME_BANKING_WITH_MOM
	endcallback
	
ValenciaYoungsterScript:
;	jumptextfaceplayer ValenciaYoungsterText
;	setflag ENGINE_POKEDEX
;	callasm CheatFillPokedex
	opentext
	givepoke PIKACHU, 5
	loadwildmon PIKACHU, 5
	catchtutorial BATTLETYPE_TUTORIAL
	closetext
	end


PhoneCallScript: ;currently unused
	pause 10
	playsound SFX_CALL
	waitsfx
	pause 10
	playsound SFX_CALL
	waitsfx
	opentext
	writetext PhoneCallTest1
	waitsfx
	promptbutton
	writetext PhoneCallTest2
	promptbutton
	closetext
	checkevent EVENT_GOT_PIKACHU_FROM_IVY
	iftrue .GetPikachuDoll
	setevent EVENT_DECO_EEVEE_DOLL
	sjump .Continue
.GetPikachuDoll
	setevent EVENT_DECO_PIKACHU_DOLL
.Continue
	setevent EVENT_DECO_BIG_LAPRAS_DOLL
	end
	
PhoneCallTest1:
	text "… … …"
	line "A new message!"
	done
	
PhoneCallTest2:
	text "MOM: Hey kiddo!"
	line "LORI dropped your"
	cont "new DOLL off!"
	cont "She also got you"
	cont "something extra!"
	cont "Check your PC when"
	cont "you get home."
	done

; CheatFillPokedex:
	; ld a, 1
	; ld [wFirstUnownSeen], a
	; ld hl, wPokedexSeen
	; call .Fill
	; ld hl, wPokedexCaught
; .Fill:
	; ld a, %11111111
	; ld bc, 62 ; 001-248
	; call ByteFill
	; ld a, %11111111
	; ld bc, 31 ; 249-496
	; ret

ValenciaTechnologyGuyScript:
	jumptextfaceplayer ValenciaTechnologyGuyText	
	
ValenciaCooltrainerScript:
	faceplayer
	opentext
	writetext ValenciaCooltrainerText
	waitbutton
	closetext
	end

ValenciaYoungsterText:
	text "Yo, <PLAYER>!"
	line "Take care on your"
	cont "travels!"
	done

ValenciaTechnologyGuyText:
	text "Technology is"
	line "incredible!"
	
	para "Now people can"
	line "make their own"
	cont "GAMEBOY games!"
	done
	
ValenciaCooltrainerText:
	text "Ah, <PLAYER>!"
	line "Aren't you meeting"
	cont "PROF. IVY to get"
	cont "get your first"
	cont "#MON?"
	
	para "Her lab is on"
	line "BAYVIEW ROAD."
	done
	
ValenciaLassScript:
	jumptextfaceplayer ValenciaLassText
	
ValenciaLassText:
	text "Splish! <PLAYER>!"
	line "I love the sound"
	cont "the water makes"
	cont "when I SPLASH in"
	cont "the puddles!"
	done

ValenciaIsland_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 15,  5, PLAYERS_HOUSE_1F, 1
	warp_event  5, 19, BATTLE_TOWER_OUTSIDE, 1
	warp_event 19, 15, INDIGO_PLATEAU_POKECENTER_1F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event 13,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ValenciaYoungsterScript, -1
	object_event 16, 18, SPRITE_FISHER, SPRITEMOVEDATA_WANDER, 0, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ValenciaTechnologyGuyScript, -1
	object_event  5,  8, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ValenciaCooltrainerScript, -1
	object_event 32,  5, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 0, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ValenciaLassScript, -1
	object_event 38, 38, SPRITE_ELM, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_DRATINI_VALENCIA_IVY
	object_event 30, 37, SPRITE_DRATINI, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_DRATINI_VALENCIA_APPEAR
