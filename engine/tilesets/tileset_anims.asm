_AnimateTileset::
; Increment [hTileAnimFrame] and run that frame's function
; from the array pointed to by wTilesetAnim.

; Called in WRAM bank 1, VRAM bank 0, so map tiles
; $80 and above in VRAM bank 1 cannot be animated
; without switching to that bank themselves.

	ld a, [wTilesetAnim]
	ld e, a
	ld a, [wTilesetAnim + 1]
	ld d, a

	ldh a, [hTileAnimFrame]
	ld l, a
	inc a
	ldh [hTileAnimFrame], a

	ld h, 0
	add hl, hl
	add hl, hl
	add hl, de

; 2-byte parameter
; All functions take input de
	ld e, [hl]
	inc hl
	ld d, [hl]
	inc hl

; Function address
	ld a, [hli]
	ld h, [hl]
	ld l, a

	jp hl

Tileset0Anim:
TilesetKantoAnim:
	dw vTiles2 tile $14, AnimateWaterTile
	dw NULL,  WaitTileAnimation
	dw NULL,  WaitTileAnimation
	dw NULL,  WaitTileAnimation
	dw NULL,  AnimateWaterPalette
	dw NULL,  WaitTileAnimation
	dw NULL,  AnimateFlowerTile
	dw NULL,  WaitTileAnimation
	dw NULL,  WaitTileAnimation
	dw NULL,  StandingTileFrame8
	dw NULL,  DoneTileAnimation

TilesetJohtoAnim:
	dw vTiles2 tile $14, AnimateWaterTile
	dw NULL,  WaitTileAnimation
	dw NULL,  WaitTileAnimation
	dw NULL,  AnimateWaterPalette
	dw NULL,  WaitTileAnimation
	dw NULL,  AnimateFlowerTile
	dw WhirlpoolFramesTop, AnimateWhirlpoolTiles
	dw WhirlpoolFramesBottom, AnimateWhirlpoolTiles
	dw NULL,  WaitTileAnimation
	dw NULL,  StandingTileFrame8
	dw NULL,  DoneTileAnimation

TilesetEliteFourRoomAnim:
	dw NULL,  AnimateLavaBubbleTile2
	dw NULL,  WaitTileAnimation
	dw NULL,  WaitTileAnimation
	dw NULL,  WaitTileAnimation
	dw NULL,  AnimateLavaBubbleTile1
	dw NULL,  WaitTileAnimation
	dw NULL,  StandingTileFrame8
	dw NULL,  DoneTileAnimation

TilesetIcePathAnim:
	dw vTiles2 tile $35, ReadTileToAnimBuffer
	dw NULL,  FlickeringCaveEntrancePalette
	dw wTileAnimBuffer, ScrollTileRightLeft
	dw NULL,  FlickeringCaveEntrancePalette
	dw vTiles2 tile $35, WriteTileFromAnimBuffer
	dw NULL,  FlickeringCaveEntrancePalette
	dw NULL,  AnimateWaterPalette
	dw NULL,  FlickeringCaveEntrancePalette
	dw vTiles2 tile $31, ReadTileToAnimBuffer
	dw NULL,  FlickeringCaveEntrancePalette
	dw wTileAnimBuffer, ScrollTileDown
	dw NULL,  FlickeringCaveEntrancePalette
	dw wTileAnimBuffer, ScrollTileDown
	dw NULL,  FlickeringCaveEntrancePalette
	dw wTileAnimBuffer, ScrollTileDown
	dw NULL,  FlickeringCaveEntrancePalette
	dw vTiles2 tile $31, WriteTileFromAnimBuffer
	dw NULL,  FlickeringCaveEntrancePalette
	dw NULL,  DoneTileAnimation

