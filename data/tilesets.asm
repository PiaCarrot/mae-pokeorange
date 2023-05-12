MACRO tileset
	dba \1GFX, \1Meta, \1Coll
	dw \1Anim
	dw NULL
	dw \1PalMap
ENDM

; Associated data:
; - The *GFX, *Meta, and *Coll are defined in gfx/tilesets.asm
; - The *PalMap are defined in gfx/tileset_palette_maps.asm
; - The *Anim are defined in engine/tilesets/tileset_anims.asm

Tilesets::
; entries correspond to TILESET_* constants (see constants/tileset_constants.asm)
	table_width TILESET_LENGTH, Tilesets
	tileset Tileset0
	tileset TilesetJohto
	tileset TilesetKanto
	tileset TilesetGate
	tileset TilesetBattleTowerOutside
	tileset TilesetPlayersHouse
	tileset TilesetPokecenter
	tileset TilesetEliteFourRoom
	tileset TilesetChampionsRoom
	tileset TilesetPlayersRoom
	tileset TilesetPokeComCenter
	tileset TilesetBattleTowerInside
	tileset TilesetIcePath
	tileset TilesetValenciaMandarinNorth
	tileset TilesetLab
	tileset TilesetHouses
	assert_table_length NUM_TILESETS + 1
