FramesPointers:
	indirect_table 2, 1
	indirect_entries MEW, KantoFramePointers
	indirect_entries CELEBI, JohtoFramePointers
	indirect_entries LATIOS, HoennFramePointers
	indirect_entries MANAPHY, SinnohFramePointers
	indirect_entries NUM_POKEMON, OtherFramePointers
	indirect_table_end

INCLUDE "gfx/pokemon/frame_kanto.asm"
INCLUDE "gfx/pokemon/frame_johto.asm"
INCLUDE "gfx/pokemon/frame_hoenn.asm"
INCLUDE "gfx/pokemon/frame_sinnoh.asm"
INCLUDE "gfx/pokemon/frame_other.asm"

EggFrames:        INCLUDE "gfx/pokemon/egg/frames.asm"