TilesetValenciaMandarinNorthAnim:
	dw vTiles2 tile $7e, WriteTileToBuffer
	dw RSEWaterFrames, AnimateRSEWaterTiles
	dw ShoreWaterFrames, AnimateShoreWaterTiles
	dw DiveWaterFrames, AnimateDiveWaterTiles
	dw RockTopsFrames, AnimateRockTopsTiles
	dw RockLeftFrames, AnimateRockLeftTiles
	dw RockBotLeftFrames, AnimateRockBotLeftTiles
	dw RockBotRightFrames, AnimateRockBotRightTiles
	dw RockRightFrames, AnimateRockRightTiles
	dw wTileAnimBuffer, ScrollTileDown
	dw NULL,  WaitTileAnimation
	dw NULL,  WaitTileAnimation
	dw NULL,  AnimateFlowerTile
	dw WhirlpoolFramesTop, AnimateWhirlpoolTiles
	dw WhirlpoolFramesBottom, AnimateWhirlpoolTiles
	dw wTileAnimBuffer, ScrollTileDown
	dw NULL,  WaitTileAnimation
	dw vTiles2 tile $7e, WriteTileFromBuffer
	dw NULL,  StandingTileFrame8
	dw NULL,  DoneTileAnimation
	
TilesetCave1Anim:
	dw vTiles2 tile $7e, WriteTileToBuffer
	dw RSEWaterFrames, AnimateRSEWaterTiles
	dw ShoreWaterFrames, AnimateShoreWaterTiles
	dw DiveWaterFrames, AnimateDiveWaterTiles
	dw RockTopsFrames, AnimateRockTopsTiles
	dw RockLeftFrames, AnimateRockLeftTiles
	dw RockBotLeftFrames, AnimateRockBotLeftTiles
	dw RockBotRightFrames, AnimateRockBotRightTiles
	dw RockRightFrames, AnimateRockRightTiles
	dw wTileAnimBuffer, ScrollTileDown
	dw NULL,  WaitTileAnimation
	dw NULL,  WaitTileAnimation
	dw WhirlpoolFramesTop, AnimateWhirlpoolTiles
	dw WhirlpoolFramesBottom, AnimateWhirlpoolTiles
	dw wTileAnimBuffer, ScrollTileDown
	dw NULL,  WaitTileAnimation
	dw vTiles2 tile $7e, WriteTileFromBuffer
	dw NULL,  StandingTileFrame8
	dw NULL,  DoneTileAnimation


TilesetBattleTowerOutsideAnim:
TilesetPlayersHouseAnim:
TilesetPokecenterAnim:
TilesetGateAnim:
TilesetChampionsRoomAnim:
TilesetPlayersRoomAnim:
TilesetPokeComCenterAnim:
TilesetBattleTowerInsideAnim:
TilesetHousesAnim:
	dw NULL,  WaitTileAnimation
	dw NULL,  WaitTileAnimation
	dw NULL,  WaitTileAnimation
	dw NULL,  WaitTileAnimation
	dw NULL,  DoneTileAnimation
	

TilesetLabAnim:
	dw vTiles2 tile $22, AnimateWallWaterTile
	dw vTiles2 tile $23, AnimateLabWaterTile
	dw NULL,  WaitTileAnimation
	dw NULL,  WaitTileAnimation
	dw NULL,  WaitTileAnimation
	dw NULL,  WaitTileAnimation
	dw NULL,  WaitTileAnimation
	dw NULL,  WaitTileAnimation
	dw NULL,  WaitTileAnimation
	dw NULL,  StandingTileFrame8
	dw NULL,  DoneTileAnimation

DoneTileAnimation:
; Reset the animation command loop.
	xor a
	ldh [hTileAnimFrame], a

WaitTileAnimation:
; Do nothing this frame.
	ret

StandingTileFrame8:
; Tick the wTileAnimationTimer, wrapping from 7 to 0.
	ld a, [wTileAnimationTimer]
	inc a
	and %111
	ld [wTileAnimationTimer], a
	ret

ScrollTileRightLeft:
; Scroll right for 4 ticks, then left for 4 ticks.
	ld a, [wTileAnimationTimer]
	inc a
	and %111
	ld [wTileAnimationTimer], a
	and %100
	jr nz, ScrollTileLeft
	jr ScrollTileRight

