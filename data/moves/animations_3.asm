SECTION "Move Animations 3", ROMX

MoveAnimations3:
;==========================
;	New Moves Start Here
;==========================
	dw BattleAnim_RockClimb
	dw BattleAnim_Defog
	dw BattleAnim_TrickRoom
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

BattleAnim_RockClimb:
	anim_2gfx ANIM_GFX_ROCKS, ANIM_GFX_HIT
	anim_call BattleAnim_TargetObj_2Row_3
	anim_bgeffect ANIM_BG_BOUNCE_DOWN, $0, $1, $0
	anim_wait 8
.loop
	anim_obj ANIM_OBJ_ROCK_CLIMB, 56, 108, $5c
	anim_obj ANIM_OBJ_ROCK_CLIMB, 40, 108, $e8
	anim_sound 6, 2, SFX_SPARK
	anim_wait 28
	anim_loop 2, .loop
	anim_incbgeffect ANIM_BG_BOUNCE_DOWN
	anim_wait 8
	anim_bgeffect ANIM_BG_BODY_SLAM, $0, $1, $0
	anim_wait 16
	anim_call BattleAnim_ShowMon_0_3
	anim_sound 0, 1, SFX_KARATE_CHOP
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 62, $0
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 62, $5c
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 62, $e8
	anim_wait 3
	anim_sound 0, 1, SFX_KARATE_CHOP
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 54, $0
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 54, $5c
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 54, $e8
	anim_wait 3
	anim_sound 0, 1, SFX_KARATE_CHOP
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 46, $0
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 46, $5c
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 46, $e8
	anim_wait 3
	anim_sound 0, 1, SFX_KARATE_CHOP
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 38, $0
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 38, $5c
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 38, $e8
	anim_wait 3
	anim_sound 0, 1, SFX_KARATE_CHOP
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 30, $0
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 30, $5c
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 30, $e8
	anim_wait 8
	anim_ret

BattleAnim_Defog:
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_VERY_BRIGHT
	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_BRIGHT
	anim_2gfx ANIM_GFX_BIG_WHIP, ANIM_GFX_HAZE
	anim_bgp $90
	anim_sound 0, 1, SFX_MEGA_PUNCH
	anim_obj ANIM_OBJ_MIST_BALL_BG, 8, 24, $10
	anim_obj ANIM_OBJ_MIST_BALL_BG, 8, 48, $2
	anim_obj ANIM_OBJ_MIST_BALL_BG, 8, 88, $8
	anim_wait 4
	anim_obj ANIM_OBJ_MIST_BALL_BG, 8, 32, $6
	anim_obj ANIM_OBJ_MIST_BALL_BG, 8, 56, $c
	anim_obj ANIM_OBJ_MIST_BALL_BG, 8, 80, $4
	anim_obj ANIM_OBJ_MIST_BALL_BG, 8, 104, $e
	anim_wait 64
	anim_sound 0, 1, SFX_RAZOR_WIND
	anim_obj ANIM_OBJ_DRAGON_RUSH, 144, 245, $14
	anim_obj ANIM_OBJ_DRAGON_RUSH_XFLIP, 128, 245, $0c
	anim_wait 16
	anim_bgeffect ANIM_BG_FLASH_WHITE, $0, $4, $2
	anim_clearobjs
	anim_wait 12
	anim_ret

BattleAnim_TrickRoom:
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_PSYCHO_BOOST_2
	anim_1gfx ANIM_GFX_TRICK_ROOM
	anim_bgeffect ANIM_BG_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $6, $0
	anim_bgeffect ANIM_BG_PSYCHIC, $0, $0, $0
	anim_sound 0, 0, SFX_PSYBEAM
.loop
	anim_obj ANIM_OBJ_TRICK_ROOM, 80, 72, $0
	anim_wait 3
	anim_obj ANIM_OBJ_TRICK_ROOM, 156, 36, $0
	anim_wait 3
	anim_obj ANIM_OBJ_TRICK_ROOM, 40, 24, $0
	anim_wait 3
	anim_obj ANIM_OBJ_TRICK_ROOM, 140, 100, $0
	anim_wait 3
	anim_obj ANIM_OBJ_TRICK_ROOM, 164, 64, $0
	anim_wait 3
	anim_obj ANIM_OBJ_TRICK_ROOM, 48, 66, $0
	anim_wait 3
	anim_obj ANIM_OBJ_TRICK_ROOM, 96, 24, $0
	anim_wait 3
	anim_obj ANIM_OBJ_TRICK_ROOM, 60, 96, $0
	anim_wait 3
	anim_obj ANIM_OBJ_TRICK_ROOM, 102, 86, $0
	anim_wait 3
	anim_obj ANIM_OBJ_TRICK_ROOM, 150, 14, $0
	anim_wait 3
	anim_obj ANIM_OBJ_TRICK_ROOM, 26, 80, $0
	anim_wait 3
	anim_obj ANIM_OBJ_TRICK_ROOM, 12, 50, $0
	anim_wait 3
	anim_obj ANIM_OBJ_TRICK_ROOM, 72, 30, $0
	anim_wait 3
	anim_obj ANIM_OBJ_TRICK_ROOM, 110, 62, $0
	anim_wait 3
	anim_obj ANIM_OBJ_TRICK_ROOM, 170, 94, $0
	anim_wait 3
	anim_obj ANIM_OBJ_TRICK_ROOM, 80, 104, $0
	anim_wait 3
	anim_loop 2, .loop
	anim_wait 32
	anim_incbgeffect ANIM_BG_PSYCHIC
	anim_wait 4
	anim_ret

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
	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_GREEN
	anim_2gfx ANIM_GFX_BIG_WHIP, ANIM_GFX_HIT
	anim_sound 0, 0, SFX_CUT
	anim_obj ANIM_OBJ_PUNISHMENT, 96, 245, $0c
	anim_wait 2
	anim_obj ANIM_OBJ_PUNISHMENT, 96, 245, $0c
	anim_wait 12
	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $6, $08
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_Y, $28, $2, $0
	anim_sound 0, 1, SFX_THUNDER
	anim_obj ANIM_OBJ_HIT_BIG, 136, 48, $0
	anim_wait 32
	anim_ret

BattleAnim_RockWrecker:
	anim_3gfx ANIM_GFX_ROCKS, ANIM_GFX_HUGE_ROCK, ANIM_GFX_WIND_BG
	anim_setobjpal PAL_BATTLE_OB_BLUE, PAL_BTLCUSTOM_YELLOW
	anim_obj ANIM_OBJ_AGILITY, 8, 24, $10
	anim_obj ANIM_OBJ_AGILITY, 8, 48, $2
	anim_wait 4
	anim_obj ANIM_OBJ_AGILITY, 8, 56, $c
	anim_obj ANIM_OBJ_AGILITY, 8, 80, $4
	anim_obj ANIM_OBJ_AGILITY, 8, 104, $e
	anim_obj ANIM_OBJ_ROCK_WRECKER_GROW, 48, 96, $0
.loop
	anim_sound 0, 0, SFX_OUTRAGE
	anim_obj ANIM_OBJ_ROCK_WRECKER_CHARGE, 48, 96, $38
	anim_wait 4
	anim_sound 0, 0, SFX_OUTRAGE
	anim_obj ANIM_OBJ_ROCK_WRECKER_CHARGE, 48, 96, $20
	anim_wait 4
	anim_sound 0, 0, SFX_OUTRAGE
	anim_obj ANIM_OBJ_ROCK_WRECKER_CHARGE, 48, 96, $8
	anim_wait 4
	anim_sound 0, 0, SFX_OUTRAGE
	anim_obj ANIM_OBJ_ROCK_WRECKER_CHARGE, 48, 96, $10
	anim_wait 4
	anim_sound 0, 0, SFX_OUTRAGE
	anim_obj ANIM_OBJ_ROCK_WRECKER_CHARGE, 48, 96, $28
	anim_wait 4
	anim_sound 0, 0, SFX_OUTRAGE
	anim_obj ANIM_OBJ_ROCK_WRECKER_CHARGE, 48, 96, $0
	anim_wait 4
	anim_sound 0, 0, SFX_OUTRAGE
	anim_obj ANIM_OBJ_ROCK_WRECKER_CHARGE, 48, 96, $18
	anim_wait 4
	anim_sound 0, 0, SFX_OUTRAGE
	anim_obj ANIM_OBJ_ROCK_WRECKER_CHARGE, 48, 96, $30
	anim_wait 4
	anim_loop 3, .loop
	anim_wait 6
	anim_sound 0, 0, SFX_OUTRAGE
	anim_obj ANIM_OBJ_ROCK_WRECKER, 48, 91, $1
	anim_wait 80
	anim_incobj 31
	anim_sound 0, 1, SFX_RAZOR_WIND
	anim_wait 10
	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $8, $3
	anim_clearobjs
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $60, $4, $10
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $28
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $5c
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $10
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $e8
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $9c
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $d0
	anim_wait 6
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $1c
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $50
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $dc
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $90
	anim_wait 32
	anim_ret

BattleAnim_CrossPoison:
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_PURPLE
	anim_2gfx ANIM_GFX_CUT, ANIM_GFX_POISON
	anim_sound 0, 1, SFX_CUT
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $08, $2, $0
	anim_obj ANIM_OBJ_CUT_LONG_UP_LEFT, 150, 68, $0
	anim_obj ANIM_OBJ_CUT_LONG_UP_RIGHT, 118, 68, $0
	anim_bgeffect ANIM_BG_BLACK_HUES, $0, $8, $0
	anim_wait 24
	anim_jump BattleAnim_Poison_Bubble_branch_short_3

BattleAnim_GunkShot:
	anim_setobjpal PAL_BATTLE_OB_BLUE, PAL_BTLCUSTOM_PURPLE
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_PURPLE
	anim_setobjpal PAL_BATTLE_OB_BROWN, PAL_BTLCUSTOM_PURPLE
	anim_2gfx ANIM_GFX_WIND_BG, ANIM_GFX_POISON
	anim_bgeffect ANIM_BG_BLACK_HUES, $0, $8, $0
	anim_obj ANIM_OBJ_GUNK_SHOT, 48, 96, $0
	anim_obj ANIM_OBJ_AGILITY, 8, 24, $10
	anim_obj ANIM_OBJ_AGILITY, 8, 48, $2
	anim_wait 4
	anim_obj ANIM_OBJ_AGILITY, 8, 56, $c
	anim_obj ANIM_OBJ_AGILITY, 8, 80, $4
	anim_obj ANIM_OBJ_AGILITY, 8, 104, $e
.loop
	anim_sound 0, 1, SFX_TOXIC
	anim_obj ANIM_OBJ_GUNK_SHOT_BUBBLES, 48, 88, $5c
	anim_wait 2
	anim_obj ANIM_OBJ_GUNK_SHOT_BUBBLES, 48, 88, $e8
	anim_wait 2
	anim_obj ANIM_OBJ_GUNK_SHOT_BUBBLES, 48, 88, $d0
	anim_wait 2
	anim_obj ANIM_OBJ_GUNK_SHOT_BUBBLES, 48, 88, $50
	anim_wait 2
	anim_loop 6, .loop
	anim_wait 16
	anim_clearobjs
	anim_bgp $1b
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_PSYCHO_BOOST_2
	anim_setobjpal PAL_BATTLE_OB_BROWN, PAL_BTLCUSTOM_PSYCHO_BOOST_2
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $60, $4, $10
.loop2
	anim_sound 6, 2, SFX_BUBBLEBEAM
	anim_obj ANIM_OBJ_MUD_SHOT, 64, 92, $4
	anim_wait 4
	anim_obj ANIM_OBJ_MUD_SHOT, 64, 92, $4
	anim_wait 4
	anim_sound 6, 2, SFX_BUBBLEBEAM
	anim_obj ANIM_OBJ_INK_SPLASH, 136, 56, $5c
	anim_obj ANIM_OBJ_INK_SPLASH, 136, 56, $e8
	anim_obj ANIM_OBJ_INK_SPLASH, 136, 56, $d0
	anim_obj ANIM_OBJ_INK_SPLASH, 136, 56, $50
	anim_obj ANIM_OBJ_MUD_SHOT, 64, 92, $4
	anim_wait 4
	anim_obj ANIM_OBJ_MUD_SHOT, 64, 92, $4
	anim_wait 4
	anim_loop 4, .loop2
	anim_wait 4
	anim_obj ANIM_OBJ_INK_SPLASH, 136, 56, $5c
	anim_obj ANIM_OBJ_INK_SPLASH, 136, 56, $e8
	anim_obj ANIM_OBJ_INK_SPLASH, 136, 56, $d0
	anim_obj ANIM_OBJ_INK_SPLASH, 136, 56, $50
	anim_wait 32
	anim_ret

BattleAnim_IronHead:
	anim_setobjpal PAL_BATTLE_OB_BROWN, PAL_BTLCUSTOM_BRIGHT
	anim_3gfx ANIM_GFX_ROCKS, ANIM_GFX_HIT, ANIM_GFX_REFLECT
	anim_obp0 $0
	anim_sound 0, 0, SFX_RAGE
	anim_call BattleAnim_TargetObj_1Row_3
	anim_sound 0, 0, SFX_SHINE
	anim_bgeffect ANIM_BG_FADE_MON_TO_BLACK, $0, $1, $40
	anim_wait 8
	anim_obj ANIM_OBJ_HARDEN, 48, 84, $0
	anim_wait 32
	anim_obj ANIM_OBJ_HARDEN, 48, 84, $0
	anim_wait 40
	anim_incbgeffect ANIM_BG_FADE_MON_TO_BLACK
	anim_bgeffect ANIM_BG_TACKLE, $0, $1, $0
	anim_wait 6
	anim_sound 0, 1, SFX_HEADBUTT
	anim_wait 6
	anim_bgeffect ANIM_BG_SHOW_MON, $0, $0, $0
	anim_wait 2
	anim_bgeffect ANIM_BG_SHOW_MON, $0, $1, $0
	anim_clearobjs
	anim_sound 0, 1, SFX_KARATE_CHOP
	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $4, $2
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $14, $2, $0
	anim_obj ANIM_OBJ_HIT_BIG_YFIX, 128, 56, $0
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $28
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $5c
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $10
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $e8
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $9c
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $d0
	anim_wait 6
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $1c
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $50
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $dc
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $90
	anim_wait 32
	anim_call BattleAnim_ShowMon_0_3
	anim_ret

BattleAnim_MagnetBomb:
	anim_setobjpal PAL_BATTLE_OB_BROWN, PAL_BTLCUSTOM_BRIGHT
	anim_setobjpal PAL_BATTLE_OB_RED, PAL_BTLCUSTOM_ICE
	anim_2gfx ANIM_GFX_ROCKS, ANIM_GFX_SMALL_EXPLOSION
	anim_battlergfx_2row
	anim_sound 0, 0, SFX_RAGE
	anim_obj ANIM_OBJ_MAGNET_BOMB_SPINNING, 132, 36, $0
	anim_wait 8
	anim_sound 0, 0, SFX_RAGE
	anim_obj ANIM_OBJ_MAGNET_BOMB_SPINNING, 132, 62, $18
	anim_wait 8
	anim_sound 0, 0, SFX_RAGE
	anim_obj ANIM_OBJ_MAGNET_BOMB_SPINNING, 132, 54, $30
	anim_wait 8
	anim_sound 0, 0, SFX_RAGE
	anim_obj ANIM_OBJ_MAGNET_BOMB_SPINNING, 132, 48, $8
	anim_wait 8
	anim_sound 0, 0, SFX_RAGE
	anim_obj ANIM_OBJ_MAGNET_BOMB_SPINNING, 132, 64, $20
	anim_wait 8
	anim_sound 0, 0, SFX_RAGE
	anim_obj ANIM_OBJ_MAGNET_BOMB_SPINNING, 132, 36, $10
	anim_wait 8
	anim_bgeffect ANIM_BG_BATTLEROBJ_1ROW, $0, $1, $0
	anim_sound 0, 0, SFX_RAGE
	anim_obj ANIM_OBJ_MAGNET_BOMB_SPINNING, 132, 38, $8
	anim_obj ANIM_OBJ_MAGNET_BOMB_IMPACT, 136, 56, $38
	anim_wait 8
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $60, $1, $0
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_SMALL_EXPLOSION, 124, 62, $0
	anim_obj ANIM_OBJ_MAGNET_BOMB_SPINNING, 132, 64, $28
	anim_obj ANIM_OBJ_MAGNET_BOMB_IMPACT, 136, 56, $16
	anim_wait 8
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_SMALL_EXPLOSION, 140, 62, $0
	anim_obj ANIM_OBJ_MAGNET_BOMB_IMPACT, 136, 56, $39
	anim_wait 8
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_SMALL_EXPLOSION, 124, 42, $0
	anim_obj ANIM_OBJ_MAGNET_BOMB_IMPACT, 136, 56, $10
	anim_wait 8
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_SMALL_EXPLOSION, 132, 52, $0
	anim_obj ANIM_OBJ_MAGNET_BOMB_IMPACT, 136, 56, $18
	anim_wait 8
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_SMALL_EXPLOSION, 124, 62, $0
	anim_obj ANIM_OBJ_MAGNET_BOMB_IMPACT, 136, 56, $38
	anim_wait 8
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_SMALL_EXPLOSION, 140, 42, $0
	anim_obj ANIM_OBJ_MAGNET_BOMB_IMPACT, 136, 56, $0
	anim_wait 8
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_SMALL_EXPLOSION, 124, 42, $0
	anim_obj ANIM_OBJ_MAGNET_BOMB_IMPACT, 136, 56, $1d
	anim_wait 8
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_SMALL_EXPLOSION, 132, 52, $0
	anim_wait 32
	anim_call BattleAnim_ShowMon_1_3
	anim_ret

BattleAnim_StoneEdge:
	anim_2gfx ANIM_GFX_HIT, ANIM_GFX_ROCKS
	anim_sound 0, 0, SFX_SPARK
	anim_obj ANIM_OBJ_STONE_EDGE_STILL, 156, 64, $8
	anim_wait 1
	anim_obj ANIM_OBJ_STONE_EDGE_STILL, 152, 64, $8
	anim_wait 1
	anim_sound 0, 0, SFX_SPARK
	anim_obj ANIM_OBJ_STONE_EDGE_STILL, 128, 64, $8
	anim_wait 1
	anim_obj ANIM_OBJ_STONE_EDGE_STILL, 108, 64, $8
	anim_wait 1
	anim_sound 0, 0, SFX_SPARK
	anim_obj ANIM_OBJ_STONE_EDGE_STILL, 112, 64, $8
	anim_wait 1
	anim_obj ANIM_OBJ_STONE_EDGE_STILL, 148, 64, $8
	anim_wait 1
	anim_sound 0, 0, SFX_SPARK
	anim_obj ANIM_OBJ_STONE_EDGE_STILL, 118, 64, $8
	anim_wait 1
	anim_obj ANIM_OBJ_STONE_EDGE_STILL, 136, 64, $8
	anim_wait 1
	anim_sound 0, 0, SFX_SPARK
	anim_obj ANIM_OBJ_STONE_EDGE_STILL, 116, 64, $8
	anim_wait 1
	anim_obj ANIM_OBJ_STONE_EDGE_STILL, 144, 64, $8
	anim_wait 32
	anim_sound 0, 1, SFX_KARATE_CHOP
	anim_obj ANIM_OBJ_STONE_EDGE, 156, 64, $8
	anim_wait 2
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $55, $1, $0
	anim_obj ANIM_OBJ_STONE_EDGE, 152, 64, $8
	anim_wait 2
	anim_sound 0, 1, SFX_KARATE_CHOP
	anim_obj ANIM_OBJ_STONE_EDGE, 128, 64, $8
	anim_obj ANIM_OBJ_HIT_SMALL_YFIX, 120, 40, $0
	anim_wait 2
	anim_obj ANIM_OBJ_STONE_EDGE, 108, 64, $8
	anim_wait 2
	anim_sound 0, 1, SFX_KARATE_CHOP
	anim_obj ANIM_OBJ_STONE_EDGE, 112, 64, $8
	anim_wait 2
	anim_obj ANIM_OBJ_STONE_EDGE, 148, 64, $8
	anim_obj ANIM_OBJ_HIT_SMALL_YFIX, 152, 48, $0
	anim_wait 2
	anim_sound 0, 1, SFX_KARATE_CHOP
	anim_obj ANIM_OBJ_STONE_EDGE, 118, 64, $8
	anim_wait 2
	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $4, $2
	anim_obj ANIM_OBJ_STONE_EDGE, 136, 64, $8
	anim_wait 2
	anim_sound 0, 1, SFX_KARATE_CHOP
	anim_obj ANIM_OBJ_STONE_EDGE, 116, 64, $8
	anim_obj ANIM_OBJ_HIT_SMALL_YFIX, 136, 56, $0
	anim_wait 2
	anim_obj ANIM_OBJ_STONE_EDGE, 144, 64, $8
	anim_wait 32
	anim_ret

BattleAnim_Captivate:
	anim_2gfx ANIM_GFX_OBJECTS, ANIM_GFX_SPEED
	anim_setobjpal PAL_BATTLE_OB_RED, PAL_BTLCUSTOM_PSYCHO_BOOST_2
	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_PSYCHO_BOOST_1
	anim_call BattleAnim_TargetObj_1Row_3
	anim_bgeffect ANIM_BG_FADE_MON_TO_LIGHT_REPEATING, $0, $1, $40
	anim_bgeffect ANIM_BG_WOBBLE_MON, $0, $1, $0
	anim_sound 0, 0, SFX_ATTRACT
	anim_obj ANIM_OBJ_HEART_CAPTIVATE, 64, 96, $0
	anim_wait 16
	anim_obj ANIM_OBJ_HEART_CAPTIVATE, 32, 96, $0
	anim_wait 16
	anim_incbgeffect ANIM_BG_WOBBLE_MON
	anim_call BattleAnim_ShowMon_0_3
	anim_wait 1
	anim_clearobjs
	anim_sound 0, 0, SFX_MORNING_SUN
	anim_obj ANIM_OBJ_PULSING_SPARKLE_YFIX, 32, 72, $0
	anim_wait 5
	anim_obj ANIM_OBJ_PULSING_SPARKLE_YFIX, 64, 104, $0
	anim_wait 5
	anim_obj ANIM_OBJ_PULSING_SPARKLE_YFIX, 32, 104, $0
	anim_wait 5
	anim_obj ANIM_OBJ_PULSING_SPARKLE_YFIX, 64, 72, $0
	anim_wait 5
	anim_obj ANIM_OBJ_PULSING_SPARKLE_YFIX, 48, 88, $0
	anim_wait 12
	anim_ret

BattleAnim_StealthRock:
	anim_1gfx ANIM_GFX_ROCKS
	anim_sound 0, 0, SFX_SPARK
	anim_obj ANIM_OBJ_STEALTH_ROCK, 48, 80, $20
	anim_wait 8
	anim_obj ANIM_OBJ_STEALTH_ROCK, 48, 80, $30
	anim_wait 8
	anim_sound 0, 0, SFX_SPARK
	anim_obj ANIM_OBJ_STEALTH_ROCK, 48, 80, $28
	anim_wait 8
	anim_obj ANIM_OBJ_STEALTH_ROCK, 52, 80, $20
	anim_wait 8
	anim_sound 0, 0, SFX_SPARK
	anim_obj ANIM_OBJ_STEALTH_ROCK, 44, 80, $30
	anim_wait 8
	anim_obj ANIM_OBJ_STEALTH_ROCK, 44, 80, $28
	anim_wait 8
	anim_sound 0, 0, SFX_SPARK
	anim_obj ANIM_OBJ_STEALTH_ROCK, 44, 80, $20
	anim_wait 8
	anim_obj ANIM_OBJ_STEALTH_ROCK, 52, 80, $30
	anim_wait 8
	anim_sound 0, 0, SFX_SPARK
	anim_obj ANIM_OBJ_STEALTH_ROCK, 52, 80, $28
	anim_wait 8
	anim_obj ANIM_OBJ_STEALTH_ROCK, 48, 80, $20
	anim_wait 64
	anim_ret

