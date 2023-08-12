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
	anim_2gfx ANIM_GFX_LIGHTNING, ANIM_GFX_EXPLOSION
	anim_bgeffect ANIM_BG_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $6, $0
	anim_sound 0, 1, SFX_THUNDERSHOCK
	anim_obj ANIM_OBJ_THUNDERSHOCK_CORE, 48, 88, $2
	anim_obj ANIM_OBJ_THUNDERSHOCK_SPARKS, 48, 88, $0
	anim_wait 4
	anim_sound 0, 1, SFX_THUNDERSHOCK
	anim_wait 4
	anim_sound 0, 1, SFX_THUNDERSHOCK
	anim_wait 4
	anim_clearobjs
	anim_sound 0, 1, SFX_THUNDERSHOCK
	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $4, $2
	anim_obj ANIM_OBJ_THUNDERBOLT_CORE, 48, 88, $2
	anim_obj ANIM_OBJ_THUNDERSHOCK_SPARKS, 48, 88, $0
	anim_wait 4
	anim_sound 0, 1, SFX_THUNDERSHOCK
	anim_wait 4
	anim_clearobjs
	anim_sound 0, 1, SFX_THUNDERSHOCK
	anim_obj ANIM_OBJ_THUNDERBOLT_CORE, 48, 88, $2
	anim_obj ANIM_OBJ_THUNDERBOLT_SPARKS, 48, 88, $0
	anim_wait 4
	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $4, $2
	anim_sound 0, 1, SFX_THUNDERSHOCK
	anim_wait 4
	anim_clearobjs
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_ICE
	anim_sound 0, 1, SFX_THUNDERSHOCK
	anim_obj ANIM_OBJ_THUNDERBOLT_CORE, 48, 88, $2
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_SMALL, 48, 88, $0
.loop
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_N,  48, 88, $0
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_NE, 48, 88, $8
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_E,  48, 88, $10
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_SE, 48, 88, $18
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_S,  48, 88, $20
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_SW, 48, 88, $28
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_W,  48, 88, $30
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_NW, 48, 88, $38
	anim_wait 10
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_N,  48, 88, $4
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_NE, 48, 88, $b
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_E,  48, 88, $14
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_SE, 48, 88, $1b
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_S,  48, 88, $24
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_SW, 48, 88, $2b
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_W,  48, 88, $34
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_NW, 48, 88, $3b
	anim_wait 10
	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $4, $2
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_N,  48, 88, $0
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_NE, 48, 88, $8
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_E,  48, 88, $10
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_SE, 48, 88, $18
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_S,  48, 88, $20
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_SW, 48, 88, $28
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_W,  48, 88, $30
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_NW, 48, 88, $38
	anim_wait 10
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_N,  48, 88, $4
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_NE, 48, 88, $b
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_E,  48, 88, $14
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_SE, 48, 88, $1b
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_S,  48, 88, $24
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_SW, 48, 88, $2b
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_W,  48, 88, $34
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_NW, 48, 88, $3b
	anim_wait 10
	anim_loop 2, .loop
	anim_clearobjs
	anim_wait 4
	anim_ret

BattleAnim_LavaPlume:
	anim_setobjpal PAL_BATTLE_OB_RED, PAL_BTLCUSTOM_FIRE
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_LAVA_PLUME
	anim_2gfx ANIM_GFX_FIRE, ANIM_GFX_SMOKE_PUFF_BIG
	anim_sound 6, 2, SFX_EMBER
	anim_bgeffect ANIM_BG_FADE_MON_TO_LIGHT_REPEATING, $0, $1, $40
