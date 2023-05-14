MACRO treemon_map
	map_id \1
	db \2 ; treemon set
ENDM

TreeMonMaps:
	treemon_map NEW_BARK_TOWN,        TREEMON_SET_CANYON
	treemon_map VALENCIA_ISLAND,      TREEMON_SET_ISLAND_1
	treemon_map ROUTE_49,      		  TREEMON_SET_ISLAND_1
	treemon_map ROUTE_49_NORTH,       TREEMON_SET_ISLAND_1
	db -1

RockMonMaps:
	treemon_map BATTLE_TOWER_OUTSIDE, TREEMON_SET_SHORE_ROCK_1
	db -1
