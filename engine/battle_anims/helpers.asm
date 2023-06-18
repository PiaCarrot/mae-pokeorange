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

GetBattleAnimFrame:
.loop
    ld hl, BATTLEANIMSTRUCT_DURATION
    add hl, bc
    ld a, [hl]
    and a
    jr z, .next_frame
    dec [hl]
    call .GetPointer
    ld a, BANK(BattleAnimFrameData)
    call GetFarByte
    inc hl
    push af
    jr .okay
    
.next_frame
    ld hl, BATTLEANIMSTRUCT_FRAME
    add hl, bc
    inc [hl]
    call .GetPointer
    ld a, BANK(BattleAnimFrameData)
    call GetFarByte
    inc hl
    cp oamrestart_command
    jr z, .restart
    cp oamend_command
    jr z, .repeat_last
    
    push af
    ld a, BANK(BattleAnimFrameData)
    call GetFarByte
    push hl
    and ~(Y_FLIP << 1 | X_FLIP << 1)
    ld hl, BATTLEANIMSTRUCT_DURATION
    add hl, bc
    ld [hl], a
    pop hl
.okay
    ld a, BANK(BattleAnimFrameData)
    call GetFarByte
    and Y_FLIP << 1 | X_FLIP << 1 ; The << 1 is compensated in the "oamframe" macro
    srl a
    ld [wBattleAnimTempFrameOAMFlags], a
    pop af
    ret
    
.repeat_last
    xor a
    ld hl, BATTLEANIMSTRUCT_DURATION
    add hl, bc
    ld [hl], a
    
    ld hl, BATTLEANIMSTRUCT_FRAME
    add hl, bc
    dec [hl]
    dec [hl]
    jr .loop
    
.restart
    xor a
    ld hl, BATTLEANIMSTRUCT_DURATION
    add hl, bc
    ld [hl], a
    
    dec a
    ld hl, BATTLEANIMSTRUCT_FRAME
    add hl, bc
    ld [hl], a
    jr .loop
    
.GetPointer:
    ld hl, BATTLEANIMSTRUCT_FRAMESET_ID
    add hl, bc
    ld e, [hl]
    ld d, 0
    ld hl, BattleAnimFrameData
    add hl, de
    add hl, de
    ld a, BANK(BattleAnimFrameData)
    call GetFarWord
    ld e, l
    ld d, h
    ld hl, BATTLEANIMSTRUCT_FRAME
    add hl, bc
    ld l, [hl]
    ld h, 0
    add hl, hl
    add hl, de
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
