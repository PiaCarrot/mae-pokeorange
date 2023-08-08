SECTION "Move Animations 3", ROMX

MoveAnimations3:
;==========================
;	New Moves Start Here
;==========================
	dw BattleAnim_DracoMeteor
	dw BattleAnim_Discharge
	dw BattleAnim_LavaPlume
	dw BattleAnim_LeafStorm
	dw BattleAnim_PowerWhip
	dw BattleAnim_RockWrecker
	dw BattleAnim_CrossPoison
	dw BattleAnim_GunkShot
	dw BattleAnim_IronHead
	dw BattleAnim_MagnetBomb
	dw BattleAnim_StoneEdge
	dw BattleAnim_Captivate
	dw BattleAnim_StealthRock
	dw BattleAnim_GrassKnot
	dw BattleAnim_Chatter
	dw BattleAnim_Judgment
	dw BattleAnim_BugBite
	dw BattleAnim_ChargeBeam
	dw BattleAnim_WoodHammer
	dw BattleAnim_AquaJet
	dw BattleAnim_AttackOrder
	dw BattleAnim_DefendOrder
	dw BattleAnim_HealOrder
	dw BattleAnim_HeadSmash
	dw BattleAnim_DoubleHit
	dw BattleAnim_RoarOfTime
	dw BattleAnim_SpacialRend
	dw BattleAnim_LunarDance
	dw BattleAnim_CrushGrip
	dw BattleAnim_MagmaStorm
	dw BattleAnim_DarkVoid
	dw BattleAnim_SeedFlare
	dw BattleAnim_OminousWind
	dw BattleAnim_ShadowForce
.IndirectEnd::

;==========================
;	New Moves Start Here
;==========================

BattleAnim_DracoMeteor:
	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_DRAGON_PULSE
	anim_setobjpal PAL_BATTLE_OB_RED, PAL_BTLCUSTOM_DRAGON_PULSE
	anim_4gfx ANIM_GFX_METEOR, ANIM_GFX_SMOKE_PUFF, ANIM_GFX_WATER, ANIM_GFX_EXPLOSION
	anim_bgeffect ANIM_BG_CYCLE_MID_OBPALS_GRAY_AND_YELLOW, $0, $8, $0
	anim_bgp $1b
	anim_sound 0, 1, SFX_MORNING_SUN
	anim_obj ANIM_OBJ_RAIN, 88, 0, $2
	anim_wait 8
	anim_obj ANIM_OBJ_RAIN, 88, 0, $2
	anim_wait 8
	anim_obj ANIM_OBJ_RAIN, 88, 0, $2
	anim_wait 32
	anim_clearobjs
	anim_obj ANIM_OBJ_METEOR_SMALL, 88, 0, $2
	anim_wait 8
	anim_obj ANIM_OBJ_METEOR_SMALL, 238, 0, $2
	anim_wait 8
	anim_obj ANIM_OBJ_METEOR_SMALL, 138, 0, $2
	anim_wait 8
	anim_obj ANIM_OBJ_METEOR_SMALL, 188, 0, $2
	anim_wait 8
	anim_obj ANIM_OBJ_METEOR_SMALL, 38, 0, $2
	anim_obj ANIM_OBJ_METEOR_BIG, 80, 0, $2
	anim_wait 12
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $8, $3, $0
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_EXPLOSION2, 142, 64, $0
	anim_wait 8
	anim_obj ANIM_OBJ_METEOR_BIG, 64, 0, $2
	anim_wait 12
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $8, $3, $0
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_EXPLOSION2, 136, 64, $0
	anim_wait 4
	anim_obj ANIM_OBJ_METEOR_BIG, 88, 0, $2
	anim_wait 12
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $60, $3, $0
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_EXPLOSION2, 150, 64, $0
	anim_wait 4
	anim_obj ANIM_OBJ_METEOR_BIG, 68, 0, $2
	anim_wait 12
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_EXPLOSION2, 130, 64, $0
	anim_obj ANIM_OBJ_METEOR_BIG, 76, 0, $2
	anim_wait 12
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_EXPLOSION2, 138, 64, $0
	anim_obj ANIM_OBJ_METEOR_BIG, 88, 0, $2
	anim_wait 12
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_EXPLOSION2, 142, 64, $0
	anim_obj ANIM_OBJ_METEOR_BIG, 68, 0, $2
	anim_wait 12
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_EXPLOSION2, 130, 64, $0
	anim_obj ANIM_OBJ_METEOR_BIG, 76, 0, $2
	anim_wait 12
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_EXPLOSION2, 138, 64, $0
	anim_wait 32
	anim_ret
	
BattleAnim_Discharge:
BattleAnim_LavaPlume:
BattleAnim_LeafStorm:
BattleAnim_PowerWhip:
BattleAnim_RockWrecker:
BattleAnim_CrossPoison:
BattleAnim_GunkShot:
BattleAnim_IronHead:
BattleAnim_MagnetBomb:
BattleAnim_StoneEdge:
BattleAnim_Captivate:
BattleAnim_StealthRock:
BattleAnim_GrassKnot:
BattleAnim_Chatter:
BattleAnim_Judgment:
BattleAnim_BugBite:
BattleAnim_ChargeBeam:
BattleAnim_WoodHammer:
BattleAnim_AquaJet:
BattleAnim_AttackOrder:
BattleAnim_DefendOrder:
BattleAnim_HealOrder:
BattleAnim_HeadSmash:
BattleAnim_DoubleHit:
BattleAnim_RoarOfTime:
BattleAnim_SpacialRend:
BattleAnim_LunarDance:
BattleAnim_CrushGrip:
BattleAnim_MagmaStorm:
BattleAnim_DarkVoid:
BattleAnim_SeedFlare:
BattleAnim_OminousWind:
BattleAnim_ShadowForce:
	anim_ret

;==========================
;	New Moves End Here
;==========================

BattleAnim_TargetObj_1Row_3:
	anim_battlergfx_2row
	anim_bgeffect ANIM_BG_BATTLEROBJ_1ROW, $0, $0, $0
	anim_wait 6
	anim_ret

BattleAnim_TargetObj_2Row_3:
	anim_battlergfx_1row
	anim_bgeffect ANIM_BG_BATTLEROBJ_2ROW, $0, $0, $0
	anim_wait 6
	anim_ret

BattleAnim_ShowMon_0_3:
	anim_wait 1
	anim_bgeffect ANIM_BG_SHOW_MON, $0, $0, $0
	anim_wait 5
	anim_incobj 1
	anim_wait 1
	anim_ret

BattleAnim_ShowMon_1_3:
	anim_wait 1
	anim_bgeffect ANIM_BG_SHOW_MON, $0, $1, $0
	anim_wait 4
	anim_incobj 1
	anim_wait 1
	anim_ret

BattleAnim_UserObj_1Row_3:
	anim_battlergfx_2row
	anim_bgeffect ANIM_BG_BATTLEROBJ_1ROW, $0, $1, $0
	anim_wait 6
	anim_ret

BattleAnim_UserObj_2Row_3:
	anim_battlergfx_1row
	anim_bgeffect ANIM_BG_BATTLEROBJ_2ROW, $0, $1, $0
	anim_wait 4
	anim_ret
