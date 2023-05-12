SECTION "Other Evolutions and Attacks", ROMX

OtherEvosAttacksPointers::
	dw SylveonEvosAttacks
.IndirectEnd::

SylveonEvosAttacks:
	db 0 ; no more evolutions
;	dbw 1, DISARM VOICE
	dbw 1, TAIL_WHIP
	dbw 1, TACKLE
;	dbw 1, HELPING_HAND
	dbw 5, SAND_ATTACK
;	dbw 9, FAIRY_WIND
	dbw 13, QUICK_ATTACK
	dbw 17, SWIFT
;	dbw 20, DRAININGKISS
	dbw 25, SKILL_SWAP
;	dbw 29, MISTYTERRAIN
	dbw 33, LIGHT_SCREEN
;	dbw 37, MOONBLAST
	dbw 41, LAST_RESORT
	dbw 45, PSYCH_UP
	db 0 ; no more level-up moves
