	; MainMenuItems indexes
	const_def
	const MAINMENU_NEW_GAME               ; 0
	const MAINMENU_CONTINUE               ; 1
	const MAINMENU_MOBILE_MYSTERY         ; 2
	const MAINMENU_MOBILE                 ; 3
	const MAINMENU_MOBILE_STUDIUM         ; 4
	const MAINMENU_MYSTERY_MOBILE_STUDIUM ; 5
	const MAINMENU_MYSTERY                ; 6
	const MAINMENU_MYSTERY_STUDIUM        ; 7
	const MAINMENU_STUDIUM                ; 8

	; MainMenu.Strings and MainMenu.Jumptable indexes
	const_def
	const MAINMENUITEM_CONTINUE       ; 0
	const MAINMENUITEM_NEW_GAME       ; 1
	const MAINMENUITEM_OPTION         ; 2
	const MAINMENUITEM_MYSTERY_GIFT   ; 3
	const MAINMENUITEM_MOBILE         ; 4
	const MAINMENUITEM_MOBILE_STUDIUM ; 5

MobileMenuGFX:
INCBIN "gfx/mobile/mobile_menu.2bpp"

MainMenu:
.loop
	xor a
	ld [wDisableTextAcceleration], a
	call ClearTilemapEtc
	ld b, SCGB_DIPLOMA
	call GetSGBLayout
	call SetPalettes
	ld hl, wGameTimerPaused
	res GAME_TIMER_PAUSED_F, [hl]
	call MainMenu_GetWhichMenu
	ld [wWhichIndexSet], a
	call MainMenu_PrintCurrentTimeAndDay
	ld hl, .MenuHeader
	call LoadMenuHeader
	call MainMenuJoypadLoop
	call CloseWindow
	jr c, .quit
	call ClearTilemap
	ld a, [wMenuSelection]
	ld hl, .Jumptable
	rst JumpTable
	jr .loop

.quit
	ret

.MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 16, 7
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 0 ; items
	dw MainMenuItems
	dw PlaceMenuStrings
	dw .Strings

.Strings:
; entries correspond to MAINMENUITEM_* constants
	db "CONTINUE@"
	db "NEW GAME@"
	db "OPTION@"
	db "MYSTERY GIFT@"
	db "MOBILE@"
	db "MOBILE STUDIUM@"

.Jumptable:
; entries correspond to MAINMENUITEM_* constants
	dw MainMenu_Continue
	dw MainMenu_NewGame
	dw MainMenu_Option
	dw MainMenu_MysteryGift
	dw MainMenu_Mobile
	dw MainMenu_MobileStudium

MainMenuItems:
; entries correspond to MAINMENU_* constants

	; MAINMENU_NEW_GAME
	db 2
	db MAINMENUITEM_NEW_GAME
	db MAINMENUITEM_OPTION
	db -1

	; MAINMENU_CONTINUE
	db 3
	db MAINMENUITEM_CONTINUE
	db MAINMENUITEM_NEW_GAME
	db MAINMENUITEM_OPTION
	db -1

	; MAINMENU_MOBILE_MYSTERY
	db 5
	db MAINMENUITEM_CONTINUE
	db MAINMENUITEM_NEW_GAME
	db MAINMENUITEM_OPTION
	db MAINMENUITEM_MYSTERY_GIFT
	db MAINMENUITEM_MOBILE
	db -1

	; MAINMENU_MOBILE
	db 4
	db MAINMENUITEM_CONTINUE
	db MAINMENUITEM_NEW_GAME
	db MAINMENUITEM_OPTION
	db MAINMENUITEM_MOBILE
	db -1

	; MAINMENU_MOBILE_STUDIUM
	db 5
	db MAINMENUITEM_CONTINUE
	db MAINMENUITEM_NEW_GAME
	db MAINMENUITEM_OPTION
	db MAINMENUITEM_MOBILE
	db MAINMENUITEM_MOBILE_STUDIUM
	db -1

	; MAINMENU_MYSTERY_MOBILE_STUDIUM
	db 6
	db MAINMENUITEM_CONTINUE
	db MAINMENUITEM_NEW_GAME
	db MAINMENUITEM_OPTION
	db MAINMENUITEM_MYSTERY_GIFT
	db MAINMENUITEM_MOBILE
	db MAINMENUITEM_MOBILE_STUDIUM
	db -1

	; MAINMENU_MYSTERY
	db 4
	db MAINMENUITEM_CONTINUE
	db MAINMENUITEM_NEW_GAME
	db MAINMENUITEM_OPTION
	db MAINMENUITEM_MYSTERY_GIFT
	db -1

	; MAINMENU_MYSTERY_STUDIUM
	db 5
	db MAINMENUITEM_CONTINUE
	db MAINMENUITEM_NEW_GAME
	db MAINMENUITEM_OPTION
	db MAINMENUITEM_MYSTERY_GIFT
	db MAINMENUITEM_MOBILE_STUDIUM
	db -1

	; MAINMENU_STUDIUM
	db 4
	db MAINMENUITEM_CONTINUE
	db MAINMENUITEM_NEW_GAME
	db MAINMENUITEM_OPTION
	db MAINMENUITEM_MOBILE_STUDIUM
	db -1

