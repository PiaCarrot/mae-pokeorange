	object_const_def

TangeloIsland_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, TangeloIslandFlypointCallback
	
TangeloIslandFlypointCallback:
	setflag ENGINE_FLYPOINT_TANGELO
	endcallback
	
TangeloIslandSign:
	jumptext TangeloIslandSignText
	
TangeloIslandSignText:
	text "TANGELO ISLAND"
	
	para "Where all walks of"
	line "life meet on soft"
	cont "sands."
	done

TangeloIsland_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event 24, 10, BGEVENT_READ, TangeloIslandSign

	def_object_events