BattleAnim_GrassKnot:
	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_GREEN
	anim_2gfx ANIM_GFX_GRASS_KNOT, ANIM_GFX_PLANT
	anim_call BattleAnim_UserObj_1Row_3
	anim_obj ANIM_OBJ_GRASS_KNOT, 136, 56, $0
	anim_wait 26
	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $4, $2
	anim_sound 0, 1, SFX_RAZOR_WIND
	anim_obj ANIM_OBJ_RAZOR_LEAF, 144, 40, $90
	anim_wait 2
	anim_obj ANIM_OBJ_RAZOR_LEAF, 144, 40, $50
	anim_bgeffect ANIM_BG_VIBRATE_MON, $0, $0, $0
	anim_wait 40
	anim_bgeffect ANIM_BG_SHOW_MON, $0, $1, $0
	anim_wait 1
	anim_clearobjs
	anim_wait 1
	anim_1gfx ANIM_GFX_HIT
	anim_sound 0, 1, SFX_HEADBUTT
	anim_obj ANIM_OBJ_HIT_BIG_YFIX, 136, 56, $0
	anim_wait 16
	anim_ret

BattleAnim_Chatter:
	anim_2gfx ANIM_GFX_NOISE, ANIM_GFX_MISC_2
	anim_call BattleAnim_TargetObj_1Row_3
	anim_bgeffect ANIM_BG_FLAIL, $0, $1, $0
	anim_cry $0
.loop
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_RED
	anim_obj ANIM_OBJ_SOUND, 64, 76, $0
	anim_obj ANIM_OBJ_SOUND, 64, 88, $1
	anim_obj ANIM_OBJ_SOUND, 64, 100, $2
	anim_obj ANIM_OBJ_CHATTER_NOTE, 56, 84, $36
	anim_wait 9
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_GLOW_YELLOW
	anim_obj ANIM_OBJ_CHATTER_NOTE, 46, 84, $2e
	anim_wait 9
	anim_obj ANIM_OBJ_SOUND, 64, 76, $0
	anim_obj ANIM_OBJ_SOUND, 64, 88, $1
	anim_obj ANIM_OBJ_SOUND, 64, 100, $2
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_WATER
	anim_obj ANIM_OBJ_CHATTER_NOTE, 38, 84, $2a
	anim_wait 9
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_GLOW_YELLOW
	anim_obj ANIM_OBJ_CHATTER_NOTE, 50, 84, $32
	anim_wait 9
	anim_loop 2, .loop
	anim_wait 20
	anim_incbgeffect ANIM_BG_FLAIL
	anim_jump BattleAnim_ShowMon_0_3

BattleAnim_Judgment:
	anim_5gfx ANIM_GFX_GLOW, ANIM_GFX_SPEED, ANIM_GFX_OBJECTS_2, ANIM_GFX_ROCK_POLISH, ANIM_GFX_BIG_GLOW_SPIKED
	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_INVERT_BLACK
	anim_bgeffect ANIM_BG_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $6, $0
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $60, $2, $0
	anim_obj ANIM_OBJ_TINY_GLOW_CLEAR, 136, 48, $0
	anim_sound 0, 0, SFX_FORESIGHT
.loop
	anim_obj ANIM_OBJ_ENERGY_ORB, 136, 48, $38
	anim_obj ANIM_OBJ_WIND_SPARKLE_SHORT, 136, 48, $0
	anim_wait 4
	anim_obj ANIM_OBJ_ENERGY_ORB, 136, 48, $20
	anim_obj ANIM_OBJ_WIND_SPARKLE_SHORT, 136, 48, $28
	anim_wait 4
	anim_obj ANIM_OBJ_ENERGY_ORB, 136, 48, $8
	anim_obj ANIM_OBJ_WIND_SPARKLE_SHORT, 136, 48, $30
	anim_wait 4
	anim_obj ANIM_OBJ_ENERGY_ORB, 136, 48, $10
	anim_obj ANIM_OBJ_WIND_SPARKLE_SHORT, 136, 48, $38
	anim_wait 4
	anim_obj ANIM_OBJ_ENERGY_ORB, 136, 48, $28
	anim_obj ANIM_OBJ_WIND_SPARKLE_SHORT, 136, 48, $20
	anim_wait 4
	anim_obj ANIM_OBJ_ENERGY_ORB, 136, 48, $0
	anim_obj ANIM_OBJ_WIND_SPARKLE_SHORT, 136, 48, $8
	anim_wait 4
	anim_obj ANIM_OBJ_ENERGY_ORB, 136, 48, $18
	anim_obj ANIM_OBJ_WIND_SPARKLE_SHORT, 136, 48, $4
	anim_wait 4
	anim_obj ANIM_OBJ_ENERGY_ORB, 136, 48, $30
	anim_obj ANIM_OBJ_WIND_SPARKLE_SHORT, 136, 48, $18
	anim_wait 4
	anim_loop 2, .loop
	anim_clearobjs
	anim_obj ANIM_OBJ_SMALL_GLOW, 136, 48, $0
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $90, $4, $0
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_BRIGHT
	anim_setobjpal PAL_BATTLE_BG_USER, PAL_BTLCUSTOM_VERY_BRIGHT
	anim_setobjpal PAL_BATTLE_BG_TARGET, PAL_BTLCUSTOM_VERY_BRIGHT
	anim_bgeffect ANIM_BG_ALTERNATE_HUES, $0, $6, $0
.loop2
	anim_sound 16, 2, SFX_THUNDER
	anim_obj ANIM_OBJ_JUDGMENT_STREAK_45DEG_R, 154, 30, $0
	anim_obj ANIM_OBJ_JUDGMENT_SW, 136, 48, $18
	anim_wait 3
	anim_sound 16, 2, SFX_THUNDER
	anim_obj ANIM_OBJ_JUDGMENT_STREAK_85DEG_L_YFLIP, 130, 64, $0
	anim_obj ANIM_OBJ_JUDGMENT_E, 136, 48, $0
	anim_wait 3
	anim_sound 16, 2, SFX_THUNDER
	anim_obj ANIM_OBJ_JUDGMENT_STREAK_5DEG_R_YFLIP, 164, 56, $0
	anim_obj ANIM_OBJ_JUDGMENT_NW, 136, 48, $28
	anim_wait 3
	anim_sound 16, 2, SFX_THUNDER
	anim_obj ANIM_OBJ_JUDGMENT_STREAK_45DEG_L, 118, 30, $0
	anim_obj ANIM_OBJ_JUDGMENT_N, 136, 48, $30
	anim_wait 3
	anim_sound 16, 2, SFX_THUNDER
	anim_obj ANIM_OBJ_JUDGMENT_STREAK_85DEG_R_YFLIP, 142, 64, $0
	anim_obj ANIM_OBJ_JUDGMENT_SE, 136, 48, $8
	anim_wait 3
	anim_sound 16, 2, SFX_THUNDER
	anim_obj ANIM_OBJ_JUDGMENT_STREAK_45DEG_L_YFLIP, 118, 66, $0
	anim_obj ANIM_OBJ_JUDGMENT_W, 136, 48, $20
	anim_wait 3
	anim_sound 16, 2, SFX_THUNDER
	anim_obj ANIM_OBJ_JUDGMENT_STREAK_85DEG_L, 130, 32, $0
	anim_obj ANIM_OBJ_JUDGMENT_NE, 136, 48, $38
	anim_wait 3
	anim_sound 16, 2, SFX_THUNDER
	anim_obj ANIM_OBJ_JUDGMENT_STREAK_45DEG_R_YFLIP, 154, 66, $0
	anim_obj ANIM_OBJ_JUDGMENT_S, 136, 48, $10
	anim_wait 3
	anim_loop 3, .loop2
	anim_clearobjs
	anim_obj ANIM_OBJ_BIG_GLOW_SPIKED, 136, 48, $0
	anim_obj ANIM_OBJ_JUDGMENT_STREAK_45DEG_R, 154, 30, $0
	anim_wait 3
	anim_obj ANIM_OBJ_JUDGMENT_STREAK_85DEG_L_YFLIP, 130, 64, $0
	anim_wait 3
	anim_obj ANIM_OBJ_JUDGMENT_STREAK_5DEG_R_YFLIP, 164, 56, $0
	anim_wait 3
	anim_obj ANIM_OBJ_JUDGMENT_STREAK_45DEG_L, 118, 30, $0
	anim_wait 3
	anim_obj ANIM_OBJ_JUDGMENT_STREAK_85DEG_R_YFLIP, 142, 64, $0
	anim_wait 3
	anim_obj ANIM_OBJ_JUDGMENT_STREAK_45DEG_L_YFLIP, 118, 66, $0
	anim_wait 3
	anim_obj ANIM_OBJ_JUDGMENT_STREAK_85DEG_L, 130, 32, $0
	anim_wait 3
	anim_obj ANIM_OBJ_JUDGMENT_STREAK_45DEG_R_YFLIP, 154, 66, $0
	anim_wait 11
	anim_ret

BattleAnim_BugBite:
	anim_2gfx ANIM_GFX_ROCKS, ANIM_GFX_HIT
	anim_call BattleAnim_UserObj_1Row_3
.loop
	anim_bgeffect ANIM_BG_VIBRATE_MON, $0, $0, $0
	anim_sound 0, 1, SFX_BITE
	anim_obj ANIM_OBJ_HIT_SMALL_YFIX, 140, 44, $0
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 56, $5c
	anim_wait 4
	anim_sound 0, 1, SFX_BITE
	anim_obj ANIM_OBJ_HIT_SMALL_YFIX, 124, 60, $0
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 56, $d0
	anim_wait 4
	anim_sound 0, 1, SFX_BITE
	anim_obj ANIM_OBJ_HIT_SMALL_YFIX, 140, 60, $0
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 56, $e8
	anim_wait 4
	anim_sound 0, 1, SFX_BITE
	anim_obj ANIM_OBJ_HIT_SMALL_YFIX, 124, 44, $0
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 56, $50
	anim_wait 4
	anim_loop 3, .loop
	anim_wait 32
	anim_call BattleAnim_ShowMon_1_3
	anim_ret

BattleAnim_ChargeBeam:
	anim_2gfx ANIM_GFX_LIGHTNING, ANIM_GFX_CHARGE
	anim_bgeffect ANIM_BG_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $4, $0
	anim_sound 0, 0, SFX_ZAP_CANNON
	anim_obj ANIM_OBJ_ENERGY_ORB, 48, 96, $38
	anim_wait 4
	anim_obj ANIM_OBJ_ENERGY_ORB, 48, 96, $20
	anim_wait 4
	anim_sound 0, 0, SFX_ZAP_CANNON
	anim_obj ANIM_OBJ_ENERGY_ORB, 48, 96, $8
	anim_wait 4
	anim_obj ANIM_OBJ_ENERGY_ORB, 48, 96, $10
	anim_wait 4
	anim_sound 0, 0, SFX_ZAP_CANNON
	anim_obj ANIM_OBJ_ENERGY_ORB, 48, 96, $28
	anim_wait 4
	anim_obj ANIM_OBJ_ENERGY_ORB, 48, 96, $0
	anim_wait 4
	anim_sound 0, 0, SFX_ZAP_CANNON
	anim_obj ANIM_OBJ_ENERGY_ORB, 48, 96, $18
	anim_obj ANIM_OBJ_THUNDERSHOCK_SPARKS, 48, 96, $0
	anim_wait 4
	anim_obj ANIM_OBJ_ENERGY_ORB, 48, 96, $30
	anim_wait 64
	anim_clearobjs
	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $4, $2
	anim_sound 0, 0, SFX_RAGE
	anim_obj ANIM_OBJ_CHARGE_BEAM, 64, 96, $18
	anim_wait 2
	anim_sound 0, 0, SFX_RAGE
	anim_obj ANIM_OBJ_CHARGE_BEAM, 64, 94, $18
	anim_wait 2
	anim_sound 0, 0, SFX_RAGE
	anim_obj ANIM_OBJ_CHARGE_BEAM, 64, 98, $18
	anim_wait 2
.loop2
	anim_sound 0, 0, SFX_RAGE
	anim_obj ANIM_OBJ_CHARGE_BEAM, 64, 94, $18
	anim_wait 2
	anim_sound 0, 0, SFX_RAGE
	anim_obj ANIM_OBJ_CHARGE_BEAM, 64, 96, $18
	anim_wait 2
	anim_sound 0, 0, SFX_RAGE
	anim_obj ANIM_OBJ_CHARGE_BEAM, 64, 98, $18
	anim_wait 2
	anim_sound 0, 0, SFX_RAGE
	anim_obj ANIM_OBJ_CHARGE_BEAM, 64, 92, $18
	anim_wait 2
	anim_loop 6, .loop2
	anim_wait 32
	anim_ret

BattleAnim_WoodHammer:
	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_GREEN
	anim_3gfx ANIM_GFX_WOOD_HAMMER, ANIM_GFX_PLANT, ANIM_GFX_HIT
	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $4, $2
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_HIT_BIG_YFIX, 136, 48, $0
	anim_wait 1
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $40, $4, $10
	anim_obj ANIM_OBJ_RAZOR_LEAF, 136, 40, $1c
	anim_obj ANIM_OBJ_WOOD_HAMMER, 136, 56, $5c
	anim_wait 1
	anim_obj ANIM_OBJ_RAZOR_LEAF, 136, 40, $50
	anim_obj ANIM_OBJ_WOOD_HAMMER, 136, 56, $e8
	anim_wait 1
	anim_obj ANIM_OBJ_RAZOR_LEAF, 136, 40, $dc
	anim_obj ANIM_OBJ_WOOD_HAMMER, 136, 56, $d0
	anim_wait 1
	anim_obj ANIM_OBJ_RAZOR_LEAF, 136, 40, $90
	anim_obj ANIM_OBJ_WOOD_HAMMER, 136, 56, $50
	anim_wait 4
	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $4, $2
	anim_wait 60
	anim_ret

BattleAnim_AquaJet:
	anim_setobjpal PAL_BATTLE_OB_BLUE, PAL_BTLCUSTOM_BUBBLE
	anim_1gfx ANIM_GFX_SPEED
	anim_sound 0, 0, SFX_MENU
	anim_bgeffect ANIM_BG_HIDE_MON, $0, $1, $0
	anim_obj ANIM_OBJ_SPEED_LINE, 24, 88, $2
	anim_obj ANIM_OBJ_SPEED_LINE, 32, 88, $1
	anim_obj ANIM_OBJ_SPEED_LINE, 40, 88, $0
	anim_obj ANIM_OBJ_SPEED_LINE, 48, 88, $80
	anim_obj ANIM_OBJ_SPEED_LINE, 56, 88, $81
	anim_obj ANIM_OBJ_SPEED_LINE, 64, 88, $82
	anim_wait 6
	anim_3gfx ANIM_GFX_HIT, ANIM_GFX_AQUA_JET, ANIM_GFX_BUBBLE
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_BUBBLE
	anim_sound 0, 1, SFX_SURF
	anim_wait 1
	anim_obj ANIM_OBJ_AQUA_JET, 72, 89, $0
	anim_obj ANIM_OBJ_AQUA_JET_BUBBLE, 72, 89, $d0
	anim_obj ANIM_OBJ_AQUA_JET_BUBBLE, 72, 89, $50
	anim_wait 6
	anim_obj ANIM_OBJ_AQUA_JET, 92, 78, $0
	anim_obj ANIM_OBJ_AQUA_JET_BUBBLE, 92, 78, $d0
	anim_obj ANIM_OBJ_AQUA_JET_BUBBLE, 92, 78, $50
	anim_wait 6
	anim_obj ANIM_OBJ_AQUA_JET, 112, 67, $0
	anim_obj ANIM_OBJ_AQUA_JET_BUBBLE, 112, 67, $d0
	anim_obj ANIM_OBJ_AQUA_JET_BUBBLE, 112, 67, $50
	anim_wait 6
	anim_obj ANIM_OBJ_AQUA_JET, 132, 56, $0
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 56, $0
	anim_obj ANIM_OBJ_BUBBLE_SPLASH, 140, 56, $d0
	anim_obj ANIM_OBJ_BUBBLE_SPLASH, 140, 56, $50
	anim_wait 3
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 48, $0
	anim_wait 3
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 40, $0
	anim_obj ANIM_OBJ_BUBBLE_SPLASH, 140, 40, $d0
	anim_obj ANIM_OBJ_BUBBLE_SPLASH, 140, 40, $50
	anim_wait 3
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 32, $0
	anim_wait 3
	anim_sound 0, 1, SFX_WATER_GUN
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 24, $0
	anim_obj ANIM_OBJ_BUBBLE_SPLASH, 140, 24, $d0
	anim_obj ANIM_OBJ_BUBBLE_SPLASH, 140, 24, $50
	anim_wait 8
	anim_bgeffect ANIM_BG_SHOW_MON, $0, $1, $0
	anim_wait 16
	anim_ret

BattleAnim_AttackOrder:
	anim_2gfx ANIM_GFX_OBJECTS_3, ANIM_GFX_HIT
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_LIME
	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_BEE
	anim_call BattleAnim_UserObj_1Row_3
.loop
	anim_obj ANIM_OBJ_BEE_SW, 136, 48, $38
	anim_wait 4
	anim_bgeffect ANIM_BG_VIBRATE_MON, $0, $0, $0
	anim_sound 0, 1, SFX_POISON_STING
	anim_obj ANIM_OBJ_HIT_SMALL_YFIX, 144, 40, $0
	anim_obj ANIM_OBJ_BEE_E, 136, 48, $20
	anim_wait 4
	anim_sound 0, 1, SFX_POISON_STING
	anim_obj ANIM_OBJ_HIT_SMALL_YFIX, 128, 56, $0
	anim_obj ANIM_OBJ_BEE_SE, 136, 48, $8
	anim_wait 4
	anim_sound 0, 1, SFX_POISON_STING
	anim_obj ANIM_OBJ_HIT_SMALL_YFIX, 144, 56, $0
	anim_obj ANIM_OBJ_BEE_N, 136, 48, $10
	anim_wait 4
	anim_sound 0, 1, SFX_POISON_STING
	anim_obj ANIM_OBJ_HIT_SMALL_YFIX, 128, 40, $0
	anim_obj ANIM_OBJ_BEE_SE, 136, 48, $28
	anim_wait 4
	anim_sound 0, 1, SFX_POISON_STING
	anim_obj ANIM_OBJ_HIT_SMALL_YFIX, 136, 48, $0
	anim_obj ANIM_OBJ_BEE_W, 136, 48, $0
	anim_wait 4
	anim_sound 0, 1, SFX_POISON_STING
	anim_obj ANIM_OBJ_HIT_SMALL_YFIX, 144, 56, $0
	anim_obj ANIM_OBJ_BEE_NE, 136, 48, $18
	anim_wait 4
	anim_sound 0, 1, SFX_POISON_STING
	anim_obj ANIM_OBJ_HIT_SMALL_YFIX, 128, 56, $0
	anim_obj ANIM_OBJ_BEE_S, 136, 48, $30
	anim_wait 4
	anim_sound 0, 1, SFX_POISON_STING
	anim_obj ANIM_OBJ_HIT_SMALL_YFIX, 136, 48, $0
	anim_loop 3, .loop
	anim_bgeffect ANIM_BG_SHOW_MON, $0, $1, $0
	anim_wait 8
	anim_clearobjs
	anim_wait 1
	anim_wait 23
	anim_ret

BattleAnim_DefendOrder:
	anim_3gfx ANIM_GFX_BIG_GLOW_CLEAR, ANIM_GFX_OBJECTS_3, ANIM_GFX_SMOKE
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_PEACH
	anim_call BattleAnim_Self_Bees_branch
	anim_wait 20
	anim_sound 0, 0, SFX_ATTRACT
	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_SIGNAL_BEAM_RED
	anim_obj ANIM_OBJ_BIG_GLOW_CLEAR, 48, 96, $0
	anim_wait 6
	anim_clearobjs
	anim_wait 14
	anim_incbgeffect ANIM_BG_FADE_MON_TO_LIGHT_REPEATING
	anim_ret

BattleAnim_HealOrder:
	anim_3gfx ANIM_GFX_SHINE, ANIM_GFX_OBJECTS_3, ANIM_GFX_SMOKE
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_REFRESH
	anim_call BattleAnim_Self_Bees_branch
	anim_wait 20
	anim_bgeffect ANIM_BG_CYCLE_MID_OBPALS_GRAY_AND_YELLOW, $0, $0, $0
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_GRAY
	anim_sound 0, 0, SFX_METRONOME
	anim_obj ANIM_OBJ_GLIMMER, 44, 64, $0
	anim_wait 5
	anim_obj ANIM_OBJ_GLIMMER, 24, 96, $0
	anim_wait 5
	anim_obj ANIM_OBJ_GLIMMER, 56, 104, $0
	anim_wait 21
	anim_ret
	anim_wait 20
	anim_incbgeffect ANIM_BG_FADE_MON_TO_LIGHT_REPEATING
	anim_ret

BattleAnim_Self_Bees_branch:
	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_BEE
	anim_bgeffect ANIM_BG_FADE_MON_TO_LIGHT_REPEATING, $0, $1, $40
.loop
	anim_obj ANIM_OBJ_BEE_SW, 48, 96, $38
	anim_wait 4
	anim_sound 0, 0, SFX_SWORDS_DANCE
	anim_obj ANIM_OBJ_BEE_E, 48, 96, $20
	anim_wait 4
	anim_obj ANIM_OBJ_BEE_POOF, 56, 88, $0
	anim_obj ANIM_OBJ_BEE_SE, 48, 96, $8
	anim_wait 4
	anim_obj ANIM_OBJ_BEE_N, 48, 96, $10
	anim_wait 4
	anim_obj ANIM_OBJ_BEE_POOF, 40, 104, $0
	anim_obj ANIM_OBJ_BEE_SE, 48, 96, $28
	anim_wait 4
	anim_obj ANIM_OBJ_BEE_W, 48, 96, $0
	anim_wait 4
	anim_obj ANIM_OBJ_BEE_POOF, 56, 104, $0
	anim_obj ANIM_OBJ_BEE_NE, 48, 96, $18
	anim_wait 4
	anim_obj ANIM_OBJ_BEE_S, 48, 96, $30
	anim_wait 4
	anim_obj ANIM_OBJ_BEE_POOF, 40, 88, $0
	anim_loop 3, .loop
	anim_ret

BattleAnim_HeadSmash:
	anim_setobjpal PAL_BATTLE_OB_BROWN, PAL_BTLCUSTOM_GRAY
	anim_2gfx ANIM_GFX_HIT, ANIM_GFX_ROCKS
	anim_battlergfx_2row
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $14, $2, $0
	anim_wait 32
	anim_bgeffect ANIM_BG_BATTLEROBJ_1ROW, $0, $0, $0
	anim_wait 6
	anim_sound 0, 1, SFX_HEADBUTT
	anim_bgeffect ANIM_BG_TACKLE, $0, $1, $0
	anim_wait 12
	anim_bgeffect ANIM_BG_SHOW_MON, $0, $0, $0
	anim_wait 1
	anim_bgeffect ANIM_BG_SHOW_MON, $0, $1, $0
	anim_clearobjs
	anim_wait 1
	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $4, $10
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $60, $4, $10
	anim_obj ANIM_OBJ_HIT_BIG_YFIX, 128, 56, $0
	anim_obj ANIM_OBJ_ROCK_SMASH, 138, 64, $28
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $5c
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $10
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $e8
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $9c
	anim_wait 6
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_HIT_BIG_YFIX, 128, 56, $0
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $d0
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $1c
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $50
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $dc
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $90
	anim_wait 32
	anim_ret

BattleAnim_DoubleHit:
	anim_1gfx ANIM_GFX_HIT
	anim_sound 0, 1, SFX_KARATE_CHOP
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $6, $1, $0
	anim_obj ANIM_OBJ_HIT_BIG_YFIX, 148, 48, $0
	anim_wait 24
	anim_sound 0, 1, SFX_KARATE_CHOP
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $6, $1, $0
	anim_obj ANIM_OBJ_HIT_BIG_YFIX, 116, 48, $0
	anim_wait 32
	anim_ret

