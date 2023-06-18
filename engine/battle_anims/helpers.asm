ReinitBattleAnimFrameset:
	ld hl, BATTLEANIMSTRUCT_FRAMESET_ID
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_DURATION
	add hl, bc
	ld [hl], 0
	ld hl, BATTLEANIMSTRUCT_FRAME
	add hl, bc
	ld [hl], -1
	ret

GetBattleAnimOAMPointer:
	ld l, a
	ld h, 0
	add hl, hl
	add hl, hl
	ld de, BattleAnimOAMData
	ld a, [wBattleAnimTempFrameOAMFlags]
	add a, a
	jr nc, .ok
	ld de, BattleAnimOAMData + 4 * NUM_BATTLEANIMOAMSETS
.ok
	add hl, de
	ret

LoadBattleAnimGFX:
    push hl
    ld l, a
    ld h, 0
    add hl, hl
    add hl, hl
    ld de, AnimObjGFX
    add hl, de
    push hl
    ld a, BANK(AnimObjGFX)
    call GetFarWord
    ld b, h
    ld c, l
    pop hl
    inc hl
    inc hl
    ld a, BANK(AnimObjGFX)
    call GetFarWord
    pop de
    push bc
    call DecompressRequest2bpp
    pop bc
    ret
