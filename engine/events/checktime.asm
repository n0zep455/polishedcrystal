CheckTime::
	ld a, [wTimeOfDay]
	ld hl, .TimeOfDayTable
	ld de, 2
	call IsInArray
	inc hl
	ld c, [hl]
	ret c

	xor a
	ld c, a
	ret

.TimeOfDayTable:
	db ToD_MORN, MORN
	db ToD_DAY,  DAY
	db ToD_EVE,  EVE
	db ToD_NITE, NITE
	db -1