ScrollTileUpDown: ; unreferenced
; Scroll up for 4 ticks, then down for 4 ticks.
	ld a, [wTileAnimationTimer]
	inc a
	and %111
	ld [wTileAnimationTimer], a
	and %100
	jr nz, ScrollTileDown
	jr ScrollTileUp

ScrollTileLeft:
	ld h, d
	ld l, e
	ld c, LEN_2BPP_TILE / 4
.loop
rept 4
	ld a, [hl]
	rlca
	ld [hli], a
endr
	dec c
	jr nz, .loop
	ret

ScrollTileRight:
	ld h, d
	ld l, e
	ld c, LEN_2BPP_TILE / 4
.loop
rept 4
	ld a, [hl]
	rrca
	ld [hli], a
endr
	dec c
	jr nz, .loop
	ret

ScrollTileUp:
	ld h, d
	ld l, e
	ld d, [hl]
	inc hl
	ld e, [hl]
	ld bc, LEN_2BPP_TILE - 2
	add hl, bc
	ld a, LEN_2BPP_TILE / 4
.loop
	ld c, [hl]
	ld [hl], e
	dec hl
	ld b, [hl]
	ld [hl], d
	dec hl
	ld e, [hl]
	ld [hl], c
	dec hl
	ld d, [hl]
	ld [hl], b
	dec hl
	dec a
	jr nz, .loop
	ret

ScrollTileDown:
	ld h, d
	ld l, e
	ld de, LEN_2BPP_TILE - 2
	push hl
	add hl, de
	ld d, [hl]
	inc hl
	ld e, [hl]
	pop hl
	ld a, LEN_2BPP_TILE / 4
.loop
	ld b, [hl]
	ld [hl], d
	inc hl
	ld c, [hl]
	ld [hl], e
	inc hl
	ld d, [hl]
	ld [hl], b
	inc hl
	ld e, [hl]
	ld [hl], c
	inc hl
	dec a
	jr nz, .loop
	ret

AnimateFountainTile:
; Save the stack pointer in bc for WriteTile to restore
	ld hl, sp+0
	ld b, h
	ld c, l

	ld hl, .FountainTileFramePointers

; A cycle of 8 frames, updating every tick
	ld a, [wTileAnimationTimer]
	and %111

; hl = [.FountainTileFramePointers + a * 2]
	add a
	add l
	ld l, a
	jr nc, .okay
	inc h
.okay
	ld a, [hli]
	ld h, [hl]
	ld l, a

; Write the tile graphic from hl (now sp) to de (now hl)
	ld sp, hl
	ld l, e
	ld h, d
	jmp WriteTile

.FountainTileFramePointers:
	dw .FountainTile1
	dw .FountainTile2
	dw .FountainTile3
	dw .FountainTile4
	dw .FountainTile3
	dw .FountainTile4
	dw .FountainTile5
	dw .FountainTile1

.FountainTile1: INCBIN "gfx/tilesets/fountain/1.2bpp"
.FountainTile2: INCBIN "gfx/tilesets/fountain/2.2bpp"
.FountainTile3: INCBIN "gfx/tilesets/fountain/3.2bpp"
.FountainTile4: INCBIN "gfx/tilesets/fountain/4.2bpp"
.FountainTile5: INCBIN "gfx/tilesets/fountain/5.2bpp"

AnimateWaterTile:
; Save the stack pointer in bc for WriteTile to restore
	ld hl, sp+0
	ld b, h
	ld c, l

; A cycle of 4 frames, updating every other tick
	ld a, [wTileAnimationTimer]
	and %110

; hl = .WaterTileFrames + a * 8
; (a was pre-multiplied by 2 from 'and %110')
	add a
	add a
	add a
	add LOW(.WaterTileFrames)
	ld l, a
	ld a, 0
	adc HIGH(.WaterTileFrames)
	ld h, a

; Write the tile graphic from hl (now sp) to de (now hl)
	ld sp, hl
	ld l, e
	ld h, d
	jmp WriteTile

.WaterTileFrames:
	INCBIN "gfx/tilesets/water/water.2bpp"

AnimateWallWaterTile:
; Save the stack pointer in bc for WriteTile to restore
	ld hl, sp+0
	ld b, h
	ld c, l

; A cycle of 4 frames, updating every other tick
	ld a, [wTileAnimationTimer]
	and %110

; hl = .WaterTileFrames + a * 8
; (a was pre-multiplied by 2 from 'and %110')
	add a
	add a
	add a
	add LOW(.WallWaterTileFrames)
	ld l, a
	ld a, 0
	adc HIGH(.WallWaterTileFrames)
	ld h, a

; Write the tile graphic from hl (now sp) to de (now hl)
	ld sp, hl
	ld l, e
	ld h, d
	jmp WriteTile

.WallWaterTileFrames:
	INCBIN "gfx/tilesets/lab/wall_water.2bpp"
	
AnimateLabWaterTile:
; Save the stack pointer in bc for WriteTile to restore
	ld hl, sp+0
	ld b, h
	ld c, l

; A cycle of 4 frames, updating every other tick
	ld a, [wTileAnimationTimer]
	and %110

; hl = .WaterTileFrames + a * 8
; (a was pre-multiplied by 2 from 'and %110')
	add a
	add a
	add a
	add LOW(.LabWaterTileFrames)
	ld l, a
	ld a, 0
	adc HIGH(.LabWaterTileFrames)
	ld h, a

; Write the tile graphic from hl (now sp) to de (now hl)
	ld sp, hl
	ld l, e
	ld h, d
	jmp WriteTile

.LabWaterTileFrames:
	INCBIN "gfx/tilesets/lab/lab_water.2bpp"
	
AnimateRSEWaterTiles:
AnimateDiveWaterTiles:
AnimateShoreWaterTiles:
AnimateRockTopsTiles:
AnimateRockLeftTiles:
AnimateRockBotLeftTiles:
AnimateRockBotRightTiles:
AnimateRockRightTiles:
; Draw two RSE water tiles for the current frame in VRAM tile at de.
; based on AnimateWhirlpoolTiles, but with 8 frames

; Struct:
;     VRAM address
;    Address of the first tile

; Does two tiles at a time.

; Save sp in bc (see WriteTile).
    ld hl, sp+$0
    ld b, h
    ld c, l

; de = VRAM address
    ld l, e
    ld h, d
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
; Tile address is now at hl.

; Get the tile for this frame.
    ld a, [wTileAnimationTimer]
    and %111 ; 8 frames x2
    swap a  ; * 16 bytes per tile
    sla a   ; * 2 tiles

    add [hl]
    inc hl
    ld h, [hl]
    ld l, a
    adc h
    sub l
    ld h, a

; Stack now points to the desired frame.
    ld sp, hl

    ld l, e
    ld h, d

    jmp WriteTwoTiles
	
RSEWaterFrames: dw vTiles2 tile $16, RSEWaterTiles

RSEWaterTiles: INCBIN "gfx/tilesets/water/rse.2bpp"

DiveWaterFrames: dw vTiles2 tile $26, DiveWaterTiles

DiveWaterTiles: INCBIN "gfx/tilesets/water/dive.2bpp"

ShoreWaterFrames: dw vTiles2 tile $06, ShoreWaterTiles

ShoreWaterTiles: INCBIN "gfx/tilesets/water/shore.2bpp"

RockTopsFrames: dw vTiles2 tile $29, RockTopsTiles

RockTopsTiles: INCBIN "gfx/tilesets/water/rocktops.2bpp"

RockLeftFrames: dw vTiles2 tile $39, RockLeftTiles

RockLeftTiles: INCBIN "gfx/tilesets/water/rockleft.2bpp"