.loop
	anim_obj ANIM_OBJ_RADIAL_FLAME, 48, 96, $38
	anim_obj ANIM_OBJ_RADIAL_FLAME, 48, 96, $10
	anim_wait 2
	anim_obj ANIM_OBJ_ERUPTION_SMALL_FLAME, 58, 88, $5c
	anim_obj ANIM_OBJ_LAVA_PLUME_SMOKE, 52, 96, $2
	anim_wait 2
	anim_obj ANIM_OBJ_RADIAL_FLAME, 48, 96, $2a
	anim_obj ANIM_OBJ_RADIAL_FLAME, 48, 96, $4
	anim_wait 2
	anim_obj ANIM_OBJ_ERUPTION_SMALL_FLAME, 38, 88, $e8
	anim_obj ANIM_OBJ_LAVA_PLUME_SMOKE, 40, 100, $28
	anim_wait 2
	anim_obj ANIM_OBJ_RADIAL_FLAME, 48, 96, $18
	anim_obj ANIM_OBJ_RADIAL_FLAME, 48, 96, $3b
	anim_wait 2
	anim_obj ANIM_OBJ_ERUPTION_SMALL_FLAME, 38, 88, $d0
	anim_obj ANIM_OBJ_LAVA_PLUME_SMOKE, 48, 84, $38
	anim_wait 2
	anim_obj ANIM_OBJ_RADIAL_FLAME, 48, 96, $1a
	anim_obj ANIM_OBJ_RADIAL_FLAME, 48, 96, $0a
	anim_wait 2
	anim_obj ANIM_OBJ_ERUPTION_SMALL_FLAME, 58, 88, $50
	anim_obj ANIM_OBJ_LAVA_PLUME_SMOKE, 56, 100, $8
	anim_wait 2
	anim_obj ANIM_OBJ_RADIAL_FLAME, 48, 96, $1e
	anim_obj ANIM_OBJ_RADIAL_FLAME, 48, 96, $30
	anim_wait 2
	anim_obj ANIM_OBJ_ERUPTION_SMALL_FLAME, 38, 88, $e8
	anim_obj ANIM_OBJ_LAVA_PLUME_SMOKE, 44, 88, $30
	anim_wait 2
	anim_obj ANIM_OBJ_RADIAL_FLAME, 48, 96, $0
	anim_obj ANIM_OBJ_RADIAL_FLAME, 48, 96, $24
	anim_wait 2
	anim_obj ANIM_OBJ_ERUPTION_SMALL_FLAME, 38, 88, $d0
	anim_obj ANIM_OBJ_LAVA_PLUME_SMOKE, 48, 108, $18
	anim_wait 2
	anim_loop 2, .loop
	anim_wait 20
	anim_ret

BattleAnim_LeafStorm:
	anim_1gfx ANIM_GFX_LEAF_STORM
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_GREEN
	anim_setobjpal PAL_BATTLE_OB_BLUE, PAL_BTLCUSTOM_GREEN
	anim_4gfx ANIM_GFX_VORTEX, ANIM_GFX_LEAF_STORM, ANIM_GFX_WIND_BG, ANIM_GFX_SWIRL
	anim_bgeffect ANIM_BG_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $6, $0
	anim_obj ANIM_OBJ_AGILITY, 8, 24, $10
	anim_obj ANIM_OBJ_AGILITY, 8, 48, $2
	anim_wait 4
	anim_obj ANIM_OBJ_AGILITY, 8, 56, $c
	anim_obj ANIM_OBJ_AGILITY, 8, 80, $4
	anim_obj ANIM_OBJ_AGILITY, 8, 104, $e
	anim_sound 0, 1, SFX_OUTRAGE
.loop
	anim_obj ANIM_OBJ_SWIRL_SHORT, 44, 96, $0
	anim_wait 8
	anim_loop 4, .loop
	anim_obj ANIM_OBJ_VORTEX, 44, 96, $0
	anim_wait 32
	anim_clearobjs
	anim_setobjpal PAL_BATTLE_BG_USER, PAL_BTLCUSTOM_GREEN
	anim_obj ANIM_OBJ_VORTEX, 44, 96, $0
	anim_bgeffect ANIM_BG_ALTERNATE_HUES, $0, $2, $0
	anim_obj ANIM_OBJ_LEAF_STORM_SMALL_LEAF, 44, 80, $18
	anim_wait 2
	anim_obj ANIM_OBJ_LEAF_STORM_BIG_LEAF, 44, 92, $18
	anim_wait 2
	anim_obj ANIM_OBJ_LEAF_STORM_SMALL_LEAF, 44, 112, $18
	anim_wait 2
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $60, $2, $0
.loop2
	anim_sound 0, 0, SFX_RAZOR_WIND
	anim_obj ANIM_OBJ_LEAF_STORM_BIG_LEAF, 44, 96, $18
	anim_wait 2
	anim_obj ANIM_OBJ_LEAF_STORM_SMALL_LEAF, 44, 80, $18
	anim_wait 2
	anim_sound 0, 0, SFX_RAZOR_WIND
	anim_obj ANIM_OBJ_LEAF_STORM_SMALL_LEAF, 44, 112, $18
	anim_wait 2
	anim_obj ANIM_OBJ_LEAF_STORM_SMALL_LEAF, 44, 80, $18
	anim_wait 2
	anim_sound 0, 0, SFX_RAZOR_WIND
	anim_obj ANIM_OBJ_LEAF_STORM_BIG_LEAF, 44, 92, $18
	anim_wait 2
	anim_obj ANIM_OBJ_LEAF_STORM_SMALL_LEAF, 44, 112, $18
	anim_wait 2
	anim_loop 5, .loop2
	anim_incbgeffect ANIM_BG_SHAKE_SCREEN_X
	anim_sound 0, 0, SFX_RAZOR_WIND
	anim_wait 4
	anim_sound 0, 0, SFX_RAZOR_WIND
	anim_wait 32
	anim_ret

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