BattleAnim_RoarOfTime:
	anim_3gfx ANIM_GFX_ROAR_OF_TIME, ANIM_GFX_CHARGE, ANIM_GFX_SMALL_EXPLOSION
	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_VERY_BRIGHT
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_ICE
	anim_setobjpal PAL_BATTLE_OB_RED, PAL_BTLCUSTOM_ROAR_OF_TIME
	anim_bgeffect ANIM_BG_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $4, $0
	anim_bgp $f8
	anim_sound 0, 1, SFX_SUPERSONIC
.loop
	anim_obj ANIM_OBJ_ENERGY_ORB_TINY, 48, 96, $38
	anim_wait 1
	anim_obj ANIM_OBJ_ENERGY_ORB_TINY, 48, 96, $20
	anim_wait 1
	anim_obj ANIM_OBJ_ENERGY_ORB_TINY, 48, 96, $8
	anim_wait 1
	anim_obj ANIM_OBJ_ENERGY_ORB_TINY, 48, 96, $10
	anim_wait 1
	anim_obj ANIM_OBJ_ENERGY_ORB_TINY, 48, 96, $28
	anim_wait 1
	anim_obj ANIM_OBJ_ENERGY_ORB_TINY, 48, 96, $0
	anim_wait 1
	anim_obj ANIM_OBJ_ENERGY_ORB_TINY, 48, 96, $18
	anim_wait 1
	anim_obj ANIM_OBJ_ENERGY_ORB_TINY, 48, 96, $30
	anim_wait 1
	anim_loop 4, .loop
	anim_wait 32
	anim_bgp $1b
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $50, $2, $0
	anim_sound 0, 1, SFX_ROAR_OF_TIME
.loop2
	anim_obj ANIM_OBJ_ROT_E,  48, 88, $0
	anim_obj ANIM_OBJ_ROT_SE, 48, 88, $8
	anim_obj ANIM_OBJ_ROT_S,  48, 88, $10
	anim_obj ANIM_OBJ_ROT_SW, 48, 88, $18
	anim_obj ANIM_OBJ_ROT_W,  48, 88, $20
	anim_obj ANIM_OBJ_ROT_NW, 48, 88, $28
	anim_obj ANIM_OBJ_ROT_N,  48, 88, $30
	anim_obj ANIM_OBJ_ROT_NE, 48, 88, $38
	anim_wait 10
	anim_loop 6, .loop2
	anim_bgp $90
	anim_setobjpal PAL_BATTLE_BG_TARGET, PAL_BTLCUSTOM_VERY_BRIGHT
	anim_setbgpal PAL_BATTLE_BG_USER, PAL_BTLCUSTOM_VERY_BRIGHT
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $60, $4, $10
	anim_obj ANIM_OBJ_ROT_CLOCK, 132, 48, $0
.loop3
	anim_obj ANIM_OBJ_SMALL_EXPLOSION_YFIX, 144, 64, $0
	anim_wait 2
	anim_obj ANIM_OBJ_SMALL_EXPLOSION_YFIX, 104, 72, $0
	anim_wait 2
	anim_obj ANIM_OBJ_SMALL_EXPLOSION_YFIX, 120, 68, $0
	anim_wait 2
	anim_obj ANIM_OBJ_SMALL_EXPLOSION_YFIX, 144, 64, $0
	anim_wait 2
	anim_obj ANIM_OBJ_SMALL_EXPLOSION_YFIX, 160, 72, $0
	anim_wait 2
	anim_obj ANIM_OBJ_SMALL_EXPLOSION_YFIX, 112, 68, $0
	anim_wait 2
	anim_obj ANIM_OBJ_SMALL_EXPLOSION_YFIX, 136, 64, $0
	anim_wait 2
	anim_obj ANIM_OBJ_SMALL_EXPLOSION_YFIX, 128, 72, $0
	anim_wait 2
	anim_loop 3, .loop3
	anim_wait 48
	anim_sound 0, 1, SFX_RAGE
	anim_bgeffect ANIM_BG_FLASH_WHITE, $0, $4, $2
	anim_bgeffect ANIM_BG_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $20, $0
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_BROWN
	anim_wait 32
	anim_ret

BattleAnim_SpacialRend:
	anim_2gfx ANIM_GFX_GLOW, ANIM_GFX_SPACIAL_REND
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_PSYCHO_BOOST_2
	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_DARK_PULSE
	anim_bgeffect ANIM_BG_CYCLE_MID_OBPALS_GRAY_AND_YELLOW, $0, $8, $0
	anim_bgp $90
	anim_sound 0, 1, SFX_SUPERSONIC
	anim_obj ANIM_OBJ_SR_E,  48, 96, $0
	anim_obj ANIM_OBJ_SR_SE, 48, 96, $8
	anim_obj ANIM_OBJ_SR_S,  48, 96, $10
	anim_obj ANIM_OBJ_SR_SW, 48, 96, $18
	anim_obj ANIM_OBJ_SR_W,  48, 96, $20
	anim_obj ANIM_OBJ_SR_NW, 48, 96, $28
	anim_obj ANIM_OBJ_SR_N,  48, 96, $30
	anim_obj ANIM_OBJ_SR_NE, 48, 96, $38
	anim_wait 8
.loop
	anim_obj ANIM_OBJ_ENERGY_ORB_TINY, 48, 96, $38
	anim_wait 1
	anim_obj ANIM_OBJ_ENERGY_ORB_TINY, 48, 96, $20
	anim_wait 1
	anim_obj ANIM_OBJ_ENERGY_ORB_TINY, 48, 96, $8
	anim_wait 1
	anim_obj ANIM_OBJ_ENERGY_ORB_TINY, 48, 96, $10
	anim_wait 1
	anim_obj ANIM_OBJ_ENERGY_ORB_TINY, 48, 96, $28
	anim_wait 1
	anim_obj ANIM_OBJ_ENERGY_ORB_TINY, 48, 96, $0
	anim_wait 1
	anim_obj ANIM_OBJ_ENERGY_ORB_TINY, 48, 96, $18
	anim_wait 1
	anim_obj ANIM_OBJ_ENERGY_ORB_TINY, 48, 96, $30
	anim_wait 1
	anim_loop 3, .loop
	anim_obj ANIM_OBJ_SMALL_GLOW, 48, 96, $0
	anim_wait 8
	anim_clearobjs
	anim_wait 1
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_DARK_PULSE
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_PSYCHO_BOOST_2
	anim_2gfx ANIM_GFX_SWIRL, ANIM_GFX_BIG_WHIP
	anim_battlergfx_2row
	anim_bgeffect ANIM_BG_BATTLEROBJ_1ROW, $0, $1, $0
	anim_wait 15
	anim_bgeffect ANIM_BG_CYCLE_BGPALS_INVERTED, $0, $a, $0
	anim_bgeffect ANIM_BG_WAVE_DEFORM_MON, $0, $0, $0
	anim_obj ANIM_OBJ_SWIRL, 132, 48, $30
	anim_obj ANIM_OBJ_SR_CUT_N, 132, 48, $30
	anim_obj ANIM_OBJ_SR_CUT_S, 132, 48, $10
	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $8, $20
.loop2
	anim_sound 6, 2, SFX_THUNDER
	anim_wait 8
	anim_loop 6, .loop2
	anim_incbgeffect ANIM_BG_WAVE_DEFORM_MON
	anim_wait 48
	anim_bgeffect ANIM_BG_SHOW_MON, $0, $1, $0
	anim_ret

BattleAnim_LunarDance:
	anim_3gfx ANIM_GFX_LUNAR_DANCE, ANIM_GFX_WIND, ANIM_GFX_SPEED
	anim_setobjpal PAL_BATTLE_OB_RED, PAL_BTLCUSTOM_MOON
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_AURORA
	anim_bgeffect ANIM_BG_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $4, $0
	anim_bgeffect ANIM_BG_SHOW_MON, $0, $0, $0
	anim_bgeffect ANIM_BG_SHOW_MON, $0, $1, $0
	anim_clearenemyhud
	anim_bgp $1b
	anim_sound 0, 0, SFX_MOONLIGHT
	anim_obj ANIM_OBJ_RISING_MOON, 90, 84, $30
	anim_wait 80
	anim_sound 0, 0, SFX_METRONOME
.loop
	anim_obj ANIM_OBJ_RAPID_SPIN, 44, 112, $0
	anim_wait 2
	anim_loop 10, .loop
	anim_wait 8
	anim_sound 0, 0, SFX_GAME_FREAK_PRESENTS
	anim_obj ANIM_OBJ_RISING_SPARKLE, 44, 108, $6
	anim_wait 2
	anim_obj ANIM_OBJ_RISING_SPARKLE, 36, 108, $6
	anim_wait 2
	anim_obj ANIM_OBJ_RISING_SPARKLE, 52, 108, $6
	anim_wait 2
	anim_obj ANIM_OBJ_RISING_SPARKLE, 28, 108, $6
	anim_wait 2
	anim_obj ANIM_OBJ_RISING_SPARKLE, 60, 108, $6
	anim_wait 2
	anim_obj ANIM_OBJ_RISING_SPARKLE, 20, 108, $6
	anim_wait 2
	anim_obj ANIM_OBJ_RISING_SPARKLE, 68, 108, $6
	anim_wait 2
	anim_wait 48
	anim_ret

BattleAnim_CrushGrip:
	anim_3gfx ANIM_GFX_HIT_2, ANIM_GFX_ROCKS, ANIM_GFX_CRUSH_GRIP
	anim_setobjpal PAL_BATTLE_OB_BROWN, PAL_BTLCUSTOM_BRIGHT
	anim_sound 6, 2, SFX_SPARK
	anim_obj ANIM_OBJ_CRUSH_GRIP, 64, 88, $4
	anim_wait 28
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $50, $2, $0
	anim_wait 16
	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $4, $2
	anim_sound 6, 2, SFX_BIND
	anim_obj ANIM_OBJ_HIT_YFIX, 140, 44, $0
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 56, $5c
	anim_wait 4
	anim_sound 6, 2, SFX_BIND
	anim_obj ANIM_OBJ_HIT_YFIX, 124, 60, $0
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 56, $d0
	anim_wait 4
	anim_sound 6, 2, SFX_BIND
	anim_obj ANIM_OBJ_HIT_YFIX, 140, 60, $0
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 56, $e8
	anim_wait 4
	anim_sound 6, 2, SFX_BIND
	anim_obj ANIM_OBJ_HIT_YFIX, 124, 44, $0
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 56, $50
	anim_wait 32
	anim_ret

BattleAnim_MagmaStorm:
	anim_2gfx ANIM_GFX_BLAST_BURN, ANIM_GFX_FIRE
	anim_setobjpal PAL_BATTLE_OB_RED, PAL_BTLCUSTOM_FIRE
	anim_setbgpal PAL_BATTLE_BG_PLAYER, PAL_BTLCUSTOM_HEAT_BG
	anim_setbgpal PAL_BATTLE_BG_ENEMY, PAL_BTLCUSTOM_HEAT_BG
	anim_setbgpal PAL_BATTLE_BG_ENEMY_HP, PAL_BTLCUSTOM_HEAT_BG
	anim_setbgpal PAL_BATTLE_BG_PLAYER_HP, PAL_BTLCUSTOM_HEAT_BG
	anim_setbgpal PAL_BATTLE_BG_EXP, PAL_BTLCUSTOM_HEAT_BG
	anim_setbgpal PAL_BATTLE_BG_5, PAL_BTLCUSTOM_HEAT_BG
	anim_setbgpal PAL_BATTLE_BG_6, PAL_BTLCUSTOM_HEAT_BG
	anim_setbgpal PAL_BATTLE_BG_TEXT, PAL_BTLCUSTOM_HEAT_BG
	anim_bgeffect ANIM_BG_ALTERNATE_HUES, $0, $6, $0
	anim_bgeffect ANIM_BG_WHIRLPOOL, $0, $0, $0
	anim_obj ANIM_OBJ_FIRE_BG,  24, 36, $30
	anim_obj ANIM_OBJ_FIRE_BG,  52, 133, $30
	anim_obj ANIM_OBJ_FIRE_BG,  80, 67, $30
	anim_obj ANIM_OBJ_FIRE_BG, 108, 11, $30
	anim_obj ANIM_OBJ_FIRE_BG, 134, 109, $30
	anim_obj ANIM_OBJ_FIRE_BG, 152, 162, $30
.loop
	anim_sound 0, 1, SFX_EMBER
	anim_obj ANIM_OBJ_MAGMA_STORM, 132, 56, $18
	anim_wait 20
	anim_loop 3, .loop
	anim_wait 96
	anim_incbgeffect ANIM_BG_WHIRLPOOL
	anim_ret

BattleAnim_DarkVoid:
	anim_2gfx ANIM_GFX_ANGELS, ANIM_GFX_SPEED
	anim_clearenemyhud
	anim_sound 0, 0, SFX_WARP_TO
	anim_bgeffect ANIM_BG_RETURN_MON, $0, $1, $0
	anim_wait 16
	anim_obp0 $fc
	anim_setbgpal PAL_BATTLE_BG_PLAYER, PAL_BTLCUSTOM_DARK_VOID
	anim_setbgpal PAL_BATTLE_BG_ENEMY, PAL_BTLCUSTOM_DARK_VOID
	anim_setbgpal PAL_BATTLE_BG_ENEMY_HP, PAL_BTLCUSTOM_DARK_VOID
	anim_setbgpal PAL_BATTLE_BG_PLAYER_HP, PAL_BTLCUSTOM_DARK_VOID
	anim_setbgpal PAL_BATTLE_BG_EXP, PAL_BTLCUSTOM_DARK_VOID
	anim_setbgpal PAL_BATTLE_BG_5, PAL_BTLCUSTOM_DARK_VOID
	anim_setbgpal PAL_BATTLE_BG_6, PAL_BTLCUSTOM_DARK_VOID
	anim_setbgpal PAL_BATTLE_BG_TEXT, PAL_BTLCUSTOM_DARK_VOID
	anim_sound 6, 2, SFX_CURSE
	anim_obj ANIM_OBJ_DESTINY_BOND, 44, 120, $2
	anim_wait 48
	anim_bgeffect ANIM_BG_DIG, $0, $0, $1
.loop
	anim_sound 0, 0, SFX_SLUDGE_BOMB
	anim_obj ANIM_OBJ_FOCUS, 132, 68, $6
	anim_wait 2
	anim_obj ANIM_OBJ_FOCUS, 124, 68, $6
	anim_wait 2
	anim_obj ANIM_OBJ_FOCUS, 140, 68, $8
	anim_wait 2
	anim_obj ANIM_OBJ_FOCUS, 116, 68, $8
	anim_wait 2
	anim_obj ANIM_OBJ_FOCUS, 148, 68, $6
	anim_wait 2
	anim_obj ANIM_OBJ_FOCUS, 108, 68, $8
	anim_wait 2
	anim_obj ANIM_OBJ_FOCUS, 156, 68, $8
	anim_wait 2
	anim_loop 6, .loop
	anim_wait 40
	anim_incbgeffect ANIM_BG_DIG
	anim_wait 1
	anim_setbgpal PAL_BATTLE_BG_PLAYER, PAL_BTLCUSTOM_GRAY
	anim_setbgpal PAL_BATTLE_BG_ENEMY, PAL_BTLCUSTOM_GRAY
	anim_setbgpal PAL_BATTLE_BG_ENEMY_HP, PAL_BTLCUSTOM_GRAY
	anim_setbgpal PAL_BATTLE_BG_PLAYER_HP, PAL_BTLCUSTOM_GRAY
	anim_setbgpal PAL_BATTLE_BG_EXP, PAL_BTLCUSTOM_GRAY
	anim_setbgpal PAL_BATTLE_BG_5, PAL_BTLCUSTOM_GRAY
	anim_setbgpal PAL_BATTLE_BG_6, PAL_BTLCUSTOM_GRAY
	anim_setbgpal PAL_BATTLE_BG_TEXT, PAL_BTLCUSTOM_GRAY
	anim_bgeffect ANIM_BG_SHOW_MON, $0, $1, $0
	anim_bgeffect ANIM_BG_SHOW_MON, $0, $0, $0
	anim_ret

BattleAnim_SeedFlare:
	anim_3gfx ANIM_GFX_PLANT, ANIM_GFX_BIG_WHIP, ANIM_GFX_CHARGE
	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_LIGHT_SCREEN
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_GREEN
	anim_bgeffect ANIM_BG_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $6, $0
	anim_sound 0, 0, SFX_SWORDS_DANCE
.loop
	anim_obj ANIM_OBJ_ENERGY_ORB_TINY_OUT, 48, 96, $38
	anim_wait 1
	anim_obj ANIM_OBJ_ENERGY_ORB_TINY_OUT, 48, 96, $20
	anim_wait 1
	anim_obj ANIM_OBJ_ENERGY_ORB_TINY_OUT, 48, 96, $8
	anim_wait 1
	anim_obj ANIM_OBJ_ENERGY_ORB_TINY_OUT, 48, 96, $10
	anim_wait 1
	anim_obj ANIM_OBJ_ENERGY_ORB_TINY_OUT, 48, 96, $28
	anim_wait 1
	anim_obj ANIM_OBJ_ENERGY_ORB_TINY_OUT, 48, 96, $0
	anim_wait 1
	anim_obj ANIM_OBJ_ENERGY_ORB_TINY_OUT, 48, 96, $18
	anim_wait 1
	anim_obj ANIM_OBJ_ENERGY_ORB_TINY_OUT, 48, 96, $30
	anim_wait 1
	anim_loop 3, .loop
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $60, $4, $10
	anim_sound 0, 0, SFX_EGG_BOMB
	anim_bgeffect ANIM_BG_CYCLE_MID_OBPALS_GRAY_AND_YELLOW, $0, $6, $0
	anim_bgeffect ANIM_BG_ALTERNATE_HUES, $0, $6, $0
.loop2
	anim_obj ANIM_OBJ_SEED_FLARE_E, 48, 96, $0
	anim_wait 1
	anim_obj ANIM_OBJ_SEED_OUT, 48, 96, $18
	anim_obj ANIM_OBJ_SEED_OUT, 48, 96, $4
	anim_wait 1
	anim_sound 0, 0, SFX_RAZOR_WIND
	anim_obj ANIM_OBJ_SEED_FLARE_NW, 48, 96, $28
	anim_wait 1
	anim_obj ANIM_OBJ_SEED_OUT, 48, 96, $2b
	anim_obj ANIM_OBJ_SEED_OUT, 48, 96, $14
	anim_wait 1
	anim_sound 0, 0, SFX_RAZOR_WIND
	anim_obj ANIM_OBJ_SEED_FLARE_S, 48, 96, $10
	anim_wait 1
	anim_obj ANIM_OBJ_SEED_OUT, 48, 96, $3b
	anim_obj ANIM_OBJ_SEED_OUT, 48, 96, $24
	anim_wait 1
	anim_sound 0, 0, SFX_RAZOR_WIND
	anim_obj ANIM_OBJ_SEED_FLARE_NE, 48, 96, $38
	anim_wait 1
	anim_obj ANIM_OBJ_SEED_OUT, 48, 96, $0
	anim_obj ANIM_OBJ_SEED_OUT, 48, 96, $28
	anim_wait 1
	anim_sound 0, 0, SFX_RAZOR_WIND
	anim_obj ANIM_OBJ_SEED_FLARE_W, 48, 96, $20
	anim_wait 1
	anim_obj ANIM_OBJ_SEED_OUT, 48, 96, $30
	anim_obj ANIM_OBJ_SEED_OUT, 48, 96, $38
	anim_wait 1
	anim_sound 0, 0, SFX_RAZOR_WIND
	anim_obj ANIM_OBJ_SEED_FLARE_SE, 48, 96, $8
	anim_wait 1
	anim_obj ANIM_OBJ_SEED_OUT, 48, 96, $20
	anim_obj ANIM_OBJ_SEED_OUT, 48, 96, $8
	anim_wait 1
	anim_sound 0, 0, SFX_RAZOR_WIND
	anim_obj ANIM_OBJ_SEED_FLARE_SW, 48, 96, $18
	anim_wait 1
	anim_obj ANIM_OBJ_SEED_OUT, 48, 96, $10
	anim_obj ANIM_OBJ_SEED_OUT, 48, 96, $2b
	anim_wait 1
	anim_sound 0, 0, SFX_RAZOR_WIND
	anim_obj ANIM_OBJ_SEED_FLARE_N, 48, 96, $30
	anim_wait 1
	anim_obj ANIM_OBJ_SEED_OUT, 48, 96, $34
	anim_obj ANIM_OBJ_SEED_OUT, 48, 96, $1b
	anim_wait 1
	anim_sound 0, 0, SFX_RAZOR_WIND
	anim_loop 3, .loop2
	anim_wait 32
	anim_ret

BattleAnim_OminousWind:
	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_PURPLE
	anim_1gfx ANIM_GFX_HAZE
	anim_bgp $1b
	anim_bgeffect ANIM_BG_WHIRLPOOL, $0, $0, $0
	anim_sound 0, 0, SFX_SPITE
	anim_obj ANIM_OBJ_MIST_BALL_BG, 8, 24, $10
	anim_obj ANIM_OBJ_MIST_BALL_BG, 8, 48, $2
	anim_obj ANIM_OBJ_MIST_BALL_BG, 8, 88, $8
	anim_wait 4
	anim_obj ANIM_OBJ_MIST_BALL_BG, 8, 32, $6
	anim_obj ANIM_OBJ_MIST_BALL_BG, 8, 56, $c
	anim_obj ANIM_OBJ_MIST_BALL_BG, 8, 80, $4
	anim_obj ANIM_OBJ_MIST_BALL_BG, 8, 104, $e
	anim_wait 120
	anim_incbgeffect ANIM_BG_WHIRLPOOL
	anim_ret

BattleAnim_ShadowForce:
	anim_if_param_equal $1, BattleAnim_ShadowForce_branch_2
	anim_if_param_equal $2, BattleAnim_ShadowForce_branch_1
	anim_2gfx ANIM_GFX_HIT, ANIM_GFX_GLOW
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_PURPLE
	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_INVERT_BLACK
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $30, $4, $0
	anim_bgp $1b
	anim_sound 0, 0, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_HIT_BIG_YFIX, 136, 56, $0
	anim_wait 4
	anim_obj ANIM_OBJ_SMALL_GLOW_OUT, 132, 56, $0
	anim_wait 2
	anim_obj ANIM_OBJ_SMALL_GLOW_OUT, 132, 56, $38
	anim_wait 2
	anim_obj ANIM_OBJ_SMALL_GLOW_OUT, 132, 56, $28
	anim_wait 2
	anim_obj ANIM_OBJ_SMALL_GLOW_OUT, 132, 56, $2b
	anim_wait 2
	anim_obj ANIM_OBJ_SMALL_GLOW_OUT, 132, 56, $3b
	anim_wait 2
	anim_obj ANIM_OBJ_SMALL_GLOW_OUT, 132, 56, $24
	anim_wait 2
	anim_obj ANIM_OBJ_SMALL_GLOW_OUT, 132, 56, $b
	anim_wait 32
BattleAnim_ShadowForce_branch_1:
	anim_bgeffect ANIM_BG_SHOW_MON, $0, $1, $0
	anim_wait 32
	anim_ret

BattleAnim_ShadowForce_branch_2:
	anim_1gfx ANIM_GFX_HIT
	anim_bgp $1b
	anim_sound 0, 1, SFX_SLUDGE_BOMB
.loop
	anim_bgeffect ANIM_BG_HIDE_MON, $0, $1, $0
	anim_wait 4
	anim_bgeffect ANIM_BG_SHOW_MON, $0, $1, $0
	anim_wait 4
	anim_loop 3, .loop
	anim_bgeffect ANIM_BG_HIDE_MON, $0, $1, $0
	anim_wait 12
	anim_ret