MainMenu_GetWhichMenu:
	nop
	nop
	nop
	ld a, [wSaveFileExists]
	and a
	jr nz, .next
	ld a, MAINMENU_NEW_GAME
	ret

.next
	ldh a, [hCGB]
	cp TRUE
	ld a, MAINMENU_CONTINUE
	ret nz
	ld a, BANK(sNumDailyMysteryGiftPartnerIDs)
	call OpenSRAM
	ld a, [sNumDailyMysteryGiftPartnerIDs]
	cp -1 ; locked?
	call CloseSRAM
	jr nz, .mystery_gift
	; This check makes no difference.
	ld a, [wStatusFlags]
	bit STATUSFLAGS_MAIN_MENU_MOBILE_CHOICES_F, a
	ld a, MAINMENU_CONTINUE
	jr z, .ok
	jr .ok

.ok
	jr .ok2

.ok2
	ld a, MAINMENU_CONTINUE
	ret

.mystery_gift
	; This check makes no difference.
	ld a, [wStatusFlags]
	bit STATUSFLAGS_MAIN_MENU_MOBILE_CHOICES_F, a
	jr z, .ok3
	jr .ok3

.ok3
	jr .ok4

.ok4
	ld a, MAINMENU_MYSTERY
	ret

MainMenuJoypadLoop:
	call SetUpMenu
.loop
	call MainMenu_PrintCurrentTimeAndDay
	ld a, [w2DMenuFlags1]
	set 5, a
	ld [w2DMenuFlags1], a
	call GetScrollingMenuJoypad
	ld a, [wMenuJoypad]
	cp B_BUTTON
	jr z, .b_button
	cp A_BUTTON
	jr z, .a_button
	jr .loop

.a_button
	call PlayClickSFX
	and a
	ret

.b_button
	scf
	ret

MainMenu_PrintCurrentTimeAndDay:
	ld a, [wSaveFileExists]
	and a
	ret z
	xor a
	ldh [hBGMapMode], a
	call .PlaceBox
	ld hl, wOptions
	ld a, [hl]
	push af
	set NO_TEXT_SCROLL, [hl]
	call .PlaceTime
	pop af
	ld [wOptions], a
	ld a, $1
	ldh [hBGMapMode], a
	ret

.PlaceBox:
	call CheckRTCStatus
	and %10000000 ; Day count exceeded 16383
	jr nz, .TimeFail
	hlcoord 0, 14
	ld b, 2
	ld c, 18
	jmp Textbox

.TimeFail:
	jmp SpeechTextbox

.PlaceTime:
	ld a, [wSaveFileExists]
	and a
	ret z
	call CheckRTCStatus
	and $80
	jr nz, .PrintTimeNotSet
	call UpdateTime
	call GetWeekday
	ld b, a
	decoord 1, 15
	call .PrintDayOfWeek
	decoord 4, 16
	ldh a, [hHours]
	ld c, a
	farcall PrintHour
	ld [hl], ":"
	inc hl
	ld de, hMinutes
	lb bc, PRINTNUM_LEADINGZEROS | 1, 2
	jmp PrintNum

.minString: ; unreferenced
	db "min.@"

.PrintTimeNotSet:
	hlcoord 1, 14
	ld de, .TimeNotSetString
	jmp PlaceString

.TimeNotSetString:
	db "TIME NOT SET@"

.MainMenuTimeUnknownText: ; unreferenced
	text_far _MainMenuTimeUnknownText
	text_end

.PrintDayOfWeek:
	push de
	ld hl, .Days
	ld a, b
	call GetNthString
	ld d, h
	ld e, l
	pop hl
	call PlaceString
	ld h, b
	ld l, c
	ld de, .Day
	jmp PlaceString

.Days:
	db "SUN@"
	db "MON@"
	db "TUES@"
	db "WEDNES@"
	db "THURS@"
	db "FRI@"
	db "SATUR@"
.Day:
	db "DAY@"

ClearTilemapEtc:
	xor a
	ldh [hMapAnims], a
	call ClearTilemap
	call LoadFontsExtra
	call LoadStandardFont
	jmp ClearWindowData

MainMenu_NewGame:
	farjp NewGame

MainMenu_Option:
	farjp Option

MainMenu_Continue:
	farjp Continue

MainMenu_MysteryGift:
	farjp MysteryGift
