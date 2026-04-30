MACRO contest_mon
	db \1
	dp \2
	db \3, \4
ENDM

; Base Bug Catching Contest
ContestMons:
	;            %, species,     min, max
	contest_mon 15, CATERPIE,      7,  18
	contest_mon 15, WEEDLE,        7,  18
	contest_mon 10, METAPOD,       9,  18
	contest_mon 10, KAKUNA,        9,  18
	contest_mon  5, BUTTERFREE,   12,  15
	contest_mon  5, BEEDRILL,     12,  15
	contest_mon 10, VENONAT,      10,  16
	contest_mon 10, PARAS,        10,  17
	contest_mon  5, VENOMOTH,     12,  15
	contest_mon  5, YANMA,        13,  14
	contest_mon  5, SCYTHER,      13,  14
	contest_mon  5, PINSIR,       13,  14
ContestMonsEnd:

; Bug Catching Contest after E4
E4_ContestMons:
	;            %, species,     min,                    max
	contest_mon 10, BUTTERFREE,  LEVEL_FROM_BADGES + 0,  LEVEL_FROM_BADGES + 4
	contest_mon 10, BEEDRILL,    LEVEL_FROM_BADGES + 0,  LEVEL_FROM_BADGES + 4
	contest_mon 10, PARAS,       LEVEL_FROM_BADGES + 0,  LEVEL_FROM_BADGES + 4
	contest_mon  5, PARASECT,    LEVEL_FROM_BADGES - 1,  LEVEL_FROM_BADGES + 2
	contest_mon 10, VENONAT,     LEVEL_FROM_BADGES + 0,  LEVEL_FROM_BADGES + 4
	contest_mon  5, VENOMOTH,    LEVEL_FROM_BADGES - 1,  LEVEL_FROM_BADGES + 2
	contest_mon  5, SCYTHER,     LEVEL_FROM_BADGES - 2,  LEVEL_FROM_BADGES + 1
	contest_mon  5, PINSIR,      LEVEL_FROM_BADGES - 2,  LEVEL_FROM_BADGES + 1
	contest_mon 10, LEDIAN,      LEVEL_FROM_BADGES + 0,  LEVEL_FROM_BADGES + 4
	contest_mon  5, ARIADOS,     LEVEL_FROM_BADGES - 1,  LEVEL_FROM_BADGES + 2
	contest_mon  5, YANMA,       LEVEL_FROM_BADGES - 2,  LEVEL_FROM_BADGES + 1
	contest_mon  5, HERACROSS,   LEVEL_FROM_BADGES - 2,  LEVEL_FROM_BADGES + 1
	contest_mon  5, PINECO,      LEVEL_FROM_BADGES + 0,  LEVEL_FROM_BADGES + 4
	contest_mon  5, FORRETRESS,  LEVEL_FROM_BADGES - 2,  LEVEL_FROM_BADGES + 1
	contest_mon  5, SHUCKLE,     LEVEL_FROM_BADGES + 0,  LEVEL_FROM_BADGES + 4
E4_ContestMonsEnd:

; Bug Catching Contest after Blue
Blue_ContestMons:
	;            %, species,     min,                    max
	contest_mon 10, BUTTERFREE,  LEVEL_FROM_BADGES + 0,  LEVEL_FROM_BADGES + 4
	contest_mon 10, BEEDRILL,    LEVEL_FROM_BADGES + 0,  LEVEL_FROM_BADGES + 4
	contest_mon  7, PARASECT,    LEVEL_FROM_BADGES - 1,  LEVEL_FROM_BADGES + 2
	contest_mon  7, VENOMOTH,    LEVEL_FROM_BADGES - 1,  LEVEL_FROM_BADGES + 2
	contest_mon  7, SCYTHER,     LEVEL_FROM_BADGES - 2,  LEVEL_FROM_BADGES + 1
	contest_mon  7, PINSIR,      LEVEL_FROM_BADGES - 2,  LEVEL_FROM_BADGES + 1
	contest_mon 10, LEDIAN,      LEVEL_FROM_BADGES + 0,  LEVEL_FROM_BADGES + 4
	contest_mon  8, ARIADOS,     LEVEL_FROM_BADGES - 1,  LEVEL_FROM_BADGES + 2
	contest_mon  8, YANMA,       LEVEL_FROM_BADGES - 2,  LEVEL_FROM_BADGES + 1
	contest_mon  7, HERACROSS,   LEVEL_FROM_BADGES - 2,  LEVEL_FROM_BADGES + 1
	contest_mon  7, FORRETRESS,  LEVEL_FROM_BADGES - 2,  LEVEL_FROM_BADGES + 1
	contest_mon  7, SHUCKLE,     LEVEL_FROM_BADGES + 0,  LEVEL_FROM_BADGES + 4
	contest_mon  2, SCIZOR,      LEVEL_FROM_BADGES - 2,  LEVEL_FROM_BADGES + 1
	contest_mon  2, YANMEGA,     LEVEL_FROM_BADGES - 2,  LEVEL_FROM_BADGES + 1
	contest_mon  1, KLEAVOR,     LEVEL_FROM_BADGES - 2,  LEVEL_FROM_BADGES + 1
Blue_ContestMonsEnd:
