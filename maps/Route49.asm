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

Route49_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events