BattleAnim_Glimmer_branch3:
	anim_sound 0, 0, SFX_METRONOME
	anim_obj ANIM_OBJ_GLIMMER, 44, 64, $0
	anim_wait 5
	anim_obj ANIM_OBJ_GLIMMER, 24, 96, $0
	anim_wait 5
	anim_obj ANIM_OBJ_GLIMMER, 56, 104, $0
	anim_wait 21
	anim_ret

BattleAnim_Poison_Bubble_branch_3:
.loop
	anim_sound 0, 1, SFX_TOXIC
	anim_obj ANIM_OBJ_SLUDGE, 132, 72, $0
	anim_wait 8
	anim_sound 0, 1, SFX_TOXIC
	anim_obj ANIM_OBJ_SLUDGE, 116, 72, $0
	anim_wait 8
	anim_sound 0, 1, SFX_TOXIC
	anim_obj ANIM_OBJ_SLUDGE, 148, 72, $0
	anim_wait 8
	anim_loop 2, .loop
	anim_wait 48
	anim_ret

BattleAnim_Poison_Bubble_branch_short_3:
	anim_sound 0, 1, SFX_TOXIC
	anim_obj ANIM_OBJ_SLUDGE, 132, 72, $0
	anim_wait 8
	anim_sound 0, 1, SFX_TOXIC
	anim_obj ANIM_OBJ_SLUDGE, 116, 72, $0
	anim_wait 8
	anim_sound 0, 1, SFX_TOXIC
	anim_obj ANIM_OBJ_SLUDGE, 148, 72, $0
	anim_wait 48
	anim_ret

BattleAnim_Beam_branch_3:
	anim_sound 0, 0, SFX_HYPER_BEAM
	anim_obj ANIM_OBJ_BEAM, 64, 92, $0
	anim_wait 4
	anim_sound 0, 0, SFX_HYPER_BEAM
	anim_obj ANIM_OBJ_BEAM, 80, 84, $0
	anim_wait 4
	anim_sound 0, 1, SFX_HYPER_BEAM
	anim_obj ANIM_OBJ_BEAM, 96, 76, $0
	anim_wait 4
	anim_sound 0, 1, SFX_HYPER_BEAM
	anim_obj ANIM_OBJ_BEAM, 112, 68, $0
	anim_obj ANIM_OBJ_BEAM_TIP, 126, 62, $0
	anim_ret

;==========================
;	New Moves End Here
;==========================

;==========================
;	Possible Additions 
;==========================


; - Gen 5 Anims

;BattleAnim_Psyshock:
;	anim_2gfx ANIM_GFX_SHINE, ANIM_GFX_CHARGE
;	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_PSYCHO_BOOST_2
;	anim_battlergfx_1row
;	anim_bgeffect ANIM_BG_BATTLEROBJ_2ROW, $0, $1, $0
;	anim_sound 0, 0, SFX_RAGE
;	anim_obj ANIM_OBJ_GLIMMER, 44, 88, $0
;	anim_wait 32
;	anim_bgeffect ANIM_BG_ALTERNATE_HUES, $0, $2, $0
;	anim_sound 0, 1, SFX_PSYCHIC
;	anim_bgeffect ANIM_BG_TELEPORT, $0, $0, $0
;.loop
;	anim_obj ANIM_OBJ_ENERGY_ORB, 136, 48, $38
;	anim_wait 4
;	anim_obj ANIM_OBJ_ENERGY_ORB, 136, 48, $20
;	anim_wait 4
;	anim_obj ANIM_OBJ_ENERGY_ORB, 136, 48, $8
;	anim_wait 4
;	anim_obj ANIM_OBJ_ENERGY_ORB, 136, 48, $10
;	anim_wait 4
;	anim_obj ANIM_OBJ_ENERGY_ORB, 136, 48, $28
;	anim_wait 4
;	anim_obj ANIM_OBJ_ENERGY_ORB, 136, 48, $0
;	anim_wait 4
;	anim_obj ANIM_OBJ_ENERGY_ORB, 136, 48, $18
;	anim_wait 4
;	anim_obj ANIM_OBJ_ENERGY_ORB, 136, 48, $30
;	anim_wait 4
;	anim_loop 2, .loop
;	anim_wait 1
;	anim_1gfx ANIM_GFX_GLOW
;.loop2
;	anim_obj ANIM_OBJ_SHRINKING_GLOW, 148, 36, $0
;	anim_wait 4
;	anim_obj ANIM_OBJ_SHRINKING_GLOW, 116, 48, $0
;	anim_wait 4
;	anim_obj ANIM_OBJ_SHRINKING_GLOW, 132, 60, $0
;	anim_wait 4
;	anim_loop 2, .loop2
;	anim_wait 28
;	anim_incbgeffect ANIM_BG_TELEPORT
;	anim_wait 1
;	anim_bgeffect ANIM_BG_SHOW_MON, $0, $1, $0
;	anim_wait 1
;	anim_clearobjs
;	anim_ret

;BattleAnim_SacredSword:
;	anim_2gfx ANIM_GFX_BIG_WHIP, ANIM_GFX_CUT
;	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_ICE
;	anim_bgeffect ANIM_BG_CYCLE_MID_OBPALS_GRAY_AND_YELLOW, $0, $8, $0
;	anim_sound 0, 1, SFX_RAZOR_WIND
;	anim_obj ANIM_OBJ_SACRED_SWORD_CRESCENT, 164, 8, $18
;	anim_wait 12
;	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $4, $2
;	anim_sound 0, 1, SFX_CUT
;	anim_obj ANIM_OBJ_CUT_LONG_DOWN_LEFT, 152, 40, $0
;	anim_wait 36
;	anim_ret

;BattleAnim_LeafTornado:
;	anim_3gfx ANIM_GFX_HIT_2, ANIM_GFX_PLANT, ANIM_GFX_WIND
;	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_GREEN
;.loop
;	anim_sound 0, 0, SFX_RAZOR_WIND
;	anim_obj ANIM_OBJ_LEAF_TORNADO, 48, 104, $0
;	anim_wait 6
;	anim_loop 8, .loop
;	anim_wait 32
;.loop2
;	anim_sound 0, 1, SFX_RAZOR_WIND
;	anim_obj ANIM_OBJ_LEAF_TORNADO, 136, 62, $0
;	anim_wait 6
;	anim_loop 8, .loop2
;.loop3
;	anim_sound 0, 1, SFX_RAZOR_WIND
;	anim_obj ANIM_OBJ_GUST, 136, 72, $0
;	anim_wait 6
;	anim_loop 9, .loop3
;	anim_obj ANIM_OBJ_HIT_YFIX, 144, 64, $18
;	anim_wait 8
;	anim_obj ANIM_OBJ_HIT_YFIX, 128, 32, $18
;	anim_wait 16
;	anim_ret

;BattleAnim_NightDaze:
;	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_DARK_PULSE
;	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_DARK_PULSE
;	anim_3gfx ANIM_GFX_HIT_2, ANIM_GFX_OBJECTS_4, ANIM_GFX_SMOKE_PUFF_BIG
;	anim_bgp $1b
;	anim_sound 0, 1, SFX_SLUDGE_BOMB
;.loop
;	anim_obj ANIM_OBJ_LAVA_PLUME_SMOKE, 52, 96, $2
;	anim_wait 4
;	anim_obj ANIM_OBJ_LAVA_PLUME_SMOKE, 40, 100, $28
;	anim_wait 4
;	anim_obj ANIM_OBJ_LAVA_PLUME_SMOKE, 48, 84, $38
;	anim_wait 4
;	anim_obj ANIM_OBJ_LAVA_PLUME_SMOKE, 56, 100, $8
;	anim_wait 4
;	anim_obj ANIM_OBJ_LAVA_PLUME_SMOKE, 44, 88, $30
;	anim_wait 4
;	anim_obj ANIM_OBJ_LAVA_PLUME_SMOKE, 48, 108, $18
;	anim_wait 4
;	anim_loop 2, .loop
;	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $FF, $2, $0
;	anim_bgeffect ANIM_BG_CYCLE_MID_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
;	anim_bgeffect ANIM_BG_CYCLE_BGPALS_INVERTED, $0, $8, $0
;	anim_sound 0, 1, SFX_GIGA_DRAIN
;.loop2
;	anim_obj ANIM_OBJ_NIGHT_DAZE_E, 52, 92, $0
;	anim_obj ANIM_OBJ_NIGHT_DAZE_SE, 48, 96, $8
;	anim_obj ANIM_OBJ_NIGHT_DAZE_S, 44, 96, $10
;	anim_obj ANIM_OBJ_NIGHT_DAZE_SW, 40, 96, $18
;	anim_obj ANIM_OBJ_NIGHT_DAZE_W, 36, 92, $20
;	anim_obj ANIM_OBJ_NIGHT_DAZE_NW, 40, 88, $28
;	anim_obj ANIM_OBJ_NIGHT_DAZE_N, 44, 88, $30
;	anim_obj ANIM_OBJ_NIGHT_DAZE_NE, 48, 88, $38
;	anim_wait 24
;	anim_loop 4, .loop2
;	anim_sound 0, 0, SFX_HORN_ATTACK
;	anim_obj ANIM_OBJ_HIT_YFIX, 140, 44, $0
;	anim_wait 4
;	anim_sound 0, 0, SFX_HORN_ATTACK
;	anim_obj ANIM_OBJ_HIT_YFIX, 124, 60, $0
;	anim_wait 4
;	anim_sound 0, 0, SFX_HORN_ATTACK
;	anim_obj ANIM_OBJ_HIT_YFIX, 140, 60, $0
;	anim_wait 4
;	anim_sound 0, 0, SFX_HORN_ATTACK
;	anim_obj ANIM_OBJ_HIT_YFIX, 124, 44, $0
;	anim_wait 4
;	anim_sound 0, 0, SFX_HORN_ATTACK
;	anim_obj ANIM_OBJ_HIT_YFIX, 132, 52, $0
;	anim_wait 32
;	anim_ret

;BattleAnim_Psystrike:
;	anim_4gfx ANIM_GFX_PSYSTRIKE, ANIM_GFX_CHARGE, ANIM_GFX_GLOW, ANIM_GFX_SPEED
;	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_AURORA
;	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $40, $1, $0
;	anim_bgeffect ANIM_BG_CYCLE_BGPALS_INVERTED, $0, $6, $0
;	anim_bgeffect ANIM_BG_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $4, $0
;	anim_sound 0, 0, SFX_BIND
;	anim_obj ANIM_OBJ_PSYSTRIKE_BALL, 64, 88, $12
;	anim_wait 32
;	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $6, $1
;	anim_sound 0, 1, SFX_PSYCHIC
;	anim_bgeffect ANIM_BG_PSYCHIC, $0, $0, $0
;.loop
;	anim_obj ANIM_OBJ_ENERGY_ORB, 136, 48, $38
;	anim_wait 4
;	anim_obj ANIM_OBJ_ENERGY_ORB, 136, 48, $20
;	anim_wait 4
;	anim_obj ANIM_OBJ_ENERGY_ORB, 136, 48, $8
;	anim_wait 4
;	anim_obj ANIM_OBJ_ENERGY_ORB, 136, 48, $10
;	anim_wait 4
;	anim_obj ANIM_OBJ_ENERGY_ORB, 136, 48, $28
;	anim_wait 4
;	anim_obj ANIM_OBJ_ENERGY_ORB, 136, 48, $0
;	anim_wait 4
;	anim_obj ANIM_OBJ_ENERGY_ORB, 136, 48, $18
;	anim_wait 4
;	anim_obj ANIM_OBJ_ENERGY_ORB, 136, 48, $30
;	anim_wait 4
;	anim_loop 2, .loop
;	anim_wait 1
;	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $6, $ff
;	anim_sound 0, 1, SFX_GRAVITY
;.loop2
;	anim_obj ANIM_OBJ_SHRINKING_GLOW_YFIX, 148, 36, $0
;	anim_obj ANIM_OBJ_FOCUS, 132, 68, $6
;	anim_wait 2
;	anim_obj ANIM_OBJ_FOCUS, 124, 68, $6
;	anim_wait 2
;	anim_obj ANIM_OBJ_SHRINKING_GLOW_YFIX, 116, 48, $0
;	anim_obj ANIM_OBJ_FOCUS, 140, 68, $8
;	anim_wait 2
;	anim_obj ANIM_OBJ_FOCUS, 116, 68, $8
;	anim_wait 2
;	anim_obj ANIM_OBJ_SHRINKING_GLOW_YFIX, 132, 60, $0
;	anim_obj ANIM_OBJ_FOCUS, 148, 68, $6
;	anim_wait 2
;	anim_obj ANIM_OBJ_FOCUS, 108, 68, $8
;	anim_wait 2
;	anim_obj ANIM_OBJ_SHRINKING_GLOW_YFIX, 124, 24, $0
;	anim_obj ANIM_OBJ_FOCUS, 156, 68, $8
;	anim_wait 2
;	anim_obj ANIM_OBJ_SHRINKING_GLOW_YFIX, 144, 52, $0
;	anim_wait 2
;	anim_loop 3, .loop2
;	anim_incbgeffect ANIM_BG_PSYCHIC
;	anim_wait 1
;	anim_clearobjs
;	anim_ret

;BattleAnim_QuiverDance:
;	anim_1gfx ANIM_GFX_CHARGE
;	anim_call BattleAnim_TargetObj_1Row_1
;	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_AURORA
;	anim_bgeffect ANIM_BG_CYCLE_MID_OBPALS_GRAY_AND_YELLOW, $0, $4, $0
;	anim_sound 0, 1, SFX_GAME_FREAK_LOGO_GS
;	anim_bgeffect ANIM_BG_FADE_MON_TO_LIGHT_REPEATING, $0, $1, $40
;	anim_bgeffect ANIM_BG_WOBBLE_MON, $0, $1, $0
;.loop
;	anim_obj ANIM_OBJ_TINY_RISING_ORB, 56, 90, $30
;	anim_wait 4
;	anim_obj ANIM_OBJ_TINY_RISING_ORB, 40, 90, $20
;	anim_wait 4
;	anim_obj ANIM_OBJ_TINY_RISING_ORB, 60, 106, $10
;	anim_wait 4
;	anim_obj ANIM_OBJ_TINY_RISING_ORB, 36, 106, $0
;	anim_wait 4
;	anim_loop 4, .loop
;	anim_wait 18
;	anim_incbgeffect ANIM_BG_WOBBLE_MON
;	anim_call BattleAnim_ShowMon_0_1
;	anim_wait 16
;	anim_clearobjs
;	anim_wait 1
;	anim_ret

;BattleAnim_FlameCharge:
;	anim_1gfx ANIM_GFX_FIRE
;	anim_setobjpal PAL_BATTLE_OB_RED, PAL_BTLCUSTOM_FIRE
;	anim_bgeffect ANIM_BG_FADE_MON_TO_LIGHT_REPEATING, $0, $1, $40
;.loop
;	anim_sound 6, 2, SFX_EMBER
;	anim_obj ANIM_OBJ_FLAME_CHARGE, 40, 86, $10
;	anim_wait 6
;	anim_sound 6, 2, SFX_EMBER
;	anim_obj ANIM_OBJ_FLAME_CHARGE, 56, 86, $90
;	anim_wait 6
;	anim_loop 5, .loop
;	anim_wait 80
;	anim_incbgeffect ANIM_BG_FADE_MON_TO_LIGHT_REPEATING
;	anim_wait 1
;	anim_clearobjs
;	anim_call BattleAnim_TargetObj_1Row_1
;	anim_bgeffect ANIM_BG_TACKLE, $0, $1, $0
;	anim_wait 4
;	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $4, $3
;	anim_sound 0, 1, SFX_EMBER
;	anim_obj ANIM_OBJ_FIRE_BLAST, 136, 48, $1
;	anim_obj ANIM_OBJ_FIRE_BLAST, 136, 48, $4
;	anim_obj ANIM_OBJ_FIRE_BLAST, 136, 48, $5
;	anim_wait 8
;	anim_bgeffect ANIM_BG_SHOW_MON, $0, $0, $0
;	anim_wait 4
;	anim_incobj 11
;	anim_wait 8
;	anim_ret

;BattleAnim_Coil:
;	anim_2gfx ANIM_GFX_ROPE, ANIM_GFX_CHARGE
;	anim_setobjpal PAL_BATTLE_OB_GREEN, PAL_BTLCUSTOM_PURPLE
;	anim_sound 0, 1, SFX_SQUEAK
;	anim_obj ANIM_OBJ_COIL, 48, 104, $0
;	anim_wait 8
;	anim_sound 0, 1, SFX_SQUEAK
;	anim_obj ANIM_OBJ_COIL, 48, 96, $0
;	anim_wait 8
;	anim_sound 0, 1, SFX_SQUEAK
;	anim_obj ANIM_OBJ_COIL, 48, 88, $0
;	anim_wait 32
;	anim_bgeffect ANIM_BG_FADE_MON_TO_LIGHT_REPEATING, $0, $1, $40
;	anim_sound 0, 1, SFX_POTION
;	anim_incobj 1
;	anim_wait 2
;	anim_incobj 2
;	anim_wait 2
;	anim_incobj 3
;	anim_obj ANIM_OBJ_GROWTH, 48, 108, $0
;	anim_obj ANIM_OBJ_GROWTH, 48, 108, $8
;	anim_obj ANIM_OBJ_GROWTH, 48, 108, $10
;	anim_obj ANIM_OBJ_GROWTH, 48, 108, $18
;	anim_obj ANIM_OBJ_GROWTH, 48, 108, $20
;	anim_obj ANIM_OBJ_GROWTH, 48, 108, $28
;	anim_obj ANIM_OBJ_GROWTH, 48, 108, $30
;	anim_obj ANIM_OBJ_GROWTH, 48, 108, $38
;	anim_wait 64
;	anim_ret

;BattleAnim_FoulPlay:
;	anim_2gfx ANIM_GFX_BIG_GLOW_CLEAR, ANIM_GFX_HIT
;	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_DARK_PULSE
;	anim_call BattleAnim_TargetObj_1Row_1
;	anim_bgeffect ANIM_BG_TACKLE, $0, $1, $0
;	anim_wait 3
;	anim_sound 0, 1, SFX_RAZOR_WIND
;	anim_obj ANIM_OBJ_HIT_YFIX, 128, 56, $0
;	anim_wait 6
;	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $6, $1, $0
;	anim_sound 0, 1, SFX_BEAT_UP
;	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $4, $2
;	anim_obj ANIM_OBJ_HIT_YFIX, 144, 48, $0
;	anim_wait 3
;	anim_bgeffect ANIM_BG_SHOW_MON, $0, $0, $0
;	anim_wait 2
;	anim_clearobjs
;	anim_obj ANIM_OBJ_BIG_GLOW_CLEAR, 136, 48, $0
;	anim_wait 6
;	anim_clearobjs
;	anim_bgeffect ANIM_BG_SHOW_MON, $0, $1, $0
;	anim_wait 32
;	anim_ret

;BattleAnim_EchoedVoice:
;	anim_2gfx ANIM_GFX_PSYCHIC, ANIM_GFX_NOISE
;	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_YELLOW
;	anim_battlergfx_1row
;	anim_bgeffect ANIM_BG_CYCLE_MID_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
;	anim_sound 6, 2, SFX_SUPERSONIC
;.loop
;	anim_call BattleAnim_Growl_branch_cbbbc
;	anim_obj ANIM_OBJ_BIG_WAVE, 64, 88, $2
;	anim_wait 4
;	anim_obj ANIM_OBJ_BIG_WAVE, 64, 88, $2
;	anim_wait 4
;	anim_obj ANIM_OBJ_BIG_WAVE, 64, 88, $2
;	anim_wait 4
;	anim_obj ANIM_OBJ_BIG_WAVE, 64, 88, $2
;	anim_wait 4
;	anim_loop 4, .loop
;	anim_bgeffect ANIM_BG_BATTLEROBJ_2ROW, $0, $1, $0
;	anim_bgeffect ANIM_BG_NIGHT_SHADE, $0, $0, $8
;	anim_wait 32
;	anim_incbgeffect ANIM_BG_NIGHT_SHADE
;	anim_jump BattleAnim_ShowMon_1_1

;BattleAnim_ClearSmog:
;	anim_3gfx ANIM_GFX_SMOKE_PUFF, ANIM_GFX_HAZE, ANIM_GFX_SPEED
;	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_GRAY
;	anim_obp0 $54
;	anim_sound 0, 1, SFX_MEGA_PUNCH
;.loop
;	anim_obj ANIM_OBJ_CLEAR_SMOG, 64, 92, $0
;	anim_wait 2
;	anim_loop 3, .loop
;	anim_wait 24
;	anim_bgeffect ANIM_BG_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $4, $0
;	anim_sound 0, 1, SFX_SWORDS_DANCE
;.loop2
;	anim_obj ANIM_OBJ_CLEAR_SMOG_RISE, 132, 60, $20
;	anim_wait 8
;	anim_loop 5, .loop2
;	anim_obj ANIM_OBJ_PULSING_SPARKLE_YFIX, 148, 32, $0
;	anim_wait 8
;	anim_obj ANIM_OBJ_PULSING_SPARKLE_YFIX, 116, 64, $0
;	anim_wait 8
;	anim_obj ANIM_OBJ_PULSING_SPARKLE_YFIX, 148, 64, $0
;	anim_wait 8
;	anim_obj ANIM_OBJ_PULSING_SPARKLE_YFIX, 116, 32, $0
;	anim_wait 8
;	anim_obj ANIM_OBJ_PULSING_SPARKLE_YFIX, 132, 48, $0
;	anim_wait 24
;	anim_ret

;BattleAnim_Scald:
;	anim_3gfx ANIM_GFX_HIT_2, ANIM_GFX_MISC, ANIM_GFX_SMOKE_PUFF
;	anim_setobjpal PAL_BATTLE_OB_BLUE, PAL_BTLCUSTOM_WATER
;	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_WATER
;	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_VERY_BRIGHT
;	anim_bgp $90
;	anim_sound 0, 1, SFX_SURF
;	anim_obj ANIM_OBJ_SCALD, 64, 88, $4
;	anim_wait 4
;	anim_obj ANIM_OBJ_SCALD, 64, 88, $4
;	anim_wait 4
;	anim_obj ANIM_OBJ_SCALD, 64, 88, $4
;	anim_wait 4
;.loop
;	anim_obj ANIM_OBJ_HIT_YFIX, 136, 52, $0
;	anim_obj ANIM_OBJ_SCALD, 64, 88, $4
;	anim_obj ANIM_OBJ_SCALD_STEAM, 120, 46, $30
;	anim_wait 1
;	anim_obj ANIM_OBJ_SCALD_STEAM, 144, 34, $30
;	anim_wait 3
;	anim_obj ANIM_OBJ_HIT_YFIX, 136, 52, $0
;	anim_obj ANIM_OBJ_SCALD, 64, 88, $4
;	anim_wait 4
;	anim_loop 7, .loop
;	anim_obj ANIM_OBJ_HIT_YFIX, 136, 52, $0
;	anim_obj ANIM_OBJ_SCALD_STEAM, 120, 46, $30
;	anim_wait 1
;	anim_obj ANIM_OBJ_SCALD_STEAM, 144, 34, $30
;	anim_wait 3
;	anim_obj ANIM_OBJ_HIT_YFIX, 136, 52, $0
;	anim_wait 4
;	anim_obj ANIM_OBJ_HIT_YFIX, 136, 52, $0
;	anim_wait 4
;	anim_obj ANIM_OBJ_SCALD_STEAM, 120, 46, $30
;	anim_wait 1
;	anim_obj ANIM_OBJ_SCALD_STEAM, 144, 34, $30
;	anim_wait 7
;	anim_setobjpal PAL_BATTLE_BG_TARGET, PAL_BTLCUSTOM_FIRE
;	anim_bgeffect ANIM_BG_FADE_MON_TO_BLACK_REPEATING, $0, $0, $40
;	anim_sound 0, 1, SFX_POISON_STING
;.loop2
;	anim_obj ANIM_OBJ_SCALD_STEAM, 120, 46, $30
;	anim_wait 1
;	anim_obj ANIM_OBJ_SCALD_STEAM, 144, 34, $30
;	anim_wait 8
;	anim_loop 6, .loop2
;	anim_wait 8
;	anim_incbgeffect ANIM_BG_FADE_MON_TO_BLACK_REPEATING
;	anim_ret