RockBotLeftFrames: dw vTiles2 tile $58, RockBotLeftTiles

RockBotLeftTiles: INCBIN "gfx/tilesets/water/rockbotleft.2bpp"

RockBotRightFrames: dw vTiles2 tile $5A, RockBotRightTiles

RockBotRightTiles: INCBIN "gfx/tilesets/water/rockbotright.2bpp"

RockRightFrames: dw vTiles2 tile $49, RockRightTiles

RockRightTiles: INCBIN "gfx/tilesets/water/rockright.2bpp"

AnimateFlowerTile:
; Save the stack pointer in bc for WriteTile to restore
	ld hl, sp+0
	ld b, h
	ld c, l

; A cycle of 2 frames, updating every other tick
	ld a, [wTileAnimationTimer]
	and %10

; CGB has different tile graphics for flowers
	ld e, a
	ldh a, [hCGB]
	and 1
	add e

; hl = .FlowerTileFrames + a * 16
	swap a
	ld e, a
	ld d, 0
	ld hl, .FlowerTileFrames
	add hl, de

; Write the tile graphic from hl (now sp) to tile $03 (now hl)
	ld sp, hl
	ld hl, vTiles2 tile $03
	jmp WriteTile

.FlowerTileFrames:
	INCBIN "gfx/tilesets/flower/dmg_1.2bpp"
	INCBIN "gfx/tilesets/flower/cgb_1.2bpp"
	INCBIN "gfx/tilesets/flower/dmg_2.2bpp"
	INCBIN "gfx/tilesets/flower/cgb_2.2bpp"

AnimateLavaBubbleTile1:
; Save the stack pointer in bc for WriteTile to restore
	ld hl, sp+0
	ld b, h
	ld c, l

; A cycle of 4 frames, updating every other tick
	ld a, [wTileAnimationTimer]
	and %110

; Offset by 2 frames from AnimateLavaBubbleTile2
	srl a
	inc a
	inc a
	and %011

; hl = LavaBubbleTileFrames + a * 16
	swap a
	ld e, a
	ld d, 0
	ld hl, LavaBubbleTileFrames
	add hl, de

; Write the tile graphic from hl (now sp) to tile $5b (now hl)
	ld sp, hl
	ld hl, vTiles2 tile $5b
	jmp WriteTile

AnimateLavaBubbleTile2:
; Save the stack pointer in bc for WriteTile to restore
	ld hl, sp+0
	ld b, h
	ld c, l

; A cycle of 4 frames, updating every other tick
	ld a, [wTileAnimationTimer]
	and %110

; hl = LavaBubbleTileFrames + a * 8
; (a was pre-multiplied by 2 from 'and %110')
	add a
	add a
	add a
	ld e, a
	ld d, 0
	ld hl, LavaBubbleTileFrames
	add hl, de

; Write the tile graphic from hl (now sp) to tile $38 (now hl)
	ld sp, hl
	ld hl, vTiles2 tile $38
	jmp WriteTile

LavaBubbleTileFrames:
	INCBIN "gfx/tilesets/lava/1.2bpp"
	INCBIN "gfx/tilesets/lava/2.2bpp"
	INCBIN "gfx/tilesets/lava/3.2bpp"
	INCBIN "gfx/tilesets/lava/4.2bpp"

AnimateTowerPillarTile:
; Input de points to the destination in VRAM, then the source tile frames

; Save the stack pointer in bc for WriteTile to restore
	ld hl, sp+0
	ld b, h
	ld c, l

; A cycle of 8 frames, updating every tick
	ld a, [wTileAnimationTimer]
	and %111

; a = [.TowerPillarTileFrameOffsets + a]
	ld hl, .TowerPillarTileFrameOffsets
	add l
	ld l, a
	ld a, 0
	adc h
	ld h, a
	ld a, [hl]

; de = the destination in VRAM
	ld l, e
	ld h, d
	ld e, [hl]
	inc hl
	ld d, [hl]
	inc hl

