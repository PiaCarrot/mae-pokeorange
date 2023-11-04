CheckForHiddenItems:
; Checks to see if there are hidden items on the screen that have not yet been found.  If it finds one, returns carry.
	call GetMapScriptsBank
	ld [wCurMapScriptBank], a
; Get the coordinate of the bottom right corner of the screen, and load it in wBottomRightYCoord/wBottomRightXCoord.
	ld a, [wXCoord]
	add SCREEN_WIDTH / 4
	ld [wBottomRightXCoord], a
	ld a, [wYCoord]
	add SCREEN_HEIGHT / 4
	ld [wBottomRightYCoord], a
; Get the pointer for the first bg_event in the map...
	ld hl, wCurMapBGEventsPointer
	ld a, [hli]
	ld h, [hl]
	ld l, a
; ... before even checking to see if there are any BG events on this map.
	ld a, [wCurMapBGEventCount]
	and a
	jr z, .nobgeventitems
; For i = 1:wCurMapBGEventCount...
.loop
; Store the counter in wRemainingBGEventCount, and store the bg_event pointer in the stack.
	ld [wRemainingBGEventCount], a
	push hl
; Get the Y coordinate of the BG event.
	call .GetFarByte
	ld e, a
; Is the Y coordinate of the BG event on the screen?  If not, go to the next BG event.
	ld a, [wBottomRightYCoord]
	sub e
	jr c, .next
	cp SCREEN_HEIGHT / 2
	jr nc, .next
; Is the X coordinate of the BG event on the screen?  If not, go to the next BG event.
	call .GetFarByte
	ld d, a
	ld a, [wBottomRightXCoord]
	sub d
	jr c, .next
	cp SCREEN_WIDTH / 2
	jr nc, .next
; Is this BG event a hidden item?  If not, go to the next BG event.
	call .GetFarByte
	cp BGEVENT_ITEM
	jr nz, .next
; Has this item already been found?  If not, set off the Itemfinder.
	ld a, [wCurMapScriptBank]
	call GetFarWord
	ld a, [wCurMapScriptBank]
	call GetFarWord
	ld d, h
	ld e, l
	ld b, CHECK_FLAG
	call EventFlagAction
	ld a, c
	and a
	jr z, .itemnearby

.next
; Restore the bg_event pointer and increment it by the length of a bg_event.
	pop hl
	ld bc, BG_EVENT_SIZE
	add hl, bc
; Restore the BG event counter and decrement it.  If it hits zero, there are no hidden items in range.
	ld a, [wRemainingBGEventCount]
	dec a
	jr nz, .loop

.nobgeventitems
	xor a
	ret

.itemnearby
	pop hl
	scf
	ret

.GetFarByte:
	ld a, [wCurMapScriptBank]
	call GetFarByte
	inc hl
	ret
	
RockItemEncounter:
	ld a, [wMapNumber]
	cp MAP_ALTERING_CAVE
	jr z, .SpecialRockItems
	ld hl, .RockItems
.continue
	call Random
.loop
	sub [hl]
	jr c, .ok
	inc hl
	inc hl
	jr .loop

.ok
	ld a, [hli]
	inc a
	jr z, .done
	ld a, [hli]
.done
	ld [wScriptVar], a
	ret
	
.RockItems:
	db 1, MAX_REVIVE
	db 2, THICK_CLUB
	db 4, NUGGET
	db 6, STAR_PIECE
	db 12, BIG_PEARL
	db 18, ETHER
	db 24, HARD_STONE
	db 24, SOFT_SAND
	db 48, PEARL
	db 64, BRICK_PIECE
	db -1
	
.SpecialRockItems:
	ld hl, .LoadSpecialRockItems
	jr .continue
	
.LoadSpecialRockItems:
	db 1, RARE_CANDY
	db 2, POTION ;SHINY_STONE
	db 4, POTION ;DAWN_STONE
	db 6, POTION ;DUSK_STONE
	db 12, THUNDERSTONE
	db 18, LEAF_STONE
	db 24, WATER_STONE
	db 24, FIRE_STONE
	db 48, SUN_STONE
	db 64, MOON_STONE
	db -1
	
FishItemEncounter:
	ld a, [wFishingRodUsed]
	cp $0
	jr z, .OldRodItems
	cp $1
	jr z, .GoodRodItems
	cp $2
	jr z, .SuperRodItems
.OldRodItems
	ld hl, .OldRodItemTable
	jr .continue
.GoodRodItems
	ld hl, .GoodRodItemTable
	jr .continue
.SuperRodItems
	ld hl, .SuperRodItemTable
.continue
	call Random
.loop
	sub [hl]
	jr c, .ok
	inc hl
	inc hl
	jr .loop

.ok
	ld a, [hli]
	inc a
	jr z, .done
	ld a, [hli]
.done
	ld [wScriptVar], a
	ret
	
.OldRodItemTable:
	db 1, PEARL
	db 1, POTION
	db 2, POKE_BALL
	db 4, POTION
	db 6, STARDUST
	db 8, POKE_BALL
	db 12, EVERSTONE
	db 12, POTION
	db 24, PEARL
	db 48, POKE_BALL
	db -1
	
.GoodRodItemTable:
	db 1, STAR_PIECE
	db 1, SUPER_POTION
	db 2, GREAT_BALL
	db 4, SUPER_POTION
	db 6, STARDUST
	db 8, GREAT_BALL
	db 12, SUPER_POTION
	db 12, STARDUST
	db 24, PEARL
	db 48, POKE_BALL
	db -1
	
.SuperRodItemTable:
	db 1, RARE_CANDY
	db 1, NUGGET
	db 2, ULTRA_BALL
	db 4, STAR_PIECE
	db 6, BIG_PEARL
	db 8, GREAT_BALL
	db 12, DRAGON_SCALE
	db 12, MYSTIC_WATER
	db 24, PEARL
	db 48, POKE_BALL
	db -1
	

TreeItemEncounter:
	ld a, [wMapNumber]
	cp MAP_MIKAN_ISLAND
	jr z, .bambootrees
	ld hl, .TreeItems
	jr .continue
.bambootrees
	ld hl, .BambooTreeItems
.continue
	call Random
.loop
	sub [hl]
	jr c, .ok
	inc hl
	inc hl
	jr .loop

.ok
	ld a, [hli]
	inc a
	jr z, .done
	ld a, [hli]
.done
	ld [wScriptVar], a
	ret
	
.TreeItems:
	db 16, BLK_APRICORN
	db 16, RED_APRICORN
	db 16, BLU_APRICORN
	db 16, YLW_APRICORN
	db 16, GRN_APRICORN
	db 16, WHT_APRICORN
	db 16, PNK_APRICORN
	db -1
	
.BambooTreeItems:
	db 16, ORAN_BERRY ;test
	db 16, ORAN_BERRY
	db 16, ORAN_BERRY
	db 16, ORAN_BERRY
	db 16, ORAN_BERRY
	db 16, ORAN_BERRY
	db 16, ORAN_BERRY
	db -1