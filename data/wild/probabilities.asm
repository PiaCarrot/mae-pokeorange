MACRO mon_prob
; percent, index
	db \1, \2 * 3
ENDM

GrassMonProbTable:
	table_width 2, GrassMonProbTable
	mon_prob 20,   0 ; 20% chance
	mon_prob 40,   1 ; 20% chance
	mon_prob 50,   2 ; 10% chance
	mon_prob 60,   3 ; 10% chance
	mon_prob 70,   4 ; 10% chance
	mon_prob 80,   5 ; 10% chance
	mon_prob 85,   6 ;  5% chance
	mon_prob 90,   7 ;  5% chance
	mon_prob 94,   8 ;  4% chance
	mon_prob 98,   9 ;  4% chance
	mon_prob 99,  10 ;  1% chance
	mon_prob 100, 11 ;  1% chance
	assert_table_length NUM_GRASSMON

WaterMonProbTable:
	table_width 2, WaterMonProbTable
	mon_prob 60,  0 ; 60% chance
	mon_prob 90,  1 ; 30% chance
	mon_prob 95,  2 ;  5% chance
	mon_prob 99,  3 ;  4% chance
	mon_prob 100, 4 ;  1% chance
	assert_table_length NUM_WATERMON