; hl = the source tile frames + offset a
	add [hl]
	inc hl
	ld h, [hl]
	ld l, a
	ld a, 0
	adc h
	ld h, a

; Write the tile graphic from hl (now sp) to de (now hl)
	ld sp, hl
	ld l, e
	ld h, d
	jmp WriteTile

.TowerPillarTileFrameOffsets:
	db 0 tiles
	db 1 tiles
	db 2 tiles
	db 3 tiles
	db 4 tiles
	db 3 tiles
	db 2 tiles
	db 1 tiles

StandingTileFrame:
; Tick the wTileAnimationTimer.
	ld hl, wTileAnimationTimer
	inc [hl]
	ret

AnimateWhirlpoolTiles: ; fc678
; Update both whirlpool tiles using struct at de.

; Struct:
; 	VRAM address
;	Address of the first tile

; Does two tiles at a time.

; Save sp in bc (see WriteTwoTiles).
	ld hl, sp+$0
	ld b, h
	ld c, l

; de = VRAM address
	ld l, e
	ld h, d
	ld e, [hl]
	inc hl
	ld d, [hl]
	inc hl
; Tile address is now at hl.

; Get the tile for this frame.
	ld a, [wTileAnimationTimer]
	and %11 ; 4 frames x2
	swap a  ; * 16 bytes per tile
	sla a   ; * 2 tiles

	add [hl]
	inc hl
	ld h, [hl]
	ld l, a
	adc h
	sub l
	ld h, a

; Stack now points to the desired frame.
	ld sp, hl

	ld l, e
	ld h, d

	jmp WriteTwoTiles
; fc696

WriteTileFromAnimBuffer:
; Save the stack pointer in bc for WriteTile to restore
	ld hl, sp+0
	ld b, h
	ld c, l

; Write the tile graphic from wTileAnimBuffer (now sp) to de (now hl)
	ld hl, wTileAnimBuffer
	ld sp, hl
	ld h, d
	ld l, e
	jmp WriteTile

ReadTileToAnimBuffer:
; Save the stack pointer in bc for WriteTile to restore
	ld hl, sp+0
	ld b, h
	ld c, l

; Write the tile graphic from de (now sp) to wTileAnimBuffer (now hl)
	ld h, d
	ld l, e
	ld sp, hl
	ld hl, wTileAnimBuffer
	; fallthrough

AnimateWaterPalette:
; Transition between color values 0-2 for color 0 in palette 3.

; Don't update the palette on DMG
	ldh a, [hCGB]
	and a
	ret z

; Don't update a non-standard palette order
	ldh a, [rBGP]
	cp %11100100
	ret nz

; Only update on even ticks
	ld a, [wTileAnimationTimer]
	ld l, a
	and 1 ; odd
	ret nz

; Ready for BGPD input
	ld a, (1 << rBGPI_AUTO_INCREMENT) palette PAL_BG_WATER color 0
	ldh [rBGPI], a

	ldh a, [rSVBK]
	push af
	ld a, BANK(wBGPals1)
	ldh [rSVBK], a

; A cycle of 4 colors (0 1 2 1), updating every other tick
	ld a, l
	and %110
	jr z, .color0
	cp %100
	jr z, .color2

; Copy one color from hl to rBGPI via rBGPD

; color1
	ld hl, wBGPals1 palette PAL_BG_WATER color 1
	ld a, [hli]
	ldh [rBGPD], a
	ld a, [hli]
	ldh [rBGPD], a
	jr .end

.color0
	ld hl, wBGPals1 palette PAL_BG_WATER color 0
	ld a, [hli]
	ldh [rBGPD], a
	ld a, [hli]
	ldh [rBGPD], a
	jr .end

.color2
	ld hl, wBGPals1 palette PAL_BG_WATER color 2
	ld a, [hli]
	ldh [rBGPD], a
	ld a, [hli]
	ldh [rBGPD], a

.end
	pop af
	ldh [rSVBK], a
	ret
	
