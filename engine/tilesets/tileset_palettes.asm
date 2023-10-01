LoadSpecialMapPalette:
	call GetMapTimeOfDay
	bit IN_DARKNESS_F, a
	jr z, .not_dark
	ld a, [wStatusFlags]
	bit STATUSFLAGS_FLASH_F, a
	jr z, .darkness

.not_dark
	call GetMapTimeOfDay
	bit IN_FOGGY_F, a
	jr z, .not_foggy
	ld a, [wStatusFlags2]
	bit STATUSFLAGS2_DEFOG_F, a
	jr z, .fog
.not_foggy
	ld a, [wMapTileset]
	cp TILESET_POKECOM_CENTER
	jr z, .pokecom_2f
	cp TILESET_BATTLE_TOWER_INSIDE
	jr z, .battle_tower_inside
	cp TILESET_ICE_PATH
	jr z, .ice_path
	cp TILESET_LAB
	jr z, .lab
	cp TILESET_BEACH_HOUSE
	jr z, .beach_house
	jr .do_nothing
	
.darkness
	call LoadDarknessPalette
	scf
	ret
	
.fog
	call LoadFogPalette
	scf
	ret

.pokecom_2f
	call LoadPokeComPalette
	scf
	ret

.battle_tower_inside
	call LoadBattleTowerInsidePalette
	scf
	ret

.ice_path
	ld a, [wEnvironment]
	and $7
	cp INDOOR ; Hall of Fame
	jr z, .do_nothing
	call LoadIcePathPalette
	scf
	ret
	
.lab
	call LoadLabPalette
	scf
	ret
	
.beach_house
	call LoadBeachHousePalette
	scf
	ret

.do_nothing
	and a
	ret
	
LoadDarknessPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, DarknessPalette
	ld bc, 8 palettes
	jp FarCopyWRAM

DarknessPalette:
INCLUDE "gfx/tilesets/darkness.pal"

LoadFogPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, FogPalette
	ld bc, 8 palettes
	jp FarCopyWRAM

FogPalette:
INCLUDE "gfx/tilesets/foggy.pal"

LoadPokeComPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, PokeComPalette
	ld bc, 8 palettes
	jmp FarCopyWRAM

PokeComPalette:
INCLUDE "gfx/tilesets/pokecom_center.pal"

LoadBattleTowerInsidePalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, BattleTowerInsidePalette
	ld bc, 8 palettes
	jmp FarCopyWRAM

BattleTowerInsidePalette:
INCLUDE "gfx/tilesets/battle_tower_inside.pal"

LoadIcePathPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, IcePathPalette
	ld bc, 8 palettes
	jmp FarCopyWRAM

IcePathPalette:
INCLUDE "gfx/tilesets/ice_path.pal"

LoadLabPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, LabPalette
	ld bc, 8 palettes
	jmp FarCopyWRAM
	
LabPalette:
INCLUDE "gfx/tilesets/lab.pal"

LoadBeachHousePalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, BeachHousePalette
	ld bc, 8 palettes
	jmp FarCopyWRAM
	
BeachHousePalette:
INCLUDE "gfx/tilesets/beach_house.pal"

LoadSpecialNPCPalette:
	call GetMapTimeOfDay
	bit IN_DARKNESS_F, a
	jr z, .do_nothing
	ld a, [wStatusFlags]
	bit STATUSFLAGS_FLASH_F, a
	jr nz, .do_nothing

;darkness
	call LoadNPCDarknessPalette
	scf
	ret

.do_nothing
	and a
	ret

LoadNPCDarknessPalette:
	ld a, BANK(wOBPals1)
	ld de, wOBPals1
	ld hl, NPCDarknessPalette
	ld bc, 8 palettes
	jp FarCopyWRAM

NPCDarknessPalette:
INCLUDE "gfx/overworld/npc_sprites_darkness.pal"
