TreeMons:
; entries correspond to TREEMON_SET_* constants
	table_width 2, TreeMons
	dw TreeMonSet_City
	dw TreeMonSet_Island1
	dw TreeMonSet_Canyon
	dw TreeMonSet_Town
	dw TreeMonSet_Route
	dw TreeMonSet_Kanto
	dw TreeMonSet_Lake
	dw TreeMonSet_Forest
	dw TreeMonSet_ShoreRock1
	dw TreeMonSet_Sky1
	dw TreeMonSet_Depths1
	assert_table_length NUM_TREEMON_SETS
	dw TreeMonSet_City ; unused

; Two tables each (common, rare).
; Structure:
;	db  %, species, level

TreeMonSet_City:
TreeMonSet_Island1:
; common
	dbbw 60, 10, SPINARAK
	dbbw 30, 10, LEDYBA
	dbbw 5, 10, AIPOM
	dbbw 4, 10, LICKITUNG
	dbbw 1, 10, LICKITUNG
	db -1
; rare
	dbbw 60, 10, SPINARAK
	dbbw 30, 10, LEDYBA
	dbbw 5, 10, AIPOM
	dbbw 4, 10, LICKITUNG
	dbbw 1, 10, LICKITUNG
	db -1

TreeMonSet_Canyon:
; common
	dbbw 50, 10, SPEAROW
	dbbw 15, 10, SPEAROW
	dbbw 15, 10, SPEAROW
	dbbw 10, 10, AIPOM
	dbbw  5, 10, AIPOM
	dbbw  5, 10, AIPOM
	db -1
; rare
	dbbw 50, 10, SPEAROW
	dbbw 15, 10, HERACROSS
	dbbw 15, 10, HERACROSS
	dbbw 10, 10, AIPOM
	dbbw  5, 10, AIPOM
	dbbw  5, 10, AIPOM
	db -1

TreeMonSet_Town:
; common
	dbbw 50, 10, SPEAROW
	dbbw 15, 10, EKANS
	dbbw 15, 10, SPEAROW
	dbbw 10, 10, AIPOM
	dbbw  5, 10, AIPOM
	dbbw  5, 10, AIPOM
	db -1
; rare
	dbbw 50, 10, SPEAROW
	dbbw 15, 10, HERACROSS
	dbbw 15, 10, HERACROSS
	dbbw 10, 10, AIPOM
	dbbw  5, 10, AIPOM
	dbbw  5, 10, AIPOM
	db -1

TreeMonSet_Route:
; common
	dbbw 50, 10, HOOTHOOT
	dbbw 15, 10, SPINARAK
	dbbw 15, 10, LEDYBA
	dbbw 10, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	db -1
; rare
	dbbw 50, 10, HOOTHOOT
	dbbw 15, 10, PINECO
	dbbw 15, 10, PINECO
	dbbw 10, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	db -1

TreeMonSet_Kanto:
; common
	dbbw 50, 10, HOOTHOOT
	dbbw 15, 10, EKANS
	dbbw 15, 10, HOOTHOOT
	dbbw 10, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	db -1
; rare
	dbbw 50, 10, HOOTHOOT
	dbbw 15, 10, PINECO
	dbbw 15, 10, PINECO
	dbbw 10, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	db -1

TreeMonSet_Lake:
; common
	dbbw 50, 10, HOOTHOOT
	dbbw 15, 10, VENONAT
	dbbw 15, 10, HOOTHOOT
	dbbw 10, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	db -1
; rare
	dbbw 50, 10, HOOTHOOT
	dbbw 15, 10, PINECO
	dbbw 15, 10, PINECO
	dbbw 10, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	db -1

TreeMonSet_Forest:
; common
	dbbw 50, 10, HOOTHOOT
	dbbw 15, 10, PINECO
	dbbw 15, 10, PINECO
	dbbw 10, 10, NOCTOWL
	dbbw  5, 10, BUTTERFREE
	dbbw  5, 10, BEEDRILL
	db -1
; rare
	dbbw 50, 10, HOOTHOOT
	dbbw 15, 10, CATERPIE
	dbbw 15, 10, WEEDLE
	dbbw 10, 10, HOOTHOOT
	dbbw  5, 10, METAPOD
	dbbw  5, 10, KAKUNA
	db -1

TreeMonSet_ShoreRock1:
	dbbw 60, 15, SHUCKLE
	dbbw 30, 15, SHUCKLE
	dbbw 5, 15, KRABBY
	dbbw 4, 15, KRABBY
	dbbw 1, 15, KRABBY
	db -1
	
TreeMonSet_Sky1:
	dbbw 60, 4, SPEAROW
	dbbw 30, 4, WINGULL
	dbbw 5, 5, WINGULL
	dbbw 4, 4, CHATOT
	dbbw 1, 5, CHATOT
	db -1
	
TreeMonSet_Depths1:
	dbbw 60, 4, CARVANHA
	dbbw 30, 4, FINNEON
	dbbw 5, 5, FINNEON
	dbbw 4, 4, MANTYKE
	dbbw 1, 5, MANTYKE
	db -1