AnimateSeaweedTile1:
; No parameters.

; Save sp in bc (see WriteTile).
	ld hl, sp+$0
	ld b, h
	ld c, l

; Alternate tile graphic every other frame
	ld a, [wTileAnimationTimer]
	and %100
	srl a
	srl a
	swap a ; << 4 (16 bytes)
	ld e, a
	ld d, 0
	ld hl, SeaweedTile1Frames
	add hl, de
	ld sp, hl

	ld hl, vTiles2 tile $04

	jmp WriteTile

SeaweedTile1Frames:
	INCBIN "gfx/tilesets/seaweed/1.2bpp"
	INCBIN "gfx/tilesets/seaweed/2.2bpp"


AnimateSeaweedTile2:
; No parameters.

; Save sp in bc (see WriteTile).
	ld hl, sp+$0
	ld b, h
	ld c, l

; Alternate tile graphic every other frame
	ld a, [wTileAnimationTimer]
	and %100
	srl a
	srl a
	swap a ; << 4 (16 bytes)
	ld e, a
	ld d, 0
	ld hl, SeaweedTile2Frames
	add hl, de
	ld sp, hl

	ld hl, vTiles2 tile $14

	jmp WriteTile

SeaweedTile2Frames:
	INCBIN "gfx/tilesets/seaweed/2.2bpp"
	INCBIN "gfx/tilesets/seaweed/1.2bpp"


AnimateRSEBubbleTile:
; No parameters.

; Save sp in bc (see WriteTile).
	ld hl, sp+$0
	ld b, h
	ld c, l

; Alternate tile graphic every frame
	ld a, [wTileAnimationTimer]
	and %111
	swap a ; << 4 (16 bytes)
	ld e, a
	ld d, 0
	ld hl, RSEBubbleTileFrames
	add hl, de
	ld sp, hl

	ld hl, vTiles2 tile $03

	jmp WriteTile

RSEBubbleTileFrames:
	INCBIN "gfx/tilesets/rse-bubble/1.2bpp"
	INCBIN "gfx/tilesets/rse-bubble/2.2bpp"
	INCBIN "gfx/tilesets/rse-bubble/3.2bpp"
	INCBIN "gfx/tilesets/rse-bubble/4.2bpp"
	INCBIN "gfx/tilesets/rse-bubble/5.2bpp"
	INCBIN "gfx/tilesets/rse-bubble/5.2bpp"
	INCBIN "gfx/tilesets/rse-bubble/5.2bpp"
	INCBIN "gfx/tilesets/rse-bubble/5.2bpp"


WriteTileFromBuffer: ; fc696
; Write tiledata at wTileAnimBuffer to de.
; wTileAnimBuffer is loaded to sp for WriteTile.

	ld hl, sp+$0
	ld b, h
	ld c, l

	ld hl, wTileAnimBuffer
	ld sp, hl

	ld h, d
	ld l, e
	jr WriteTile
; fc6a2

WriteTileToBuffer: ; fc6a2
; Write tiledata de to wTileAnimBuffer.
; de is loaded to sp for WriteTile.

	ld hl, sp+$0
	ld b, h
	ld c, l

	ld h, d
	ld l, e
	ld sp, hl

	ld hl, wTileAnimBuffer

	; fallthrough

WriteTile: ; fc6ac
; Write one 8x8 tile ($10 bytes) from sp to hl.

; Warning: sp is saved in bc so we can abuse pop.
; sp is restored to address bc. Save sp in bc before calling.

	pop de
	ld [hl], e
	inc hl
	ld [hl], d

_FinishWritingSecondTile:
rept 7
	pop de
	inc hl
	ld [hl], e
	inc hl
	ld [hl], d
endr

; restore sp
	ld h, b
	ld l, c
	ld sp, hl
	ret
; fc6d7
	
WriteTwoTiles:
; Write two 8x8 tile ($20 bytes) from sp to hl.

