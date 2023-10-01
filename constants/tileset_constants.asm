; Tilesets indexes (see data/tilesets.asm)
	const_def 1
	const TILESET_JOHTO                ; 01
	const TILESET_KANTO                ; 03
	const TILESET_GATE                 ; 03
	const TILESET_BATTLE_TOWER_OUTSIDE ; 04
	const TILESET_PLAYERS_HOUSE        ; 06
	const TILESET_POKECENTER           ; 07
	const TILESET_ELITE_FOUR_ROOM      ; 0f
	const TILESET_CHAMPIONS_ROOM       ; 12
	const TILESET_PLAYERS_ROOM         ; 14
	const TILESET_POKECOM_CENTER       ; 15
	const TILESET_BATTLE_TOWER_INSIDE  ; 16
	const TILESET_ICE_PATH             ; 1d
	const TILESET_VALENCIA_MANDARIN_NORTH
	const TILESET_LAB
	const TILESET_HOUSES
	const TILESET_CAVE_1
	const TILESET_MIKAN_ISLAND
	const TILESET_BEACH_HOUSE
DEF NUM_TILESETS EQU const_value - 1

; wTileset struct size
DEF TILESET_LENGTH EQU 15

; roof length (see gfx/tilesets/roofs)
DEF ROOF_LENGTH EQU 9

; bg palette values (see gfx/tilesets/*_palette_map.asm)
; TilesetBGPalette indexes (see gfx/tilesets/bg_tiles.pal)
	const_def
	const PAL_BG_GRAY   ; 0
	const PAL_BG_RED    ; 1
	const PAL_BG_GREEN  ; 2
	const PAL_BG_WATER  ; 3
	const PAL_BG_YELLOW ; 4
	const PAL_BG_BROWN  ; 5
	const PAL_BG_ROOF   ; 6
	const PAL_BG_TEXT   ; 7
	
	const_next $80
	const PAL_BG_PRIORITY_GRAY   ; 80
	const PAL_BG_PRIORITY_RED    ; 81
	const PAL_BG_PRIORITY_GREEN  ; 82
	const PAL_BG_PRIORITY_WATER  ; 83
	const PAL_BG_PRIORITY_YELLOW ; 84
	const PAL_BG_PRIORITY_BROWN  ; 85
	const PAL_BG_PRIORITY_ROOF   ; 86
	const PAL_BG_PRIORITY_TEXT   ; 87