;BattleAnim_VoltSwitch:
;	anim_3gfx ANIM_GFX_CHARGE, ANIM_GFX_VOLT_SWITCH, ANIM_GFX_LIGHTNING
;	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_YELLOW
;	anim_bgeffect ANIM_BG_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $4, $0
;	anim_battlergfx_2row
;	anim_sound 0, 0, SFX_WARP_TO
;	anim_obj ANIM_OBJ_ENERGY_ORB, 48, 88, $38
;	anim_wait 4
;	anim_obj ANIM_OBJ_ENERGY_ORB, 48, 88, $20
;	anim_wait 4
;	anim_obj ANIM_OBJ_ENERGY_ORB, 48, 88, $8
;	anim_wait 4
;	anim_obj ANIM_OBJ_ENERGY_ORB, 48, 88, $10
;	anim_wait 4
;	anim_obj ANIM_OBJ_ENERGY_ORB, 48, 88, $28
;	anim_wait 4
;	anim_obj ANIM_OBJ_ENERGY_ORB, 48, 88, $0
;	anim_wait 4
;	anim_obj ANIM_OBJ_ENERGY_ORB, 48, 88, $18
;	anim_wait 4
;	anim_obj ANIM_OBJ_ENERGY_ORB, 48, 88, $30
;	anim_wait 4
;	anim_sound 0, 0, SFX_ZAP_CANNON
;	anim_obj ANIM_OBJ_VOLT_SWITCH, 64, 92, $4
;	anim_wait 2
;	anim_obj ANIM_OBJ_VOLT_SWITCH_SPARKS, 64, 92, $5c
;	anim_wait 2
;	anim_bgeffect ANIM_BG_BATTLEROBJ_1ROW, $0, $1, $0
;	anim_obj ANIM_OBJ_VOLT_SWITCH_SPARKS, 76, 84, $d0
;	anim_wait 2
;	anim_obj ANIM_OBJ_VOLT_SWITCH_SPARKS, 108, 76, $e8
;	anim_wait 2
;	anim_obj ANIM_OBJ_VOLT_SWITCH_SPARKS, 112, 68, $50
;	anim_wait 2
;	anim_obj ANIM_OBJ_VOLT_SWITCH_SPARKS, 100, 60, $5c
;	anim_wait 4
;	anim_sound 0, 0, SFX_THUNDERSHOCK
;	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $10, $FF
;.loop
;	anim_bgeffect ANIM_BG_VIBRATE_MON, $0, $0, $0
;	anim_obj ANIM_OBJ_VOLT_SWITCH_SPARKS, 132, 56, $5c
;	anim_wait 2
;	anim_obj ANIM_OBJ_VOLT_SWITCH_SPARKS, 132, 56, $e8
;	anim_wait 2
;	anim_obj ANIM_OBJ_VOLT_SWITCH_SPARKS, 128, 56, $d0
;	anim_wait 2
;	anim_obj ANIM_OBJ_VOLT_SWITCH_SPARKS, 156, 56, $50
;	anim_wait 2
;	anim_loop 8, .loop
;	anim_bgeffect ANIM_BG_SHOW_MON, $0, $1, $0
;	anim_wait 4
;	anim_ret

;BattleAnim_StruggleBug:
;	anim_2gfx ANIM_GFX_HIT_2, ANIM_GFX_OBJECTS_3,
;	anim_call BattleAnim_TargetObj_1Row_1
;	anim_bgeffect ANIM_BG_WOBBLE_MON, $0, $1, $0
;	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_STRUGGLE_BUG
;	anim_bgeffect ANIM_BG_CYCLE_MID_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
;.loop
;	anim_sound 0, 0, SFX_SQUEAK
;	anim_obj ANIM_OBJ_STRUGGLE_BUG, 48, 104, $0
;	anim_wait 8
;	anim_loop 6, .loop
;	anim_wait 28
;	anim_incbgeffect ANIM_BG_WOBBLE_MON
;	anim_call BattleAnim_ShowMon_0_1
;	anim_wait 1
;	anim_clearobjs
;	anim_wait 1
;.loop2
;	anim_sound 0, 0, SFX_SQUEAK
;	anim_obj ANIM_OBJ_STRUGGLE_BUG_DOWN, 132, 24, $0
;	anim_wait 8
;	anim_loop 6, .loop2
;	anim_wait 6
;	anim_sound 0, 1, SFX_POISON_STING
;	anim_obj ANIM_OBJ_HIT_SMALL_YFIX, 140, 44, $0
;	anim_wait 6
;	anim_sound 0, 1, SFX_POISON_STING
;	anim_obj ANIM_OBJ_HIT_SMALL_YFIX, 124, 60, $0
;	anim_wait 6
;	anim_sound 0, 1, SFX_POISON_STING
;	anim_obj ANIM_OBJ_HIT_SMALL_YFIX, 140, 60, $0
;	anim_wait 6
;	anim_sound 0, 1, SFX_POISON_STING
;	anim_obj ANIM_OBJ_HIT_SMALL_YFIX, 124, 44, $0
;	anim_wait 6
;	anim_sound 0, 1, SFX_POISON_STING
;	anim_obj ANIM_OBJ_HIT_SMALL_YFIX, 132, 52, $0
;	anim_wait 16
;	anim_ret

;BattleAnim_DragonTail:
;	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_DRAGONBREATH
;	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_BRIGHT
;	anim_3gfx ANIM_GFX_DRAGON_TAIL, ANIM_GFX_SMOKE_PUFF, ANIM_GFX_ROCKS
;	anim_sound 0, 1, SFX_RAZOR_WIND
;	anim_obj ANIM_OBJ_DRAGON_TAIL, 120, 56, $0
;	anim_wait 8
;	anim_sound 0, 1, SFX_EGG_BOMB
;	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $4, $2
;	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $60, $2, $20
;	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $28
;	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $5c
;	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $10
;	anim_wait 6
;	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $1c
;	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $50
;	anim_obj ANIM_OBJ_IMPACT_SMOKE, 156, 62, $38
;	anim_wait 1
;	anim_obj ANIM_OBJ_IMPACT_SMOKE, 156, 58, $34
;	anim_wait 1
;	anim_obj ANIM_OBJ_IMPACT_SMOKE, 156, 62, $38
;	anim_if_param_equal $0, .done
;	anim_bgeffect ANIM_BG_REMOVE_MON, $0, $0, $0
;	anim_wait 64
;.done
;	anim_ret

;BattleAnim_WildCharge:
;	anim_3gfx ANIM_GFX_CHARGE, ANIM_GFX_LIGHTNING, ANIM_GFX_EXPLOSION
;	anim_battlergfx_1row
;	anim_bgp $1b
;	anim_bgeffect ANIM_BG_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
;	anim_sound 0, 0, SFX_SWORDS_DANCE
;	anim_obj ANIM_OBJ_ENERGY_ORB, 48, 88, $38
;	anim_wait 4
;	anim_obj ANIM_OBJ_ENERGY_ORB, 48, 88, $20
;	anim_wait 4
;	anim_obj ANIM_OBJ_ENERGY_ORB, 48, 88, $8
;	anim_wait 4
;	anim_obj ANIM_OBJ_ENERGY_ORB, 48, 88, $10
;	anim_wait 4
;	anim_obj ANIM_OBJ_ENERGY_ORB, 48, 88, $28
;	anim_wait 4
;	anim_obj ANIM_OBJ_ENERGY_ORB, 48, 88, $0
;	anim_wait 4
;	anim_obj ANIM_OBJ_ENERGY_ORB, 48, 88, $18
;	anim_wait 4
;	anim_obj ANIM_OBJ_ENERGY_ORB, 48, 88, $30
;	anim_wait 16
;	anim_sound 0, 0, SFX_ZAP_CANNON
;	anim_obj ANIM_OBJ_THUNDER_WAVE, 48, 92, $0
;	anim_wait 24
;	anim_setobj $9, $3
;	anim_wait 8
;	anim_bgeffect ANIM_BG_BATTLEROBJ_2ROW, $0, $0, $0
;	anim_bgeffect ANIM_BG_TACKLE, $0, $1, $0
;	anim_sound 0, 0, SFX_SPARK
;	anim_wait 6
;	anim_sound 0, 0, SFX_SPARK
;	anim_wait 6
;	anim_bgeffect ANIM_BG_SHOW_MON, $0, $0, $0
;	anim_wait 4
;	anim_clearobjs
;	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $4, $50
;	anim_bgeffect ANIM_BG_SHOW_MON, $0, $1, $0
;	anim_wait 1
;	anim_sound 0, 1, SFX_THUNDERSHOCK
;	anim_obj ANIM_OBJ_THUNDERBOLT_CORE, 136, 56, $2
;	anim_obj ANIM_OBJ_THUNDERBOLT_SPARKS, 136, 56, $0
;	anim_wait 32
;	anim_ret

;BattleAnim_DrillRun:
;	anim_2gfx ANIM_GFX_DRILL, ANIM_GFX_HIT
;	anim_sound 0, 1, SFX_HORN_ATTACK
;	anim_obj ANIM_OBJ_DRILL_RUN, 72, 80, $4
;	anim_wait 8
;	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $50, $1, $0
;.loop
	;anim_sound 0, 1, SFX_KARATE_CHOP
;	anim_obj ANIM_OBJ_HIT_SMALL, 128, 48, $0
;	anim_wait 2
;	anim_sound 0, 1, SFX_KARATE_CHOP
;	anim_obj ANIM_OBJ_HIT_SMALL, 132, 44, $0
;	anim_wait 2
;	anim_sound 0, 1, SFX_KARATE_CHOP
;	anim_obj ANIM_OBJ_HIT_SMALL, 136, 48, $0
;	anim_wait 2
;	anim_sound 0, 1, SFX_KARATE_CHOP
;	anim_obj ANIM_OBJ_HIT_SMALL, 132, 52, $0
;	anim_wait 2
;	anim_loop 6, .loop
;	anim_clearobjs
;	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $4, $2
;	anim_wait 16
;	anim_ret

;BattleAnim_FieryDance:
;	anim_2gfx ANIM_GFX_CHARGE, ANIM_GFX_FIRE
;	anim_call BattleAnim_TargetObj_1Row_1
;	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_FIRE
;	anim_setbgpal PAL_BATTLE_BG_USER, PAL_BTLCUSTOM_FIRE
;	anim_bgeffect ANIM_BG_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $4, $0
;	anim_sound 0, 1, SFX_SWORDS_DANCE
;	anim_bgeffect ANIM_BG_FADE_MON_TO_LIGHT_REPEATING, $0, $1, $40
;	anim_bgeffect ANIM_BG_FLAIL, $0, $1, $0
;.loop
;	anim_obj ANIM_OBJ_TINY_RISING_ORB, 56, 90, $30
;	anim_wait 4
;	anim_obj ANIM_OBJ_TINY_RISING_ORB, 40, 90, $20
;	anim_wait 4
;	anim_obj ANIM_OBJ_TINY_RISING_ORB, 60, 106, $10
;	anim_wait 4
;	anim_obj ANIM_OBJ_TINY_RISING_ORB, 36, 106, $0
;	anim_wait 4
;	anim_loop 2, .loop
;	anim_wait 32
;	anim_incbgeffect ANIM_BG_FLAIL
;	anim_call BattleAnim_ShowMon_0_1
;	anim_incbgeffect ANIM_BG_FADE_MON_TO_LIGHT_REPEATING
;	anim_wait 1
;	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_FIRE
;	anim_setobjpal PAL_BATTLE_OB_RED, PAL_BTLCUSTOM_YELLOW
;	anim_setbgpal PAL_BATTLE_BG_PLAYER, PAL_BTLCUSTOM_HEAT_BG
;	anim_setbgpal PAL_BATTLE_BG_ENEMY, PAL_BTLCUSTOM_HEAT_BG
;	anim_setbgpal PAL_BATTLE_BG_ENEMY_HP, PAL_BTLCUSTOM_HEAT_BG
;	anim_setbgpal PAL_BATTLE_BG_PLAYER_HP, PAL_BTLCUSTOM_HEAT_BG
;	anim_setbgpal PAL_BATTLE_BG_EXP, PAL_BTLCUSTOM_HEAT_BG
;	anim_setbgpal PAL_BATTLE_BG_5, PAL_BTLCUSTOM_HEAT_BG
;	anim_setbgpal PAL_BATTLE_BG_6, PAL_BTLCUSTOM_HEAT_BG
;	anim_setbgpal PAL_BATTLE_BG_TEXT, PAL_BTLCUSTOM_HEAT_BG
;	anim_sound 0, 1, SFX_EMBER
;	anim_bgeffect ANIM_BG_ALTERNATE_HUES, $0, $6, $0
;	anim_obj ANIM_OBJ_GRUDGE, 132, 36, $0
;	anim_wait 16
;	anim_obj ANIM_OBJ_FIERY_DANCE_FLAME, 132, 62, $0
;	anim_wait 16
;	anim_obj ANIM_OBJ_GRUDGE, 132, 54, $0
;	anim_wait 16
;	anim_obj ANIM_OBJ_FIERY_DANCE_FLAME, 132, 48, $0
;	anim_wait 16
;	anim_obj ANIM_OBJ_GRUDGE, 132, 64, $0
;	anim_wait 16
;	anim_obj ANIM_OBJ_FIERY_DANCE_FLAME, 132, 36, $0
;	anim_wait 16
;	anim_obj ANIM_OBJ_GRUDGE, 132, 38, $0
;	anim_wait 16
;	anim_obj ANIM_OBJ_FIERY_DANCE_FLAME, 132, 64, $0
;	anim_wait 32
;	anim_ret

;BattleAnim_Snarl:
;	anim_3gfx ANIM_GFX_HIT_2, ANIM_GFX_NOISE, ANIM_GFX_BIG_GLOW_CLEAR
;	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_DARK_PULSE
;	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_YELLOW
;	anim_obj ANIM_OBJ_BIG_GLOW_CLEAR, 48, 96, $0
;.loop
;	anim_sound 6, 2, SFX_LEER
;	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $60, $1, $0
;	anim_obj ANIM_OBJ_UPROAR, 48, 96, $2a
;	anim_obj ANIM_OBJ_UPROAR, 48, 96, $3a
;	anim_obj ANIM_OBJ_SOUND, 64, 76, $0
;	anim_obj ANIM_OBJ_SOUND, 64, 88, $1
;	anim_obj ANIM_OBJ_SOUND, 64, 100, $2
;	anim_wait 16
;	anim_loop 4, .loop
;	anim_clearobjs
;	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_GRAY
;	anim_sound 0, 1, SFX_HORN_ATTACK
;	anim_obj ANIM_OBJ_HIT, 120, 40, $0
;	anim_wait 4
;	anim_sound 0, 1, SFX_HORN_ATTACK
;	anim_obj ANIM_OBJ_HIT, 152, 48, $0
;	anim_wait 4
;	anim_sound 0, 1, SFX_HORN_ATTACK
;	anim_obj ANIM_OBJ_HIT, 136, 56, $0
;	anim_wait 32
;	anim_ret

;BattleAnim_VCreate:
;	anim_3gfx ANIM_GFX_V_CREATE, ANIM_GFX_FIRE, ANIM_GFX_CHARGE
;	anim_battlergfx_1row
;	anim_bgeffect ANIM_BG_FADE_MON_TO_LIGHT_REPEATING, $0, $1, $40
;	anim_setobjpal PAL_BATTLE_OB_RED, PAL_BTLCUSTOM_FIRE
;	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_FIRE
;	anim_setobjpal PAL_BATTLE_BG_USER, PAL_BTLCUSTOM_FIRE
;	anim_bgeffect ANIM_BG_CYCLE_MID_OBPALS_GRAY_AND_YELLOW, $0, $4, $0
;	anim_sound 0, 0, SFX_SWORDS_DANCE
;.loop
;	anim_obj ANIM_OBJ_ENERGY_ORB_TINY_OUT, 48, 96, $38
;	anim_wait 1
;	anim_obj ANIM_OBJ_ENERGY_ORB_TINY_OUT, 48, 96, $20
;	anim_wait 1
;	anim_obj ANIM_OBJ_ENERGY_ORB_TINY_OUT, 48, 96, $8
;	anim_wait 1
;	anim_obj ANIM_OBJ_ENERGY_ORB_TINY_OUT, 48, 96, $10
;	anim_wait 1
;	anim_obj ANIM_OBJ_ENERGY_ORB_TINY_OUT, 48, 96, $28
;	anim_wait 1
;	anim_obj ANIM_OBJ_ENERGY_ORB_TINY_OUT, 48, 96, $0
;	anim_wait 1
;	anim_obj ANIM_OBJ_ENERGY_ORB_TINY_OUT, 48, 96, $18
;	anim_wait 1
;	anim_obj ANIM_OBJ_ENERGY_ORB_TINY_OUT, 48, 96, $30
;	anim_wait 1
;	anim_loop 3, .loop
;.loop2
;	anim_sound 0, 0, SFX_BURN
;	anim_obj ANIM_OBJ_V_CREATE_FLAME_SMALL, 52, 104, $33
;	anim_obj ANIM_OBJ_V_CREATE_FLAME_SMALL, 44, 104, $2d
;	anim_wait 3
;	anim_loop 16, .loop2
;	anim_obj ANIM_OBJ_V_CREATE_V, 48, 92, $0
;	anim_wait 32
;	anim_wait 1
;	anim_bgeffect ANIM_BG_BATTLEROBJ_2ROW, $0, $0, $0
;	anim_bgeffect ANIM_BG_TACKLE, $0, $1, $0
;	anim_sound 0, 0, SFX_EGG_BOMB
;	anim_wait 16
;	anim_bgeffect ANIM_BG_SHOW_MON, $0, $0, $0
;	anim_wait 4
;	anim_clearobjs
;	anim_incbgeffect ANIM_BG_FADE_MON_TO_LIGHT_REPEATING
;	anim_setbgpal PAL_BATTLE_BG_USER, PAL_BTLCUSTOM_DEFAULT
;	anim_bgeffect ANIM_BG_CYCLE_MID_OBPALS_GRAY_AND_YELLOW, $0, $60, $0
;	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $ff, $1, $0
;	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $4, $2
;	anim_obj ANIM_OBJ_RADIAL_FLAME_SLOW, 136, 56, $0
;	anim_obj ANIM_OBJ_RADIAL_FLAME_SLOW, 136, 56, $28
;	anim_wait 1
;	anim_obj ANIM_OBJ_RADIAL_FLAME_SLOW, 136, 56, $30
;	anim_obj ANIM_OBJ_RADIAL_FLAME_SLOW, 136, 56, $38
;	anim_wait 1
;	anim_obj ANIM_OBJ_RADIAL_FLAME_SLOW, 136, 56, $20
;	anim_obj ANIM_OBJ_RADIAL_FLAME_SLOW, 136, 56, $8
;	anim_wait 1
;	anim_obj ANIM_OBJ_V_CREATE_FLAME_BIG, 136, 56, $36
;	anim_obj ANIM_OBJ_V_CREATE_FLAME_BIG, 136, 56, $2a
;	anim_obj ANIM_OBJ_RADIAL_FLAME_SLOW, 136, 56, $18
;	anim_obj ANIM_OBJ_RADIAL_FLAME_SLOW, 136, 56, $4
;	anim_wait 1
;	anim_obj ANIM_OBJ_RADIAL_FLAME_SLOW, 136, 56, $2b
;	anim_obj ANIM_OBJ_RADIAL_FLAME_SLOW, 136, 56, $14
;	anim_wait 1
;	anim_obj ANIM_OBJ_RADIAL_FLAME_SLOW, 136, 56, $3b
;	anim_obj ANIM_OBJ_RADIAL_FLAME_SLOW, 136, 56, $24
;	anim_wait 1
;	anim_obj ANIM_OBJ_RADIAL_FLAME_SLOW, 136, 56, $b
;	anim_sound 0, 0, SFX_EMBER
;	anim_bgp $1b
;	anim_setobjpal PAL_BATTLE_BG_TARGET, PAL_BTLCUSTOM_FIRE
;	anim_bgeffect ANIM_BG_CYCLE_BGPALS_INVERTED, $0, $4, $0
;.loop3
;	anim_obj ANIM_OBJ_V_CREATE_FLAME_BIG, 136, 60, $36
;	anim_obj ANIM_OBJ_V_CREATE_FLAME_BIG, 136, 60, $2a
;	anim_wait 3
;	anim_loop 24, .loop3
;	anim_call BattleAnim_ShowMon_0_1
;	anim_ret

; - Gen 6 Anims


;BattleAnim_FreezeDry:
;	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_BRIGHT
;	anim_2gfx ANIM_GFX_ICE, ANIM_GFX_HAZE
;	anim_setobjpal PAL_BATTLE_OB_BLUE, PAL_BTLCUSTOM_ICE
;	anim_bgeffect ANIM_BG_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $6, $0
;	anim_sound 0, 0, SFX_SURF
;	anim_obj ANIM_OBJ_CLEAR_SMOG_RISE, 132, 60, $20
;	anim_wait 8
;	anim_obj ANIM_OBJ_CLEAR_SMOG_RISE, 132, 60, $20
;	anim_wait 8
;	anim_obj ANIM_OBJ_CLEAR_SMOG_RISE, 132, 60, $20
;	anim_wait 8
;	anim_setobjpal PAL_BATTLE_BG_TARGET, PAL_BTLCUSTOM_ICE
;	anim_bgeffect ANIM_BG_FADE_MON_TO_LIGHT, $0, $0, $40
;	anim_obj ANIM_OBJ_CLEAR_SMOG_RISE, 132, 60, $20
;	anim_wait 8
;	anim_obj ANIM_OBJ_CLEAR_SMOG_RISE, 132, 60, $20
;	anim_wait 8
;	anim_obj ANIM_OBJ_CLEAR_SMOG_RISE, 132, 60, $20
;	anim_wait 8
;	anim_obj ANIM_OBJ_ICE_BUILDUP, 136, 74, $10
;.loop
;	anim_obj ANIM_OBJ_CLEAR_SMOG_RISE, 132, 60, $20
;	anim_wait 8
;	anim_obj ANIM_OBJ_CLEAR_SMOG_RISE, 132, 60, $20
;	anim_wait 8
;	anim_obj ANIM_OBJ_CLEAR_SMOG_RISE, 132, 60, $20
;	anim_wait 8
;	anim_loop 2, .loop
;	anim_wait 64
;	anim_sound 0, 1, SFX_SHINE
;	anim_wait 8
;	anim_sound 0, 1, SFX_SHINE
;	anim_wait 16
;	anim_ret

;BattleAnim_PartingShot:
;	anim_2gfx ANIM_GFX_STATUS, ANIM_GFX_OBJECTS_3
;	anim_sound 0, 1, SFX_HORN_ATTACK
;	anim_obj ANIM_OBJ_PARTING_SHOT_HASH, 26, 84, $2
;	anim_wait 8
;	anim_sound 0, 1, SFX_HORN_ATTACK
;	anim_obj ANIM_OBJ_TORMENT, 68, 100, $2
;	anim_wait 8
;	anim_sound 0, 1, SFX_HORN_ATTACK
;	anim_obj ANIM_OBJ_PARTING_SHOT_EXCLAMATION, 40, 104, $2
;	anim_wait 8
;	anim_sound 0, 1, SFX_HORN_ATTACK
;	anim_obj ANIM_OBJ_PARTING_SHOT_STAR, 54, 76, $2
;	anim_wait 48
;	anim_clearobjs
;	anim_sound 0, 0, SFX_BALL_POOF
;	anim_bgeffect ANIM_BG_RETURN_MON, $0, $1, $0
;	anim_wait 16
;	anim_ret