; Warning: sp is saved in bc so we can abuse pop.
; sp is restored to address bc. Save sp in bc before calling.

	pop de
	ld [hl], e
	inc hl
	ld [hl], d

rept 8
	pop de
	inc hl
	ld [hl], e
	inc hl
	ld [hl], d
endr
	jr _FinishWritingSecondTile

FlickeringCaveEntrancePalette:
; Don't update the palette on DMG
	ldh a, [hCGB]
	and a
	ret z

; Don't update a non-standard palette order
	ldh a, [rBGP]
	cp %11100100
	ret nz

; We only want to be here if we're in a dark cave.
	ld a, [wTimeOfDayPalset]
	cp DARKNESS_PALSET
	ret nz

	ldh a, [rSVBK]
	push af
	ld a, BANK(wBGPals1)
	ldh [rSVBK], a

; Ready for BGPD input
	ld a, (1 << rBGPI_AUTO_INCREMENT) palette PAL_BG_YELLOW color 0
	ldh [rBGPI], a

; A cycle of 2 colors (0 2), updating every other vblank
	ldh a, [hVBlankCounter]
	and %10
	jr nz, .color1

; Copy one color from hl to rBGPI via rBGPD

; color0
	ld hl, wBGPals1 palette PAL_BG_YELLOW color 0
	jr .okay

.color1
	ld hl, wBGPals1 palette PAL_BG_YELLOW color 1

.okay
	ld a, [hli]
	ldh [rBGPD], a
	ld a, [hli]
	ldh [rBGPD], a

	pop af
	ldh [rSVBK], a
	ret

TowerPillarTilePointer1:  dw vTiles2 tile $2d, TowerPillarTile1
TowerPillarTilePointer2:  dw vTiles2 tile $2f, TowerPillarTile2
TowerPillarTilePointer3:  dw vTiles2 tile $3d, TowerPillarTile3
TowerPillarTilePointer4:  dw vTiles2 tile $3f, TowerPillarTile4
TowerPillarTilePointer5:  dw vTiles2 tile $3c, TowerPillarTile5
TowerPillarTilePointer6:  dw vTiles2 tile $2c, TowerPillarTile6
TowerPillarTilePointer7:  dw vTiles2 tile $4d, TowerPillarTile7
TowerPillarTilePointer8:  dw vTiles2 tile $4f, TowerPillarTile8
TowerPillarTilePointer9:  dw vTiles2 tile $5d, TowerPillarTile9
TowerPillarTilePointer10: dw vTiles2 tile $5f, TowerPillarTile10

TowerPillarTile1:  INCBIN "gfx/tilesets/tower-pillar/1.2bpp"
TowerPillarTile2:  INCBIN "gfx/tilesets/tower-pillar/2.2bpp"
TowerPillarTile3:  INCBIN "gfx/tilesets/tower-pillar/3.2bpp"
TowerPillarTile4:  INCBIN "gfx/tilesets/tower-pillar/4.2bpp"
TowerPillarTile5:  INCBIN "gfx/tilesets/tower-pillar/5.2bpp"
TowerPillarTile6:  INCBIN "gfx/tilesets/tower-pillar/6.2bpp"
TowerPillarTile7:  INCBIN "gfx/tilesets/tower-pillar/7.2bpp"
TowerPillarTile8:  INCBIN "gfx/tilesets/tower-pillar/8.2bpp"
TowerPillarTile9:  INCBIN "gfx/tilesets/tower-pillar/9.2bpp"
TowerPillarTile10: INCBIN "gfx/tilesets/tower-pillar/10.2bpp"

WhirlpoolFramesTop: dw vTiles2 tile $14, WhirlpoolTilesTop
WhirlpoolFramesBottom: dw vTiles2 tile $24, WhirlpoolTilesBottom

WhirlpoolTilesTop: INCBIN "gfx/tilesets/whirlpool/top.2bpp"
WhirlpoolTilesBottom: INCBIN "gfx/tilesets/whirlpool/bottom.2bpp"

