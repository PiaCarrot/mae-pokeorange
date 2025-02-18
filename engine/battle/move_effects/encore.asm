BattleCommand_Encore:
	ld hl, wEnemyMonMoves
	ld de, wEnemyEncoreCount
	ldh a, [hBattleTurn]
	and a
	jr z, .ok
	ld hl, wBattleMonMoves
	ld de, wPlayerEncoreCount
.ok
	ld a, BATTLE_VARS_LAST_MOVE_OPP
	call GetBattleVar
	ld b, a
	push hl
	ld hl, NoEncoreMoves
	call CheckMoveInList
	pop hl
	jr c, .failed

.got_move
	ld a, [hli]
	cp b
	jr nz, .got_move

	ld bc, wBattleMonPP - wBattleMonMoves - 1
	add hl, bc
	ld a, [hl]
	and PP_MASK
	jr z, .failed
	ld a, [wAttackMissed]
	and a
	jr nz, .failed
	ld a, BATTLE_VARS_SUBSTATUS5_OPP
	call GetBattleVarAddr
	bit SUBSTATUS_ENCORED, [hl]
	jr nz, .failed
	set SUBSTATUS_ENCORED, [hl]
	call BattleRandom
	and 3
	add a, 3
	ld [de], a
	call CheckOpponentWentFirst
	jr nz, .finish_move
	ldh a, [hBattleTurn]
	and a
	jr z, .force_last_enemy_move

	push hl
	ld a, [wLastPlayerMove]
	ld b, a
	ld c, 0
	ld hl, wBattleMonMoves
.find_player_move
	ld a, [hli]
	cp b
	jr z, .got_player_move
	inc c
	ld a, c
	cp NUM_MOVES
	jr c, .find_player_move
	pop hl
	res SUBSTATUS_ENCORED, [hl]
	xor a
	ld [de], a

.failed
	jmp PrintDidntAffect2

.got_player_move
	pop hl
	ld a, c
	ld [wCurMoveNum], a
	ld a, b
	ld [wCurPlayerMove], a
	ld de, wPlayerMoveStruct
	call GetMoveData
	jr .finish_move

.force_last_enemy_move
	push hl
	ld a, [wLastEnemyMove]
	ld b, a
	ld c, 0
	ld hl, wEnemyMonMoves
.find_enemy_move
	ld a, [hli]
	cp b
	jr z, .got_enemy_move
	inc c
	ld a, c
	cp NUM_MOVES
	jr c, .find_enemy_move
	pop hl
	res SUBSTATUS_ENCORED, [hl]
	xor a
	ld [de], a
	jr .failed

.got_enemy_move
	pop hl
	ld a, c
	ld [wCurEnemyMoveNum], a
	ld a, b
	ld [wCurEnemyMove], a
	ld de, wEnemyMoveStruct
	call GetMoveData

.finish_move
	call AnimateCurrentMove
	ld hl, GotAnEncoreText
	jmp StdBattleTextbox
	