;BattleAnim_DrainingKiss:
;	anim_3gfx ANIM_GFX_OBJECTS, ANIM_GFX_CHARGE, ANIM_GFX_SHINE
;	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_PINK
;	anim_sound 0, 1, SFX_SWEET_KISS
;	anim_obj ANIM_OBJ_HEART, 120, 40, $0
;	anim_wait 8
;.loop
;	anim_sound 0, 1, SFX_SWEET_KISS_2
;	anim_obj ANIM_OBJ_ABSORB, 128, 48, $2
;	anim_wait 5
;	anim_sound 0, 1, SFX_SWEET_KISS_2
;	anim_obj ANIM_OBJ_ABSORB, 136, 64, $3
;	anim_wait 5
;	anim_sound 0, 1, SFX_SWEET_KISS_2
;	anim_obj ANIM_OBJ_ABSORB, 136, 32, $4
;	anim_wait 5
;	anim_loop 5, .loop
;	anim_wait 32
;	anim_bgeffect ANIM_BG_CYCLE_MID_OBPALS_GRAY_AND_YELLOW, $0, $0, $0
;	anim_jump BattleAnim_Glimmer_branch3

;BattleAnim_PlayRough:
;	anim_1gfx ANIM_GFX_SPEED
;	anim_sound 6, 2, SFX_THROW_BALL
;	anim_bgeffect ANIM_BG_HIDE_MON, $0, $1, $0
;	anim_obj ANIM_OBJ_SPEED_LINE, 24, 88, $2
;	anim_obj ANIM_OBJ_SPEED_LINE, 32, 88, $1
;	anim_obj ANIM_OBJ_SPEED_LINE, 40, 88, $0
;	anim_obj ANIM_OBJ_SPEED_LINE, 48, 88, $80
;	anim_obj ANIM_OBJ_SPEED_LINE, 56, 88, $81
;	anim_obj ANIM_OBJ_SPEED_LINE, 64, 88, $82
;	anim_wait 12
;	anim_3gfx ANIM_GFX_STARS, ANIM_GFX_HIT, ANIM_GFX_HEARTS
;	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $55, $2, $0
;.loop
;	anim_sound 0, 1, SFX_BONE_CLUB
;	anim_obj ANIM_OBJ_STAR_BURST, 128, 48, $28
;	anim_obj ANIM_OBJ_HIT_YFIX, 128, 48, $0
;	anim_wait 3
;	anim_obj ANIM_OBJ_HEART_BURST, 144, 64, $5c
;	anim_wait 3
;	anim_obj ANIM_OBJ_STAR_BURST, 144, 64, $10
;	anim_obj ANIM_OBJ_HIT_YFIX, 144, 64, $0
;	anim_wait 3
;	anim_sound 0, 1, SFX_DOUBLESLAP
;	anim_obj ANIM_OBJ_HEART_BURST, 120, 52, $e8
;	anim_wait 3
;	anim_obj ANIM_OBJ_STAR_BURST, 120, 52, $9c
;	anim_obj ANIM_OBJ_HIT_YFIX, 120, 52, $0
;	anim_wait 3
;	anim_obj ANIM_OBJ_STAR_BURST, 152, 48, $d0
;	anim_wait 3
;	anim_sound 6, 2, SFX_SLUDGE_BOMB
;	anim_obj ANIM_OBJ_HEART_BURST, 152, 48, $1c
;	anim_obj ANIM_OBJ_HIT_YFIX, 152, 48, $0
;	anim_wait 3
;	anim_obj ANIM_OBJ_STAR_BURST, 136, 56, $50
;	anim_wait 3
;	anim_sound 0, 1, SFX_KARATE_CHOP
;	anim_obj ANIM_OBJ_HEART_BURST, 136, 56, $dc
;	anim_obj ANIM_OBJ_HIT_YFIX, 136, 56, $0
;	anim_wait 3
;	anim_obj ANIM_OBJ_STAR_BURST, 128, 48, $90
;	anim_loop 2, .loop
;	anim_bgeffect ANIM_BG_SHOW_MON, $0, $1, $0
;	anim_wait 1
;	anim_ret

;BattleAnim_FairyWind:
;	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_BRIGHT
;	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_PINK
;	anim_2gfx ANIM_GFX_SPEED, ANIM_GFX_HAZE
;	anim_bgeffect ANIM_BG_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
;	anim_sound 0, 1, SFX_GAME_FREAK_LOGO_GS
;.loop
;	anim_obj ANIM_OBJ_SHOOTING_MIST, 64, 80, $4
;	anim_wait 4
;	anim_obj ANIM_OBJ_SHOOTING_SPARKLE, 64, 88, $4
;	anim_wait 4
;	anim_obj ANIM_OBJ_SHOOTING_MIST, 64, 96, $4
;	anim_wait 4
;	anim_obj ANIM_OBJ_SHOOTING_SPARKLE, 64, 80, $4
;	anim_wait 4
;	anim_obj ANIM_OBJ_SHOOTING_MIST, 64, 88, $4
;	anim_wait 4
;	anim_obj ANIM_OBJ_SHOOTING_SPARKLE, 64, 96, $4
;	anim_wait 4
;	anim_loop 2, .loop
;	anim_bgeffect ANIM_BG_FADE_MON_TO_BLACK_REPEATING, $0, $0, $40
;	anim_wait 64
;	anim_ret

;BattleAnim_Moonblast:
;	anim_4gfx ANIM_GFX_MOON, ANIM_GFX_SPEED, ANIM_GFX_GLOW, ANIM_GFX_SHINE
;	anim_setobjpal PAL_BATTLE_OB_RED, PAL_BTLCUSTOM_MOON
;	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_MOON
;	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_MOONBLAST
;	anim_bgeffect ANIM_BG_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $4, $0
;	anim_bgeffect ANIM_BG_SHOW_MON, $0, $0, $0
;	anim_bgeffect ANIM_BG_SHOW_MON, $0, $1, $0
;	anim_bgeffect ANIM_BG_CYCLE_BGPALS_INVERTED, $0, $4, $0
;	anim_clearenemyhud
;	anim_bgp $1b
;	anim_sound 0, 1, SFX_GAME_FREAK_LOGO_GS
;	anim_obj ANIM_OBJ_RISING_MOON, 90, 84, $30
;	anim_wait 40
;.loop
;	anim_obj ANIM_OBJ_RISING_SPARKLE, 44, 108, $6
;	anim_wait 2
;	anim_obj ANIM_OBJ_RISING_SPARKLE, 36, 108, $6
;	anim_wait 2
;	anim_obj ANIM_OBJ_RISING_SPARKLE, 52, 108, $6
;	anim_wait 2
;	anim_obj ANIM_OBJ_RISING_SPARKLE, 28, 108, $6
;	anim_wait 2
;	anim_obj ANIM_OBJ_RISING_SPARKLE, 60, 108, $6
;	anim_wait 2
;	anim_obj ANIM_OBJ_RISING_SPARKLE, 20, 108, $6
;	anim_wait 2
;	anim_obj ANIM_OBJ_RISING_SPARKLE, 68, 108, $6
;	anim_wait 2
;	anim_loop 4, .loop
;	anim_wait 8
;	anim_sound 0, 1, SFX_GIGA_DRAIN
;	anim_obj ANIM_OBJ_FLASH_CANNON, 48, 96, $4
;	anim_wait 16
;	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_MOONBLAST
;	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $14, $2, $0
;	anim_sound 0, 0, SFX_METRONOME
;	anim_obj ANIM_OBJ_GLIMMER_YFIX, 132, 28, $0
;	anim_wait 5
;	anim_obj ANIM_OBJ_GLIMMER_YFIX, 112, 60, $0
;	anim_wait 5
;	anim_obj ANIM_OBJ_GLIMMER_YFIX, 144, 68, $0
;	anim_wait 5
;	anim_obj ANIM_OBJ_PULSING_SPARKLE_YFIX, 148, 32, $0
;	anim_wait 6
;	anim_obj ANIM_OBJ_PULSING_SPARKLE_YFIX, 116, 64, $0
;	anim_wait 6
;	anim_obj ANIM_OBJ_PULSING_SPARKLE_YFIX, 148, 64, $0
;	anim_wait 6
;	anim_obj ANIM_OBJ_PULSING_SPARKLE_YFIX, 116, 32, $0
;	anim_wait 6
;	anim_obj ANIM_OBJ_PULSING_SPARKLE_YFIX, 132, 48, $0
;	anim_wait 32
;	anim_ret

;BattleAnim_Boomburst:
;	anim_1gfx ANIM_GFX_BIG_WHIP
;	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_GRAY
;	anim_bgp $f8
;	anim_bgeffect ANIM_BG_CYCLE_MID_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
;	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $F0, $4, $0
;.loop
;	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $8, $2
;	anim_sound 0, 1, SFX_BOAT
;	anim_obj ANIM_OBJ_SEED_FLARE_NW, 48, 96, $28
;	anim_obj ANIM_OBJ_SEED_FLARE_NE, 48, 96, $38
;	anim_obj ANIM_OBJ_SEED_FLARE_SE, 48, 96, $8
;	anim_obj ANIM_OBJ_SEED_FLARE_SW, 48, 96, $18
;	anim_wait 10
;	anim_sound 0, 1, SFX_BOAT
;	anim_obj ANIM_OBJ_SEED_FLARE_NW, 48, 96, $2c
;	anim_obj ANIM_OBJ_SEED_FLARE_NE, 48, 96, $3c
;	anim_obj ANIM_OBJ_SEED_FLARE_SE, 48, 96, $c
;	anim_obj ANIM_OBJ_SEED_FLARE_SW, 48, 96, $1c
;	anim_wait 10
;	anim_sound 0, 1, SFX_BOAT
;	anim_obj ANIM_OBJ_SEED_FLARE_E, 48, 96, $0
;	anim_obj ANIM_OBJ_SEED_FLARE_S, 48, 96, $10
;	anim_obj ANIM_OBJ_SEED_FLARE_W, 48, 96, $20
;	anim_obj ANIM_OBJ_SEED_FLARE_N, 48, 96, $30
;	anim_wait 10
;	anim_sound 0, 1, SFX_BOAT
;	anim_obj ANIM_OBJ_SEED_FLARE_E, 48, 96, $4
;	anim_obj ANIM_OBJ_SEED_FLARE_S, 48, 96, $14
;	anim_obj ANIM_OBJ_SEED_FLARE_W, 48, 96, $24
;	anim_obj ANIM_OBJ_SEED_FLARE_N, 48, 96, $34
;	anim_wait 10
;	anim_loop 2, .loop
;	anim_wait 64
;	anim_ret

;BattleAnim_KingsShield:
;	anim_clearenemyhud
;	anim_bgeffect ANIM_BG_SHOW_MON, $0, $0, $0
;	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_KINGS_SHIELD
;	anim_1gfx ANIM_GFX_KINGS_SHIELD
;	anim_bgeffect ANIM_BG_CYCLE_MID_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
;	anim_obj ANIM_OBJ_KINGS_SHIELD, 80, 80, $0
;	anim_sound 0, 0, SFX_PROTECT
;	anim_wait 96
;	anim_ret


;BattleAnim_DazzlingGleam:
;	anim_3gfx ANIM_GFX_HIT_2, ANIM_GFX_SHINE, ANIM_GFX_SPEED
;	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_AURORA
;	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_AURORA
;	anim_sound 0, 1, SFX_MOONLIGHT
;	anim_bgeffect ANIM_BG_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
;	anim_bgeffect ANIM_BG_ALTERNATE_HUES, $0, $2, $0
;	anim_obj ANIM_OBJ_DAZZLE, 44, 88, $0
;	anim_obj ANIM_OBJ_DAZZLE, 44, 88, $8
;	anim_obj ANIM_OBJ_DAZZLE, 44, 88, $10
;	anim_obj ANIM_OBJ_DAZZLE, 44, 88, $18
;	anim_obj ANIM_OBJ_DAZZLE, 44, 88, $20
;	anim_obj ANIM_OBJ_DAZZLE, 44, 88, $28
;	anim_obj ANIM_OBJ_DAZZLE, 44, 88, $30
;	anim_obj ANIM_OBJ_DAZZLE, 44, 88, $38
;	anim_wait 48
;	anim_setbgpal PAL_BATTLE_BG_PLAYER, PAL_BTLCUSTOM_VERY_BRIGHT_PINK
;	anim_setbgpal PAL_BATTLE_BG_ENEMY, PAL_BTLCUSTOM_VERY_BRIGHT_PINK
;	anim_setbgpal PAL_BATTLE_BG_ENEMY_HP, PAL_BTLCUSTOM_VERY_BRIGHT_PINK
;	anim_setbgpal PAL_BATTLE_BG_PLAYER_HP, PAL_BTLCUSTOM_VERY_BRIGHT_PINK
;	anim_setbgpal PAL_BATTLE_BG_EXP, PAL_BTLCUSTOM_VERY_BRIGHT_PINK
;	anim_setbgpal PAL_BATTLE_BG_5, PAL_BTLCUSTOM_VERY_BRIGHT_PINK
;	anim_setbgpal PAL_BATTLE_BG_6, PAL_BTLCUSTOM_VERY_BRIGHT_PINK
;	anim_setbgpal PAL_BATTLE_BG_TEXT, PAL_BTLCUSTOM_VERY_BRIGHT_PINK
;	anim_incbgeffect ANIM_BG_ALTERNATE_HUES
;	anim_sound 0, 1, SFX_FLASH
;	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $6, $20
;	anim_wait 4
;	anim_bgeffect ANIM_BG_CYCLE_MON_LIGHT_DARK_REPEATING, $0, $1, $20
;	anim_obj ANIM_OBJ_GLIMMER, 24, 64, $0
;	anim_wait 5
;	anim_obj ANIM_OBJ_GLIMMER, 56, 104, $0
;	anim_wait 5
;	anim_obj ANIM_OBJ_HIT_BIG_YFIX, 136, 56, $0
;	anim_obj ANIM_OBJ_GLIMMER, 24, 104, $0
;	anim_wait 5
;	anim_obj ANIM_OBJ_GLIMMER, 56, 64, $0
;	anim_wait 5
;	anim_obj ANIM_OBJ_GLIMMER, 40, 84, $0
;	anim_wait 5
;	anim_wait 32
;	anim_ret

;BattleAnim_Nuzzle:
;	anim_2gfx ANIM_GFX_HIT_2, ANIM_GFX_LIGHTNING 
;	anim_bgeffect ANIM_BG_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
;	anim_sound 0, 0, SFX_ZAP_CANNON
;	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $4, $3
;	anim_obj ANIM_OBJ_THUNDER_WAVE, 48, 92, $0
;	anim_wait 24
;	anim_setobj $1, $3
;	anim_wait 1
;	anim_call BattleAnim_TargetObj_2Row_1
;	anim_sound 0, 0, SFX_SQUEAK
;	anim_bgeffect ANIM_BG_WOBBLE_MON, $0, $1, $0
;	anim_wait 16
;	anim_sound 0, 0, SFX_SQUEAK
;	anim_wait 16
;	anim_incbgeffect ANIM_BG_WOBBLE_MON
;	anim_bgeffect ANIM_BG_SHOW_MON, $0, $0, $0
;	anim_wait 4
;	anim_clearobjs
;	anim_bgeffect ANIM_BG_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
;	anim_bgeffect ANIM_BG_SHOW_MON, $0, $1, $0
;	anim_wait 1
;	anim_sound 0, 0, SFX_POUND
;	anim_obj ANIM_OBJ_HIT, 136, 56, $0
;	anim_wait 4
;	anim_sound 0, 0, SFX_ZAP_CANNON
;	anim_obj ANIM_OBJ_THUNDERSHOCK_SPARKS, 136, 56, $0
;	anim_wait 32
;	anim_ret


; - Gen 7 Anims

;BattleAnim_ShoreUp:
;	anim_3gfx ANIM_GFX_POWDER, ANIM_GFX_SAND, ANIM_GFX_SHINE
;	anim_bgeffect ANIM_BG_FADE_MON_TO_LIGHT_REPEATING, $0, $1, $40
;	anim_obj ANIM_OBJ_DIG_PILE, 48, 104, $0
;.loop
;	anim_sound 0, 0, SFX_MENU
;	anim_obj ANIM_OBJ_SAND_TOMB, 48, 104, $0
;	anim_wait 4
;	anim_sound 0, 0, SFX_MENU
;	anim_obj ANIM_OBJ_SAND_TOMB, 48, 96, $0
;	anim_wait 4
;	anim_loop 7, .loop
;	anim_wait 40
;	anim_incbgeffect ANIM_BG_FADE_MON_TO_LIGHT_REPEATING
;	anim_call BattleAnim_ShowMon_0_3
;	anim_jump BattleAnim_Glimmer_branch3

;BattleAnim_BanefulBunker:
;	anim_clearenemyhud
;	anim_bgeffect ANIM_BG_SHOW_MON, $0, $0, $0
;	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_PURPLE
;	anim_2gfx ANIM_GFX_SPIKE_SHIELD, ANIM_GFX_POISON
;	anim_sound 0, 1, SFX_HORN_ATTACK
;	anim_obj ANIM_OBJ_SPIKE_SHIELD_NNE, 67, 68, $31
;	anim_wait 8
;	anim_sound 0, 1, SFX_HORN_ATTACK
;	anim_obj ANIM_OBJ_SPIKE_SHIELD_N, 52, 63, $34
;	anim_wait 8
;	anim_sound 0, 1, SFX_HORN_ATTACK
;	anim_obj ANIM_OBJ_SPIKE_SHIELD_NEE, 85, 94, $38
;	anim_wait 8
;	anim_sound 0, 1, SFX_HORN_ATTACK
;	anim_obj ANIM_OBJ_SPIKE_SHIELD_NE, 80, 78, $3a
;	anim_wait 8
;	anim_sound 0, 1, SFX_HORN_ATTACK
;	anim_obj ANIM_OBJ_SPIKE_SHIELD_E, 84, 98, $3f
;	anim_wait 8
;	anim_sound 0, 1, SFX_TOXIC
;	anim_obj ANIM_OBJ_SLUDGE_2, 56, 66, $0
;	anim_wait 8
;	anim_sound 0, 1, SFX_TOXIC
;	anim_obj ANIM_OBJ_SLUDGE_2, 86, 98, $0
;	anim_wait 8
;	anim_sound 0, 1, SFX_TOXIC
;	anim_obj ANIM_OBJ_SLUDGE_2, 76, 78, $0
;	anim_wait 56
;	anim_ret

;BattleAnim_Leafage:
;	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_GREEN
;	anim_1gfx ANIM_GFX_PLANT
;	anim_sound 0, 0, SFX_VINE_WHIP
;.loop
;	anim_sound 3, 0, SFX_VINE_WHIP
;	anim_obj ANIM_OBJ_LEAFAGE, 64, 80, $18
;	anim_wait 8
;	anim_sound 3, 0, SFX_VINE_WHIP
;	anim_obj ANIM_OBJ_LEAFAGE, 64, 96, $18
;	anim_wait 8
;	anim_sound 3, 0, SFX_VINE_WHIP
;	anim_obj ANIM_OBJ_LEAFAGE, 64, 88, $18
;	anim_wait 8
;	anim_sound 3, 0, SFX_VINE_WHIP
;	anim_obj ANIM_OBJ_LEAFAGE, 64, 104, $18
;	anim_wait 8
;	anim_loop 2, .loop
;	anim_wait 32
;	anim_ret

;BattleAnim_ToxicThread:
;	anim_2gfx ANIM_GFX_WEB, ANIM_GFX_POISON
;	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_PURPLE
;	anim_bgeffect ANIM_BG_CYCLE_MID_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
;	anim_sound 6, 2, SFX_MENU
;	anim_obj ANIM_OBJ_STRING_SHOT, 64, 80, $0
;	anim_wait 4
;	anim_sound 0, 1, SFX_MENU
;	anim_obj ANIM_OBJ_STRING_SHOT, 132, 48, $1
;	anim_wait 4
;	anim_sound 6, 2, SFX_MENU
;	anim_obj ANIM_OBJ_STRING_SHOT, 64, 88, $0
;	anim_wait 4
;	anim_sound 0, 1, SFX_MENU
;	anim_obj ANIM_OBJ_STRING_SHOT, 132, 64, $1
;	anim_wait 4
;	anim_sound 6, 2, SFX_MENU
;	anim_obj ANIM_OBJ_STRING_SHOT, 64, 84, $0
;	anim_wait 4
;	anim_sound 0, 1, SFX_MENU
;	anim_obj ANIM_OBJ_STRING_SHOT, 132, 56, $2
;	anim_wait 12
;	anim_jump BattleAnim_Poison_Bubble_branch_short_3

;BattleAnim_PollenPuff:
;	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_POLLEN_PUFF
;	anim_bgeffect ANIM_BG_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $6, $0
;	anim_2gfx ANIM_GFX_SMOKE_PUFF_BIG, ANIM_GFX_SMOKE
;	anim_call BattleAnim_TargetObj_2Row_3
;	anim_bgeffect ANIM_BG_BOUNCE_DOWN, $0, $1, $0
;	anim_sound 0, 0, SFX_RETURN
;	anim_wait 64
;	anim_incbgeffect ANIM_BG_BOUNCE_DOWN
;	anim_call BattleAnim_ShowMon_0_3
;	anim_clearobjs
;	anim_wait 4
;	anim_bgeffect ANIM_BG_ALTERNATE_HUES, $0, $2, $0
;	anim_sound 0, 0, SFX_SWEET_SCENT
;	anim_obj ANIM_OBJ_POLLEN_PUFF, 64, 92, $10
;	anim_wait 32
;	anim_sound 0, 1, SFX_JUMP_OVER_LEDGE
;	anim_obj ANIM_OBJ_BALL_POOF, 132, 56, $10
;	anim_wait 24
;	anim_ret

;BattleAnim_AnchorShot:
;	anim_1gfx ANIM_GFX_ANCHOR_SHOT
;	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_BRIGHT
;	anim_obj ANIM_OBJ_ANCHOR_SHOT, 80, 84, $0
;.loop
;	anim_sound 0, 1, SFX_KARATE_CHOP
;	anim_wait 2
;	anim_loop 6, .loop
;	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $4, $2
;	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $ff, $2, $0
;	anim_sound 0, 1, SFX_BIND
;	anim_obj ANIM_OBJ_CHAINS1, 132, 64, $0
;	anim_wait 8
;	anim_obj ANIM_OBJ_CHAINS2, 132, 52, $0
;	anim_wait 8
;	anim_obj ANIM_OBJ_CHAINS1, 132, 40, $0
;	anim_wait 64
;	anim_ret

