	object_const_def
	const PLAYERSHOUSE1F_MOM1

PlayersHouse1F_MapScripts:
	def_scene_scripts
	scene_script PlayersHouse1FNoop1Scene, SCENE_PLAYERSHOUSE1F_MEET_MOM
	scene_script PlayersHouse1FNoop2Scene, SCENE_PLAYERSHOUSE1F_NOOP

	def_callbacks

PlayersHouse1FNoop1Scene:
	end

PlayersHouse1FNoop2Scene:
	end

MeetMomLeftScript:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1

MeetMomRightScript:
	playmusic MUSIC_MOM
	showemote EMOTE_SHOCK, PLAYERSHOUSE1F_MOM1, 15
	turnobject PLAYER, LEFT
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse .OnRight
	applymovement PLAYERSHOUSE1F_MOM1, MomTurnsTowardPlayerMovement
	sjump MeetMomScript

.OnRight:
	applymovement PLAYERSHOUSE1F_MOM1, MomWalksToPlayerMovement
MeetMomScript:
	opentext
	writetext ElmsLookingForYouText
	promptbutton
	loadmenu .AltStarterMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .AltStarterPika
	ifequal 2, .AltStarterEevee
.AltStarterPika
	; setevent ALT_STARTER_PIKACHU
.AltStarterEevee
	; setevent ALT_STARTER_EEVEE
	writetext MomChoseAltStarterText
	promptbutton
; replace with giveitem POKE_PAGER
	getstring STRING_BUFFER_4, PokegearName
	scall PlayersHouse1FReceiveItemStd
	setscene SCENE_PLAYERSHOUSE1F_NOOP
	setevent EVENT_PLAYERS_HOUSE_MOM_1
	writetext MomGivesPokegearText
	promptbutton
	special SetDayOfWeek
	closetext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue .FromRight
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iffalse .FromLeft
	sjump .Finish

.FromRight:
	applymovement PLAYERSHOUSE1F_MOM1, MomTurnsBackMovement
	sjump .Finish

.FromLeft:
	applymovement PLAYERSHOUSE1F_MOM1, MomWalksBackMovement
	sjump .Finish

.Finish:
	special RestartMapMusic
	turnobject PLAYERSHOUSE1F_MOM1, LEFT
	end
	
.AltStarterMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 6, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .AltStarterMenuData
	db 1 ; default option

.AltStarterMenuData:
	db STATICMENU_CURSOR ; flags
	db 2 ; items
	db "PIKACHU DOLL@"
	db "EEVEE DOLL@"


MeetMomTalkedScript:
	playmusic MUSIC_MOM
	sjump MeetMomScript

PokegearName:
	db "#GEAR@"

PlayersHouse1FReceiveItemStd:
	jumpstd ReceiveItemScript
	end

MomScript:
	faceplayer
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	checkscene
	iffalse MeetMomTalkedScript ; SCENE_PLAYERSHOUSE1F_MEET_MOM
	opentext
	checkevent EVENT_FIRST_TIME_BANKING_WITH_MOM
	iftrue .FirstTimeBanking
	checkevent EVENT_TALKED_TO_MOM_AFTER_MYSTERY_EGG_QUEST
	iftrue .BankOfMom
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue .GaveMysteryEgg
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue .GotAPokemon
	writetext MomDefaultText
	waitbutton
	closetext
	end

.GotAPokemon:
	writetext SoWhatWasProfElmsErrandText
	waitbutton
	closetext
	end

.FirstTimeBanking:
	writetext ImBehindYouText
	waitbutton
	closetext
	end

.GaveMysteryEgg:
	setevent EVENT_FIRST_TIME_BANKING_WITH_MOM
.BankOfMom:
	setevent EVENT_TALKED_TO_MOM_AFTER_MYSTERY_EGG_QUEST
	special BankOfMom
	waitbutton
	closetext
	end

PlayersHouse1FTVScript:
	jumptext PlayersHouse1FTVText

PlayersHouse1FStoveScript:
	jumptext PlayersHouse1FStoveText