;BattleAnim_BeakBlast:
;	anim_if_param_equal $1, BattleAnim_BeakBlast_branch
;	anim_3gfx ANIM_GFX_SMOKE_PUFF, ANIM_GFX_AURA_SPHERE, ANIM_GFX_FIRE
;	anim_setobjpal PAL_BATTLE_OB_RED, PAL_BTLCUSTOM_FIRE
;	anim_setobjpal PAL_BATTLE_BG_USER, PAL_BTLCUSTOM_FIRE
;	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_HEAT_BG
;	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $60, $2, $0
;	anim_sound 0, 0, SFX_SWORDS_DANCE
;	anim_wait 48
;	anim_bgeffect ANIM_BG_FADE_MON_TO_LIGHT_REPEATING, $0, $1, $40
;	anim_bgeffect ANIM_BG_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
;	anim_sound 0, 1, SFX_TACKLE
;	anim_obj ANIM_OBJ_AURA_SPHERE, 64, 88, $6
;	anim_wait 12
;	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $08, $2, $0
;	anim_sound 0, 1, SFX_KARATE_CHOP
;	anim_obj ANIM_OBJ_RADIAL_FLAME_SLOW, 136, 56, $0
;	anim_wait 1
;	anim_obj ANIM_OBJ_RADIAL_FLAME_SLOW, 136, 56, $28
;	anim_wait 1
;	anim_obj ANIM_OBJ_RADIAL_FLAME_SLOW, 136, 56, $30
;	anim_wait 1
;	anim_obj ANIM_OBJ_RADIAL_FLAME_SLOW, 136, 56, $38
;	anim_wait 1
;	anim_obj ANIM_OBJ_RADIAL_FLAME_SLOW, 136, 56, $20
;	anim_wait 1
;	anim_obj ANIM_OBJ_RADIAL_FLAME_SLOW, 136, 56, $8
;	anim_wait 1
;	anim_obj ANIM_OBJ_RADIAL_FLAME_SLOW, 136, 56, $18
;	anim_wait 1
;	anim_obj ANIM_OBJ_RADIAL_FLAME_SLOW, 136, 56, $4
;	anim_wait 1
;	anim_obj ANIM_OBJ_RADIAL_FLAME_SLOW, 136, 56, $2b
;	anim_wait 1
;	anim_obj ANIM_OBJ_RADIAL_FLAME_SLOW, 136, 56, $14
;	anim_wait 1
;	anim_obj ANIM_OBJ_RADIAL_FLAME_SLOW, 136, 56, $3b
;	anim_wait 1
;	anim_obj ANIM_OBJ_RADIAL_FLAME_SLOW, 136, 56, $24
;	anim_wait 1
;	anim_obj ANIM_OBJ_RADIAL_FLAME_SLOW, 136, 56, $b
;	anim_wait 32
;	anim_incbgeffect ANIM_BG_FADE_MON_TO_LIGHT_REPEATING
;	anim_setbgpal PAL_BATTLE_BG_USER, PAL_BTLCUSTOM_DEFAULT
;	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_BRIGHT
;	anim_sound 0, 1, SFX_POISON_STING
;.loop
;	anim_obj ANIM_OBJ_SCALD_STEAM, 36, 84, $30
;	anim_wait 1
;	anim_obj ANIM_OBJ_SCALD_STEAM, 60, 96, $30
;	anim_wait 4
;	anim_loop 6, .loop
;	anim_wait 32
;	anim_ret

;BattleAnim_BeakBlast_branch:
;	anim_1gfx ANIM_GFX_FIRE
;	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_FIRE
;	anim_bgeffect ANIM_BG_FADE_MON_TO_LIGHT_REPEATING, $0, $1, $40
;.loop
;	anim_sound 0, 0, SFX_SWORDS_DANCE
;	anim_obj ANIM_OBJ_FLARE_BLITZ, 56, 108, $6
;	anim_wait 2
;	anim_obj ANIM_OBJ_FLARE_BLITZ, 52, 108, $6
;	anim_wait 2
;	anim_obj ANIM_OBJ_FLARE_BLITZ, 60, 108, $8
;	anim_wait 2
;	anim_obj ANIM_OBJ_FLARE_BLITZ, 48, 108, $8
;	anim_wait 2
;	anim_obj ANIM_OBJ_FLARE_BLITZ, 68, 108, $6
;	anim_wait 2
;	anim_obj ANIM_OBJ_FLARE_BLITZ, 44, 108, $8
;	anim_wait 2
;	anim_obj ANIM_OBJ_FLARE_BLITZ, 72, 108, $8
;	anim_wait 2
;	anim_loop 3, .loop
;	anim_setobjpal PAL_BATTLE_BG_USER, PAL_BTLCUSTOM_FIRE
;	anim_wait 48
;	anim_ret

;BattleAnim_DragonHammer:
;	anim_2gfx ANIM_GFX_HIT, ANIM_GFX_SMOKE_PUFF
;	anim_call BattleAnim_TargetObj_2Row_1
;	anim_bgeffect ANIM_BG_TACKLE, $0, $1, $0
;	anim_wait 4
;	anim_sound 0, 1, SFX_TACKLE
;	anim_wait 8
;	anim_call BattleAnim_ShowMon_0_1
;	anim_clearobjs
;	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_DRAGONBREATH
;	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_BRIGHT
;	anim_sound 0, 0, SFX_RAZOR_WIND
;	anim_obj ANIM_OBJ_HIT_YFIX, 136, 08, $0
;	anim_wait 1
;	anim_obj ANIM_OBJ_HIT_YFIX, 136, 16, $0
;	anim_wait 1
;	anim_obj ANIM_OBJ_HIT_YFIX, 136, 24, $0
;	anim_wait 1
;	anim_obj ANIM_OBJ_HIT_YFIX, 136, 32, $0
;	anim_wait 1
;	anim_obj ANIM_OBJ_HIT_YFIX, 136, 40, $0
;	anim_wait 1
;	anim_obj ANIM_OBJ_HIT_YFIX, 136, 48, $0
;	anim_wait 1
;	anim_sound 0, 1, SFX_EGG_BOMB
;	anim_obj ANIM_OBJ_HIT_BIG_YFIX, 136, 60, $0
;	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $4, $2
;	anim_bgeffect ANIM_BG_SHAKE_SCREEN_Y, $60, $2, $20
;	anim_obj ANIM_OBJ_IMPACT_SMOKE, 116, 62, $28
;	anim_obj ANIM_OBJ_IMPACT_SMOKE, 156, 62, $38
;	anim_wait 1
;	anim_obj ANIM_OBJ_IMPACT_SMOKE, 116, 62, $28
;	anim_obj ANIM_OBJ_IMPACT_SMOKE, 156, 62, $38
;	anim_wait 1
;	anim_obj ANIM_OBJ_IMPACT_SMOKE, 116, 62, $28
;	anim_obj ANIM_OBJ_IMPACT_SMOKE, 156, 62, $38
;	anim_wait 44
;	anim_ret

;BattleAnim_ShellTrap:
;	anim_if_param_equal $1, BattleAnim_ShellTrap_branch
;	anim_3gfx ANIM_GFX_EXPLOSION, ANIM_GFX_FIRE, ANIM_GFX_SHELL_TRAP
;	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_HEAT_BG
;	anim_setobjpal PAL_BATTLE_OB_RED, PAL_BTLCUSTOM_HEAT_BG
;	anim_bgeffect ANIM_BG_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $4, $0
;	anim_sound 0, 0, SFX_SWORDS_DANCE
;	anim_obj ANIM_OBJ_SHELL_TRAP, 48, 92, $0
;	anim_wait 16
;	anim_sound 0, 0, SFX_EMBER
;	anim_incobj 1
;	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $4, $2
;	anim_bgeffect ANIM_BG_CYCLE_BGPALS_INVERTED, $0, $4, $0
;	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $ff, $4, $10
;	anim_obj ANIM_OBJ_RADIAL_FLAME, 48, 92, $0
;	anim_wait 2
;	anim_obj ANIM_OBJ_RADIAL_FLAME, 48, 92, $28
;	anim_wait 2
;	anim_obj ANIM_OBJ_RADIAL_FLAME, 48, 92, $10
;	anim_wait 2
;	anim_obj ANIM_OBJ_RADIAL_FLAME, 48, 92, $8
;	anim_wait 2
;	anim_obj ANIM_OBJ_RADIAL_FLAME, 48, 92, $18
;	anim_wait 2
;	anim_obj ANIM_OBJ_RADIAL_FLAME, 48, 92, $38
;	anim_wait 2
;	anim_obj ANIM_OBJ_RADIAL_FLAME, 48, 92, $2b
;	anim_wait 2
;.loop
;	anim_obj ANIM_OBJ_SHELL_TRAP_SHOT, 52, 88, $18
;	anim_wait 12
;	anim_obj ANIM_OBJ_SHELL_TRAP_SHOT, 64, 92, $18
;	anim_sound 0, 1, SFX_EGG_BOMB
;	anim_obj ANIM_OBJ_EXPLOSION2, 130, 50, $0
;	anim_wait 12
;	anim_obj ANIM_OBJ_SHELL_TRAP_SHOT, 56, 84, $18
;	anim_sound 0, 1, SFX_EGG_BOMB
;	anim_obj ANIM_OBJ_EXPLOSION2, 136, 56, $0
;	anim_wait 12
;	anim_sound 0, 1, SFX_EGG_BOMB
;	anim_obj ANIM_OBJ_EXPLOSION2, 128, 48, $0
;	anim_loop 2, .loop
;	anim_wait 16
;	anim_ret

;BattleAnim_ShellTrap_branch:
;	anim_1gfx ANIM_GFX_SHELL_TRAP
;	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_HEAT_BG
;	anim_bgeffect ANIM_BG_FADE_MON_TO_LIGHT_REPEATING, $0, $1, $40
;	anim_bgeffect ANIM_BG_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
;	anim_obj ANIM_OBJ_SHELL_TRAP, 48, 92, $0
;.loop
;	anim_sound 0, 0, SFX_SWORDS_DANCE
;	anim_wait 14
;	anim_loop 3, .loop
;	anim_wait 48
;	anim_ret

;BattleAnim_PsychicFangs:
;	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_PSYCHO_BOOST_2
;	anim_3gfx ANIM_GFX_CUT, ANIM_GFX_HIT, ANIM_GFX_FIRE
;	anim_battlergfx_1row
;	anim_obj ANIM_OBJ_BITE, 136, 56, $98
;	anim_obj ANIM_OBJ_BITE, 136, 56, $18
;	anim_wait 8
;	anim_sound 0, 1, SFX_BITE
;	anim_obj ANIM_OBJ_HIT_BIG, 136, 56, $18
;	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $14, $2, $0
;	anim_wait 4
;	anim_clearobjs
;	anim_bgeffect ANIM_BG_BATTLEROBJ_2ROW, $0, $1, $0
;	anim_sound 0, 1, SFX_BIND
;	anim_bgeffect ANIM_BG_FADE_MON_TO_BLACK_REPEATING, $0, $0, $40
;	anim_bgeffect ANIM_BG_NIGHT_SHADE, $0, $0, $8
;	anim_wait 64
;	anim_incbgeffect ANIM_BG_NIGHT_SHADE
;	anim_call BattleAnim_ShowMon_1_1
;	anim_ret

;BattleAnim_ShadowBone:
;	anim_3gfx ANIM_GFX_HIT_2, ANIM_GFX_MISC, ANIM_GFX_FIRE
;	anim_setobjpal PAL_BATTLE_OB_RED, PAL_BTLCUSTOM_WILL_O_WISP
;	anim_bgp $1b
;	anim_sound 6, 2, SFX_HYDRO_PUMP
;	anim_obj ANIM_OBJ_SHADOW_BONE, 64, 88, $2
;	anim_wait 32
;	anim_sound 0, 1, SFX_CURSE
;	anim_obj ANIM_OBJ_HIT_YFIX, 120, 48, $0
;.loop
;	anim_obj ANIM_OBJ_BURNED, 116, 52, $10
;	anim_obj ANIM_OBJ_BURNED, 148, 52, $90
;	anim_wait 6
;	anim_loop 6, .loop
;	anim_sound 0, 1, SFX_STOMP
;	anim_obj ANIM_OBJ_HIT_YFIX, 144, 64, $0
;	anim_wait 32
;	anim_ret

;BattleAnim_Accelerock:
;	anim_3gfx ANIM_GFX_HIT_2, ANIM_GFX_SPEED, ANIM_GFX_ROCKS
;	anim_sound 0, 0, SFX_MENU
;	anim_bgeffect ANIM_BG_HIDE_MON, $0, $1, $0
;	anim_obj ANIM_OBJ_SPEED_LINE, 24, 88, $2
;	anim_obj ANIM_OBJ_SPEED_LINE, 32, 88, $1
;	anim_obj ANIM_OBJ_SPEED_LINE, 40, 88, $0
;	anim_obj ANIM_OBJ_SPEED_LINE, 48, 88, $80
;	anim_obj ANIM_OBJ_SPEED_LINE, 56, 88, $81
;	anim_obj ANIM_OBJ_SPEED_LINE, 64, 88, $82
;	anim_wait 12
;	anim_sound 0, 1, SFX_KARATE_CHOP
;	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $6, $1, $0
;	anim_obj ANIM_OBJ_HIT_YFIX, 136, 56, $0
;	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 56, $5c
;	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 56, $e8
;	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 56, $d0
;	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 56, $50
;	anim_wait 32
;	anim_wait 8
;	anim_bgeffect ANIM_BG_SHOW_MON, $0, $1, $0
;	anim_wait 16
;	anim_ret

;BattleAnim_Liquidation:
;	anim_3gfx ANIM_GFX_HIT_2, ANIM_GFX_CHARGE, ANIM_GFX_BUBBLE
;	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_WATER
;	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_WATER
;	anim_setobjpal PAL_BATTLE_OB_BLUE, PAL_BTLCUSTOM_BUBBLE
;	anim_bgeffect ANIM_BG_CYCLE_MID_OBPALS_GRAY_AND_YELLOW, $0, $4, $0
;	anim_call BattleAnim_TargetObj_2Row_1
;	anim_wait 1
;	anim_bgeffect ANIM_BG_TACKLE, $0, $1, $0
;	anim_sound 0, 1, SFX_TACKLE
;	anim_wait 16
;	anim_bgeffect ANIM_BG_SHOW_MON, $0, $0, $0
;	anim_wait 4
;	anim_clearobjs
;	anim_bgeffect ANIM_BG_SHOW_MON, $0, $1, $0
;	anim_wait 1
;	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $24, $2, $0
;	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $4, $2
;	anim_sound 0, 0, SFX_KARATE_CHOP
;	anim_obj ANIM_OBJ_HIT_YFIX, 148, 36, $0
;	anim_obj ANIM_OBJ_BUBBLE_SPLASH, 140, 64, $5c
;	anim_wait 4
;	anim_sound 0, 0, SFX_KARATE_CHOP
;	anim_obj ANIM_OBJ_HIT_YFIX, 116, 68, $0
;	anim_obj ANIM_OBJ_BUBBLE_SPLASH, 140, 64, $e8
;	anim_wait 4
;	anim_sound 0, 0, SFX_KARATE_CHOP
;	anim_obj ANIM_OBJ_HIT_YFIX, 148, 68, $0
;	anim_obj ANIM_OBJ_BUBBLE_SPLASH, 140, 64, $d0
;	anim_wait 4
;	anim_sound 0, 0, SFX_KARATE_CHOP
;	anim_obj ANIM_OBJ_HIT_YFIX, 116, 36, $0
;	anim_obj ANIM_OBJ_BUBBLE_SPLASH, 140, 64, $50
;	anim_wait 4
;	anim_sound 0, 0, SFX_KARATE_CHOP
;	anim_obj ANIM_OBJ_HIT_YFIX, 132, 52, $0
;	anim_obj ANIM_OBJ_BUBBLE_SPLASH, 140, 64, $5c
;	anim_wait 4
;	anim_obj ANIM_OBJ_HIT_YFIX, 148, 36, $0
;	anim_obj ANIM_OBJ_BUBBLE_SPLASH, 140, 64, $5c
;	anim_wait 4
;	anim_obj ANIM_OBJ_HIT_YFIX, 116, 68, $0
;	anim_obj ANIM_OBJ_BUBBLE_SPLASH, 140, 64, $e8
;	anim_wait 4
;	anim_sound 0, 0, SFX_TOXIC
;	anim_bgeffect ANIM_BG_START_WATER, $0, $0, $0
;	anim_bgeffect ANIM_BG_BATTLEROBJ_2ROW, $0, $1, $0
;	anim_wait 1
;	anim_bgeffect ANIM_BG_WATER, $1c, $0, $0
;	anim_wait 7
;	anim_sound 0, 0, SFX_TOXIC
;	anim_wait 8
;	anim_sound 0, 0, SFX_TOXIC
;	anim_wait 11
;	anim_bgeffect ANIM_BG_SHOW_MON, $0, $1, $0
;	anim_bgeffect ANIM_BG_END_WATER, $0, $0, $0
;	anim_wait 16
;	anim_ret

;BattleAnim_SpectralThief:
;	anim_3gfx ANIM_GFX_ANGELS, ANIM_GFX_HIT, ANIM_GFX_SPECTRAL_THIEF
;	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_PAYBACK
;	anim_setobjpal PAL_BATTLE_OB_BLUE, PAL_BTLCUSTOM_SPECTRAL_THIEF
;	anim_bgp $f8
;	anim_sound 0, 0, SFX_WARP_TO
;	anim_bgeffect ANIM_BG_RETURN_MON, $0, $1, $0
;	anim_wait 16
;	anim_sound 6, 2, SFX_WHIRLWIND
;.loop
;	anim_obj ANIM_OBJ_SHADOW_SNEAK, 44, 120, $2
;	anim_wait 2
;	anim_loop 4, .loop
;	anim_wait 32
;	anim_wait 1
;	anim_bgeffect ANIM_BG_VIBRATE_MON, $0, $0, $0
;	anim_sound 0, 1, SFX_RAZOR_WIND
;	anim_obj ANIM_OBJ_SPECTRAL_THIEF, 140, 56, $30
;	anim_obj ANIM_OBJ_HIT_YFIX, 140, 44, $0
;	anim_wait 4
;	anim_sound 0, 1, SFX_RAZOR_WIND
;	anim_obj ANIM_OBJ_SPECTRAL_THIEF, 124, 56, $30
;	anim_obj ANIM_OBJ_HIT_YFIX, 124, 60, $0
;	anim_wait 4
;	anim_sound 0, 1, SFX_RAZOR_WIND
;	anim_obj ANIM_OBJ_SPECTRAL_THIEF, 144, 56, $30
;	anim_obj ANIM_OBJ_HIT_YFIX, 140, 60, $0
;	anim_wait 4
;	anim_sound 0, 1, SFX_RAZOR_WIND
;	anim_obj ANIM_OBJ_SPECTRAL_THIEF, 124, 56, $30
;	anim_obj ANIM_OBJ_HIT_YFIX, 124, 44, $0
;	anim_wait 4
;	anim_sound 0, 1, SFX_RAZOR_WIND
;	anim_obj ANIM_OBJ_SPECTRAL_THIEF, 132, 56, $30
;	anim_obj ANIM_OBJ_HIT_YFIX, 132, 52, $0
;	anim_wait 32
;	anim_bgeffect ANIM_BG_SHOW_MON, $0, $1, $0
;	anim_ret


; - Gen 8 Anims

;BattleAnim_SnapTrap:
;	anim_1gfx ANIM_GFX_SNAP_TRAP
;	anim_call BattleAnim_UserObj_1Row_3
;	anim_obj ANIM_OBJ_SNAP_TRAP, 132, 56, $0
;	anim_wait 32
;	anim_sound 0, 1, SFX_VICEGRIP
;	anim_wait 8
;	anim_bgeffect ANIM_BG_VIBRATE_MON, $0, $0, $0
;	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $4, $2
;	anim_wait 32
;	anim_call BattleAnim_ShowMon_1_3
;	anim_ret

;BattleAnim_AppleAcid:
;	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_APPLE_ACID
;	anim_1gfx ANIM_GFX_POISON
;.loop
;	anim_sound 6, 2, SFX_BUBBLEBEAM
;	anim_obj ANIM_OBJ_ACID, 64, 92, $10
;	anim_wait 6
;	anim_loop 6, .loop
;	anim_bgeffect ANIM_BG_FADE_MON_TO_BLACK_REPEATING, $0, $0, $40
;.loop2
;	anim_sound 6, 2, SFX_BUBBLEBEAM
;	anim_obj ANIM_OBJ_ACID, 64, 92, $10
;	anim_obj ANIM_OBJ_GASTRO_ACID, 128, 32, $11
;	anim_wait 2
;	anim_obj ANIM_OBJ_GASTRO_ACID, 144, 32, $0f
;	anim_wait 2
;	anim_obj ANIM_OBJ_GASTRO_ACID, 124, 32, $11
;	anim_wait 2
;	anim_sound 6, 2, SFX_BUBBLEBEAM
;	anim_obj ANIM_OBJ_ACID, 64, 92, $10
;	anim_obj ANIM_OBJ_GASTRO_ACID, 148, 32, $0f
;	anim_wait 2
;	anim_obj ANIM_OBJ_GASTRO_ACID, 120, 32, $11
;	anim_wait 2
;	anim_obj ANIM_OBJ_GASTRO_ACID, 152, 32, $0f
;	anim_wait 2
;	anim_loop 2, .loop2
;	anim_sound 6, 2, SFX_BUBBLEBEAM
;	anim_obj ANIM_OBJ_ACID, 64, 92, $10
;	anim_obj ANIM_OBJ_GASTRO_ACID, 132, 32, $11
;	anim_wait 2
;	anim_obj ANIM_OBJ_GASTRO_ACID, 140, 32, $0f
;	anim_wait 2
;	anim_obj ANIM_OBJ_GASTRO_ACID, 128, 32, $11
;	anim_wait 2
;	anim_obj ANIM_OBJ_GASTRO_ACID, 144, 32, $0f
;	anim_wait 2
;	anim_obj ANIM_OBJ_GASTRO_ACID, 124, 32, $11
;	anim_wait 64
;	anim_ret

;BattleAnim_GravApple:
;	anim_2gfx ANIM_GFX_APPLE, ANIM_GFX_BUBBLE
;	anim_setobjpal PAL_BATTLE_OB_BLUE, PAL_BTLCUSTOM_APPLE_ACID
;	anim_setobjpal PAL_BATTLE_OB_RED, PAL_BTLCUSTOM_GRAV_APPLE
;	anim_setobjpal PAL_BATTLE_OB_BROWN, PAL_BTLCUSTOM_GRAV_APPLE
;	anim_sound 0, 0, SFX_KINESIS
;	anim_wait 16
;	anim_obj ANIM_OBJ_GRAV_APPLE, 136, 230, $10
;	anim_wait 14
;	anim_clearobjs
;	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $4, $2
;	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $c, $1, $0
;	anim_sound 0, 0, SFX_STOMP
;	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 56, $5c
;	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 56, $e8
;	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 56, $d0
;	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 56, $50
;	anim_wait 6
;	anim_obj ANIM_OBJ_BUBBLE_SPLASH, 136, 56, $5c
;	anim_obj ANIM_OBJ_BUBBLE_SPLASH, 136, 56, $e8
;	anim_obj ANIM_OBJ_BUBBLE_SPLASH, 136, 56, $d0
;	anim_obj ANIM_OBJ_BUBBLE_SPLASH, 136, 56, $50
;	anim_wait 32
;	anim_ret

;BattleAnim_StrangeSteam:
;	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_BRIGHT
;	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_STRANGE_STEAM
;	anim_setbgpal PAL_BATTLE_BG_PLAYER, PAL_BTLCUSTOM_STRANGE_STEAM_BG
;	anim_setbgpal PAL_BATTLE_BG_ENEMY, PAL_BTLCUSTOM_STRANGE_STEAM_BG
;	anim_setbgpal PAL_BATTLE_BG_ENEMY_HP, PAL_BTLCUSTOM_STRANGE_STEAM_BG
;	anim_setbgpal PAL_BATTLE_BG_PLAYER_HP, PAL_BTLCUSTOM_STRANGE_STEAM_BG
;	anim_setbgpal PAL_BATTLE_BG_EXP, PAL_BTLCUSTOM_STRANGE_STEAM_BG
;	anim_setbgpal PAL_BATTLE_BG_5, PAL_BTLCUSTOM_STRANGE_STEAM_BG
;	anim_setbgpal PAL_BATTLE_BG_6, PAL_BTLCUSTOM_STRANGE_STEAM_BG
;	anim_setbgpal PAL_BATTLE_BG_TEXT, PAL_BTLCUSTOM_STRANGE_STEAM_BG
;	anim_3gfx ANIM_GFX_STARS, ANIM_GFX_SPEED, ANIM_GFX_HAZE
;	anim_bgeffect ANIM_BG_CYCLE_MID_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
;	anim_bgeffect ANIM_BG_ALTERNATE_HUES, $0, $2, $0
;	anim_sound 0, 1, SFX_SURF
;.loop
;	anim_obj ANIM_OBJ_SHOOTING_MIST, 64, 80, $4
;	anim_wait 4
;	anim_obj ANIM_OBJ_SHOOTING_SPARKLE, 64, 88, $4
;	anim_wait 4
;	anim_obj ANIM_OBJ_SHOOTING_MIST, 64, 96, $4
;	anim_wait 4
;	anim_obj ANIM_OBJ_SHOOTING_SPARKLE, 64, 80, $4
;	anim_wait 4
;	anim_obj ANIM_OBJ_SHOOTING_MIST, 64, 88, $4
;	anim_wait 4
;	anim_obj ANIM_OBJ_SHOOTING_SPARKLE, 64, 96, $4
;	anim_wait 4
;	anim_loop 5, .loop
;	anim_sound 0, 1, SFX_ATTRACT
;	anim_obj ANIM_OBJ_YAWN_2, 126, 46, $0
;	anim_wait 16
;	anim_obj ANIM_OBJ_YAWN_2, 146, 46, $0
;	anim_wait 64
;	anim_ret