PlayersHouse1FSinkScript:
	jumptext PlayersHouse1FSinkText

PlayersHouse1FFridgeScript:
	jumptext PlayersHouse1FFridgeText

MomTurnsTowardPlayerMovement:
	slow_step RIGHT
	slow_step RIGHT
	step_end

MomWalksToPlayerMovement:
	slow_step RIGHT
	slow_step RIGHT
	slow_step RIGHT
	step_end

MomTurnsBackMovement:
	slow_step LEFT
	slow_step LEFT
	step_end

MomWalksBackMovement:
	slow_step LEFT
	slow_step LEFT
	slow_step LEFT
	step_end

ElmsLookingForYouText:
	text "MOM: Hey, kiddo!"
	line "Today is the day"
	cont "you go on your own"
	cont "journey! Your mama"
	cont "knows that you'll"
	cont "make her proud!"
	
	para "… … …"

	para "MOM: Hey, kiddo!"
	line "I meant to ask you"
	cont "something!"
	cont "I want to buy a"
	cont "new doll for your"
	cont "room!"
	
	para "Which do you like"
	line "more? PIKACHU or"
	cont "EEVEE?"
	done
	
MomChoseAltStarterText:
	text "MOM: Good choice,"
	line "kiddo!"
	
	para "Also, I wanted to"
	line "give you this, so"
	cont "mama can always"
	cont "keep tabs on you!"
	done

MomGivesPokegearText:
	text "#MON PAGER, or"
	line "just #PAGER."

	para "It allows people"
	line "to send messages"
	cont "to you, though you"
	cont "can't reply back."

	para "Technology is so"
	line "crazy! One day we"
	cont "call eachother and"
	cont "listen to RADIO on"
	cont "the go, I'm sure!"
	done

MomDefaultText:
	text "MOM: Hey, kiddo!"
	line "Today is the day"
	cont "you go on your own"
	cont "journey! Your mama"
	cont "knows that you'll"
	cont "make her proud!"
	done

SoWhatWasProfElmsErrandText:
	text "So, what was PROF."
	line "ELM's errand?"

	para "…"

	para "That does sound"
	line "challenging."

	para "But, you should be"
	line "proud that people"
	cont "rely on you."
	done

ImBehindYouText:
	text "<PLAYER>, do it!"

	para "I'm behind you all"
	line "the way!"
	done

PlayersHouse1FStoveText:
	text "A adept arranging"
	line "for MOTHER…"
	
	para "VOLCANO BAKEMEAT!"
	done

PlayersHouse1FSinkText:
	text "The sink is spot-"
	line "less. MOM likes it"
	cont "clean."
	done

PlayersHouse1FFridgeText:
	text "Let's see what's"
	line "in the fridge…"

	para "LEFTOVERS and a"
	line "bottle of MOO MOO"
	cont "MILK… Yum!"
	done

PlayersHouse1FTVText:
	text "There's an anime"
	line "playing on TV:"
	
	para "A boy and his"
	line "PIKACHU travel"
	cont "through the KANTO"
	cont "REGION…"
	
	para "It's time for me"
	line "to get goin', too!"
	done

PlayersHouse1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, VALENCIA_ISLAND, 1
	warp_event  3,  7, VALENCIA_ISLAND, 1
	warp_event 11,  0, PLAYERS_HOUSE_2F, 1

	def_coord_events
	coord_event 10,  4, SCENE_PLAYERSHOUSE1F_MEET_MOM, MeetMomLeftScript
	coord_event 11,  4, SCENE_PLAYERSHOUSE1F_MEET_MOM, MeetMomRightScript

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, PlayersHouse1FStoveScript
	bg_event  1,  1, BGEVENT_READ, PlayersHouse1FSinkScript
	bg_event  2,  1, BGEVENT_READ, PlayersHouse1FFridgeScript
	bg_event  6,  1, BGEVENT_READ, PlayersHouse1FTVScript

	def_object_events
	object_event  7,  4, SPRITE_MOM, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MomScript, -1