;BattleAnim_Obstruct:
;	anim_2gfx ANIM_GFX_OBJECTS_4, ANIM_GFX_CHARGE
;	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_SIGNAL_BEAM_RED
;	anim_bgeffect ANIM_BG_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
;	anim_obj ANIM_OBJ_OBSTRUCT, 80, 80, $0
;	anim_sound 0, 0, SFX_PROTECT
;.loop
;	anim_obj ANIM_OBJ_ENERGY_ORB_TINY_OUT, 80, 80, $20
;	anim_obj ANIM_OBJ_ENERGY_ORB_TINY_OUT, 80, 80, $10
;	anim_obj ANIM_OBJ_ENERGY_ORB_TINY_OUT, 80, 80, $0
;	anim_obj ANIM_OBJ_ENERGY_ORB_TINY_OUT, 80, 80, $30
;	anim_wait 12
;	anim_loop 8, .loop
;	anim_ret

;BattleAnim_MeteorAssault:
;	anim_4gfx ANIM_GFX_HIT_2, ANIM_GFX_LEEK, ANIM_GFX_SPEED, ANIM_GFX_SHINE
;	anim_sound 0, 0, SFX_SWORDS_DANCE
;	anim_bgeffect ANIM_BG_FADE_MON_TO_LIGHT_REPEATING, $0, $1, $40
;.loop
;	anim_obj ANIM_OBJ_FOCUS, 44, 108, $6
;	anim_wait 2
;	anim_obj ANIM_OBJ_FOCUS, 36, 108, $6
;	anim_wait 2
;	anim_obj ANIM_OBJ_FOCUS, 52, 108, $8
;	anim_wait 2
;	anim_obj ANIM_OBJ_FOCUS, 28, 108, $8
;	anim_wait 2
;	anim_obj ANIM_OBJ_FOCUS, 60, 108, $6
;	anim_wait 2
;	anim_obj ANIM_OBJ_FOCUS, 20, 108, $8
;	anim_wait 2
;	anim_obj ANIM_OBJ_FOCUS, 68, 108, $8
;	anim_wait 2
;	anim_loop 3, .loop
;	anim_incbgeffect ANIM_BG_FADE_MON_TO_LIGHT_REPEATING
;	anim_sound 0, 1, SFX_FORESIGHT
;	anim_obj ANIM_OBJ_FORESIGHT, 64, 88, $0
;	anim_wait 32
;	anim_sound 0, 1, SFX_MEGA_PUNCH
;	anim_bgeffect ANIM_BG_HIDE_MON, $0, $1, $0
;	anim_obj ANIM_OBJ_SPEED_LINE, 24, 88, $2
;	anim_obj ANIM_OBJ_SPEED_LINE, 32, 88, $1
;	anim_obj ANIM_OBJ_SPEED_LINE, 40, 88, $0
;	anim_obj ANIM_OBJ_SPEED_LINE, 48, 88, $80
;	anim_obj ANIM_OBJ_SPEED_LINE, 56, 88, $81
;	anim_obj ANIM_OBJ_SPEED_LINE, 64, 88, $82
;	anim_wait 12
;	anim_sound 0, 0, SFX_RAZOR_WIND
;	anim_obj ANIM_OBJ_LEEK, 64, 88, $8
;	anim_wait 14
;	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $ff, $4, $0
;	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $8, $ff
;.loop2
;	anim_sound 0, 0, SFX_EGG_BOMB
;	anim_obj ANIM_OBJ_HIT_BIG_YFIX, 140, 44, $0
;	anim_wait 4
;	anim_sound 0, 0, SFX_EGG_BOMB
;	anim_obj ANIM_OBJ_HIT_BIG_YFIX, 124, 60, $0
;	anim_wait 4
;	anim_sound 0, 0, SFX_EGG_BOMB
;	anim_obj ANIM_OBJ_HIT_BIG_YFIX, 140, 60, $0
;	anim_wait 4
;	anim_sound 0, 0, SFX_EGG_BOMB
;	anim_obj ANIM_OBJ_HIT_BIG_YFIX, 124, 44, $0
;	anim_wait 4
;	anim_sound 0, 0, SFX_EGG_BOMB
;	anim_obj ANIM_OBJ_HIT_BIG_YFIX, 132, 52, $0
;	anim_wait 4
;	anim_loop 3, .loop2
;	anim_wait 32
;	anim_bgeffect ANIM_BG_SHOW_MON, $0, $1, $0
;	anim_wait 1
;	anim_ret

;BattleAnim_ShellSideArm:
;	anim_setobjpal PAL_BATTLE_OB_BLUE, PAL_BTLCUSTOM_GRAY
;	anim_if_param_equal $1, BattleAnim_ShellSideArm_Special
;	anim_3gfx ANIM_GFX_HIT_2, ANIM_GFX_SHELL_SIDE_ARM, ANIM_GFX_POISON
;	anim_sound 0, 1, SFX_HORN_ATTACK
;	anim_obj ANIM_OBJ_SHELL_SIDE_ARM_PHYSICAL, 72, 80, $1
;	anim_wait 16
;	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $4, $2
;	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $14, $2, $0
;	anim_sound 0, 1, SFX_AEROBLAST
;	anim_obj ANIM_OBJ_HIT_BIG_YFIX, 136, 52, $0
;	anim_wait 8
;	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_PURPLE
;	anim_obj ANIM_OBJ_INK_SPLASH, 136, 56, $5c
;	anim_obj ANIM_OBJ_INK_SPLASH, 136, 56, $e8
;	anim_obj ANIM_OBJ_INK_SPLASH, 136, 56, $d0
;	anim_obj ANIM_OBJ_INK_SPLASH, 136, 56, $50
;	anim_wait 32
;	anim_ret

;BattleAnim_ShellSideArm_Special:
;	anim_4gfx ANIM_GFX_EGG, ANIM_GFX_SHELL_SIDE_ARM, ANIM_GFX_POISON, ANIM_GFX_SMOKE_PUFF
;	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_PURPLE
;	anim_sound 0, 1, SFX_HORN_ATTACK
;	anim_obj ANIM_OBJ_SHELL_SIDE_ARM_SPECIAL, 58, 96, $0
;	anim_wait 16
;	anim_sound 6, 2, SFX_TACKLE
;	anim_obj ANIM_OBJ_OCTAZOOKA, 76, 80, $4
;	anim_wait 2
;	anim_obj ANIM_OBJ_OCTAZOOKA_SMOKE, 76, 84, $0
;	anim_wait 2
;	anim_obj ANIM_OBJ_OCTAZOOKA_SMOKE, 92, 76, $0
;	anim_wait 2
;	anim_obj ANIM_OBJ_OCTAZOOKA_SMOKE, 108, 68, $0
;	anim_wait 2
;	anim_obj ANIM_OBJ_OCTAZOOKA_SMOKE, 120, 60, $0
;	anim_wait 2
;	anim_obj ANIM_OBJ_OCTAZOOKA_SMOKE, 132, 52, $0
;	anim_wait 4
;	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $14, $2, $0
;	anim_bgeffect ANIM_BG_FADE_MON_TO_BLACK_REPEATING, $0, $0, $40
;	anim_sound 0, 0, SFX_AEROBLAST
;	anim_obj ANIM_OBJ_INK_SPLASH, 140, 56, $5c
;	anim_obj ANIM_OBJ_INK_SPLASH, 140, 56, $e8
;	anim_obj ANIM_OBJ_INK_SPLASH, 140, 56, $d0
;	anim_obj ANIM_OBJ_INK_SPLASH, 140, 56, $50
;	anim_wait 56
;	anim_ret

;BattleAnim_FreezingGlare:
;	anim_2gfx ANIM_GFX_SHINE, ANIM_GFX_BEAM
;	anim_bgeffect ANIM_BG_CYCLE_MID_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
;	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_ICE
;	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_PAYBACK
;	anim_sound 0, 1, SFX_FORESIGHT
;	anim_obj ANIM_OBJ_FORESIGHT, 64, 88, $0
;	anim_obj ANIM_OBJ_FORESIGHT, 32, 88, $0
;	anim_wait 32
;	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $ff, $2, $0
;	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $8, $20
;	anim_obj ANIM_OBJ_LEER, 72, 84, $0
;	anim_obj ANIM_OBJ_LEER, 64, 80, $0
;	anim_obj ANIM_OBJ_LEER, 88, 76, $0
;	anim_obj ANIM_OBJ_LEER, 80, 72, $0
;	anim_obj ANIM_OBJ_LEER, 104, 68, $0
;	anim_obj ANIM_OBJ_LEER, 96, 64, $0
;	anim_obj ANIM_OBJ_LEER, 120, 60, $0
;	anim_obj ANIM_OBJ_LEER, 112, 56, $0
;	anim_obj ANIM_OBJ_LEER_TIP, 130, 54, $0
;	anim_obj ANIM_OBJ_LEER_TIP, 122, 50, $0
;	anim_sound 0, 1, SFX_RAGE
;	anim_wait 8
;	anim_sound 6, 2, SFX_LEER
;	anim_wait 40
;	anim_ret

;BattleAnim_ThunderousKick:
;	anim_3gfx ANIM_GFX_SPEED, ANIM_GFX_HIT, ANIM_GFX_LIGHTNING
;	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_PEACH
;	anim_bgeffect ANIM_BG_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $6, $0
;	anim_sound 0, 0, SFX_MENU
;	anim_bgeffect ANIM_BG_HIDE_MON, $0, $1, $0
;	anim_obj ANIM_OBJ_SPEED_LINE, 24, 88, $2
;	anim_obj ANIM_OBJ_SPEED_LINE, 32, 88, $1
;	anim_obj ANIM_OBJ_SPEED_LINE, 40, 88, $0
;	anim_obj ANIM_OBJ_SPEED_LINE, 48, 88, $80
;	anim_obj ANIM_OBJ_SPEED_LINE, 56, 88, $81
;	anim_obj ANIM_OBJ_SPEED_LINE, 64, 88, $82
;	anim_wait 12
;.loop
;	anim_sound 0, 0, SFX_RAGE
;	anim_obj ANIM_OBJ_SHOOTING_SPARK, 64, 94, $18
;	anim_wait 2
;	anim_loop 4, .loop
;	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $40, $2, $0
;	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $8, $3
;	anim_obj ANIM_OBJ_THUNDEROUS_KICK_SPARKS, 136, 56, $0
;.loop2
;	anim_sound 0, 1, SFX_EGG_BOMB
;	anim_obj ANIM_OBJ_KICK, 136, 56, $0
;	anim_obj ANIM_OBJ_HIT_BIG_YFIX, 136, 56, $0
;	anim_wait 6
;	anim_obj ANIM_OBJ_KICK, 136, 56, $0
;	anim_wait 6
;	anim_loop 3, .loop2
;	anim_bgeffect ANIM_BG_SHOW_MON, $0, $1, $0
;	anim_wait 16
;	anim_ret

;BattleAnim_FieryWrath:
;	anim_1gfx ANIM_GFX_FIRE
;	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_DARK_PULSE
;	anim_setobjpal PAL_BATTLE_OB_RED, PAL_BTLCUSTOM_DARK_PULSE
;	anim_bgeffect ANIM_BG_CYCLE_BGPALS_INVERTED, $0, $6, $0
;	anim_bgeffect ANIM_BG_CYCLE_MID_OBPALS_GRAY_AND_YELLOW, $0, $6, $0
;.loop
;	anim_sound 6, 2, SFX_EMBER
;	anim_obj ANIM_OBJ_FLAME_CHARGE, 40, 86, $10
;	anim_wait 3
;	anim_sound 6, 2, SFX_EMBER
;	anim_obj ANIM_OBJ_FLAME_CHARGE, 56, 86, $90
;	anim_wait 3
;	anim_loop 6, .loop
;	anim_wait 80
;	anim_sound 6, 2, SFX_EMBER
;	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $ff, $2, $0
;.loop2
;	anim_obj ANIM_OBJ_SACRED_FIRE, 132, 68, $0
;	anim_obj ANIM_OBJ_FLARE_BLITZ, 132, 68, $6
;	anim_wait 2
;	anim_obj ANIM_OBJ_FLARE_BLITZ, 124, 68, $6
;	anim_wait 2
;	anim_obj ANIM_OBJ_FLARE_BLITZ, 140, 68, $8
;	anim_wait 2
;	anim_obj ANIM_OBJ_FLARE_BLITZ, 116, 68, $8
;	anim_wait 2
;	anim_obj ANIM_OBJ_FLARE_BLITZ, 148, 68, $6
;	anim_wait 2
;	anim_obj ANIM_OBJ_FLARE_BLITZ, 108, 68, $8
;	anim_wait 2
;	anim_obj ANIM_OBJ_FLARE_BLITZ, 156, 68, $8
;	anim_loop 3, .loop2
;	anim_wait 48
;	anim_ret

;BattleAnim_EerieSpell:
;	anim_2gfx ANIM_GFX_SPEED, ANIM_GFX_STATUS
;	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_PAYBACK
;	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_AURORA
;	anim_bgeffect ANIM_BG_CYCLE_BGPALS_INVERTED, $0, $2, $0
;	anim_sound 0, 0, SFX_SPITE
;	anim_obj ANIM_OBJ_EERIE_SPELL, 44, 88, $0
;	anim_obj ANIM_OBJ_EERIE_SPELL, 44, 88, $10
;	anim_obj ANIM_OBJ_EERIE_SPELL, 44, 88, $20
;	anim_obj ANIM_OBJ_EERIE_SPELL, 44, 88, $30
;	anim_wait 64
;	anim_clearobjs
;	anim_sound 0, 0, SFX_PSYBEAM
;	anim_bgeffect ANIM_BG_PSYCHIC, $0, $0, $0
;	anim_obj ANIM_OBJ_EERIE_SPELL, 136, 48, $0
;	anim_obj ANIM_OBJ_EERIE_SPELL, 136, 48, $10
;	anim_obj ANIM_OBJ_EERIE_SPELL, 136, 48, $20
;	anim_obj ANIM_OBJ_EERIE_SPELL, 136, 48, $30
;.loop
;	anim_obj ANIM_OBJ_FOCUS, 136, 68, $6
;	anim_wait 2
;	anim_obj ANIM_OBJ_FOCUS, 128, 68, $6
;	anim_wait 2
;	anim_obj ANIM_OBJ_FOCUS, 144, 68, $8
;	anim_wait 2
;	anim_obj ANIM_OBJ_FOCUS, 120, 68, $8
;	anim_wait 2
;	anim_obj ANIM_OBJ_FOCUS, 152, 68, $6
;	anim_wait 2
;	anim_obj ANIM_OBJ_FOCUS, 112, 68, $8
;	anim_wait 2
;	anim_obj ANIM_OBJ_FOCUS, 160, 68, $8
;	anim_wait 2
;	anim_loop 3, .loop
;	anim_wait 32
;	anim_clearobjs
;	anim_incbgeffect ANIM_BG_PSYCHIC
;	anim_wait 4
;	anim_ret

; - Gen 9 Anims

;BattleAnim_WaveCrash:
;	anim_2gfx ANIM_GFX_CHARGE, ANIM_GFX_MISC_2
;	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_WATER
;	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_WATER
;	anim_setobjpal PAL_BATTLE_OB_BLUE, PAL_BTLCUSTOM_BUBBLE
;	anim_setobjpal PAL_BATTLE_BG_USER, PAL_BTLCUSTOM_WATER
;	anim_setobjpal PAL_BATTLE_OB_BROWN, PAL_BTLCUSTOM_WATER
;	anim_bgeffect ANIM_BG_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $4, $0
;	anim_bgeffect ANIM_BG_FADE_MON_TO_LIGHT_REPEATING, $0, $1, $40
;	anim_sound 0, 1, SFX_SURF
;	anim_obj ANIM_OBJ_DROPLET_R_YFIX, 56, 102, $3b
;	anim_obj ANIM_OBJ_DROPLET_L_YFIX, 36, 102, $24
;	anim_obj ANIM_OBJ_TINY_RISING_ORB, 56, 90, $30
;	anim_wait 4
;	anim_obj ANIM_OBJ_TINY_RISING_ORB, 40, 90, $20
;	anim_wait 4
;	anim_obj ANIM_OBJ_TINY_RISING_ORB, 60, 106, $10
;	anim_wait 4
;	anim_obj ANIM_OBJ_TINY_RISING_ORB, 36, 106, $0
;	anim_wait 4
;	anim_obj ANIM_OBJ_DROPLET_R_YFIX, 56, 102, $3b
;	anim_obj ANIM_OBJ_DROPLET_L_YFIX, 36, 102, $24
;	anim_wait 48
;	anim_3gfx ANIM_GFX_HIT_2, ANIM_GFX_BUBBLE, ANIM_GFX_AQUA_JET
;	anim_incbgeffect ANIM_BG_FADE_MON_TO_LIGHT_REPEATING
;	anim_wait 1
;	anim_call BattleAnim_TargetObj_2Row_1
;	anim_wait 1
;	anim_bgeffect ANIM_BG_TACKLE, $0, $1, $0
;	anim_sound 0, 1, SFX_TACKLE
;	anim_wait 16
;	anim_bgeffect ANIM_BG_SHOW_MON, $0, $0, $0
;	anim_wait 4
;	anim_clearobjs
;	anim_bgeffect ANIM_BG_SHOW_MON, $0, $1, $0
;	anim_wait 1
;	anim_setbgpal PAL_BATTLE_BG_USER, PAL_BTLCUSTOM_DEFAULT
;	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $44, $2, $0
;	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $4, $08
;.loop
;	anim_sound 0, 0, SFX_EGG_BOMB
;	anim_obj ANIM_OBJ_BUBBLE_SPLASH, 132, 64, $5c
;	anim_obj ANIM_OBJ_AQUA_JET, 120, 56, $0
;	anim_obj ANIM_OBJ_AQUA_JET, 144, 56, $0
;	anim_obj ANIM_OBJ_BUBBLE_SPLASH, 140, 64, $e8
;	anim_wait 6
;	anim_obj ANIM_OBJ_BUBBLE_SPLASH, 132, 64, $d0
;	anim_obj ANIM_OBJ_AQUA_JET, 120, 56, $0
;	anim_obj ANIM_OBJ_AQUA_JET, 144, 56, $0
;	anim_obj ANIM_OBJ_BUBBLE_SPLASH, 140, 64, $50
;	anim_wait 6
;	anim_loop 3, .loop
;	anim_wait 32
;	anim_ret

;BattleAnim_MakeitRain:
;	anim_4gfx ANIM_GFX_CHARGE, ANIM_GFX_COINS, ANIM_GFX_SPEED, ANIM_GFX_HIT_2
;	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_YELLOW
;	anim_bgeffect ANIM_BG_CYCLE_MID_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
;	anim_sound 0, 1, SFX_SWORDS_DANCE
;	anim_obj ANIM_OBJ_FLASH_CANNON_CHARGE, 48, 96, $00
;	anim_obj ANIM_OBJ_FLASH_CANNON_CHARGE, 48, 96, $0c
;	anim_obj ANIM_OBJ_FLASH_CANNON_CHARGE, 48, 96, $18
;	anim_obj ANIM_OBJ_FLASH_CANNON_CHARGE, 48, 96, $24
;	anim_obj ANIM_OBJ_FLASH_CANNON_CHARGE, 48, 96, $30
;	anim_wait 40
;	anim_bgeffect ANIM_BG_ALTERNATE_HUES, $0, $4, $0
;	anim_setbgpal PAL_BATTLE_BG_PLAYER, PAL_BTLCUSTOM_GOLD_BG
;	anim_setbgpal PAL_BATTLE_BG_ENEMY, PAL_BTLCUSTOM_GOLD_BG
;	anim_setbgpal PAL_BATTLE_BG_ENEMY_HP, PAL_BTLCUSTOM_GOLD_BG
;	anim_setbgpal PAL_BATTLE_BG_PLAYER_HP, PAL_BTLCUSTOM_GOLD_BG
;	anim_setbgpal PAL_BATTLE_BG_EXP, PAL_BTLCUSTOM_GOLD_BG
;	anim_setbgpal PAL_BATTLE_BG_5, PAL_BTLCUSTOM_GOLD_BG
;	anim_setbgpal PAL_BATTLE_BG_6, PAL_BTLCUSTOM_GOLD_BG
;	anim_setbgpal PAL_BATTLE_BG_TEXT, PAL_BTLCUSTOM_GOLD_BG
;	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $10, $2, $0
;	anim_sound 0, 1, SFX_PAY_DAY
;	anim_obj ANIM_OBJ_COIN_BURST, 56, 104, $28
;	anim_wait 2
;	anim_obj ANIM_OBJ_COIN_BURST, 48, 96, $5c ;
;	anim_wait 2
;	anim_obj ANIM_OBJ_COIN_BURST, 56, 96, $10
;	anim_wait 2
;	anim_obj ANIM_OBJ_COIN_BURST, 48, 96, $e8 ;
;	anim_wait 2
;	anim_obj ANIM_OBJ_COIN_BURST, 40, 96, $9c
;	anim_wait 2
;	anim_sound 0, 1, SFX_PAY_DAY
;	anim_obj ANIM_OBJ_COIN_BURST, 48, 96, $d0 ;
;	anim_wait 2
;	anim_obj ANIM_OBJ_COIN_BURST, 40, 104, $dc
;	anim_wait 2
;	anim_obj ANIM_OBJ_COIN_BURST, 48, 96, $50 ;
;	anim_wait 2
;	anim_obj ANIM_OBJ_COIN_BURST, 48, 96, $1c
;	anim_wait 2
;	anim_obj ANIM_OBJ_COIN_BURST, 48, 96, $90
;	anim_wait 2
;	anim_obj ANIM_OBJ_COIN_BUILDUP, 136, 72, $10
;.loop
;	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $10, $2, $0
;	anim_sound 0, 1, SFX_PAY_DAY
;	anim_obj ANIM_OBJ_COIN_BURST, 56, 104, $28
;	anim_wait 2
;	anim_obj ANIM_OBJ_COIN_BURST, 48, 96, $5c ;
;	anim_wait 2
;	anim_obj ANIM_OBJ_COIN_BURST, 56, 96, $10
;	anim_wait 2
;	anim_obj ANIM_OBJ_COIN_BURST, 48, 96, $e8 ;
;	anim_wait 2
;	anim_obj ANIM_OBJ_COIN_BURST, 40, 96, $9c
;	anim_wait 2
;	anim_sound 0, 1, SFX_PAY_DAY
;	anim_obj ANIM_OBJ_COIN_BURST, 48, 96, $d0 ;
;	anim_wait 2
;	anim_obj ANIM_OBJ_COIN_BURST, 40, 104, $dc
;	anim_wait 2
;	anim_obj ANIM_OBJ_COIN_BURST, 48, 96, $50 ;
;	anim_wait 2
;	anim_obj ANIM_OBJ_COIN_BURST, 48, 96, $1c
;	anim_wait 2
;	anim_obj ANIM_OBJ_COIN_BURST, 48, 96, $90
;	anim_wait 2
;	anim_loop 5, .loop
;	anim_wait 32
;	anim_ret

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
