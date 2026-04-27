MACRO contest_mon
	db \1
	dp \2
	db \3, \4
ENDM

; Base Bug Catching Contest
ContestMons:
	;            %, species,     min,                    max
	contest_mon 15, CATERPIE,    LEVEL_FROM_BADGES - 5,  LEVEL_FROM_BADGES + 6
	contest_mon 15, WEEDLE,      LEVEL_FROM_BADGES - 5,  LEVEL_FROM_BADGES + 6
	contest_mon 10, METAPOD,     LEVEL_FROM_BADGES - 3,  LEVEL_FROM_BADGES + 6
	contest_mon 10, KAKUNA,      LEVEL_FROM_BADGES - 3,  LEVEL_FROM_BADGES + 6
	contest_mon  5, BUTTERFREE,  LEVEL_FROM_BADGES + 0,  LEVEL_FROM_BADGES + 3
	contest_mon  5, BEEDRILL,    LEVEL_FROM_BADGES + 0,  LEVEL_FROM_BADGES + 3
	contest_mon 10, VENONAT,     LEVEL_FROM_BADGES - 2,  LEVEL_FROM_BADGES + 4
	contest_mon 10, PARAS,       LEVEL_FROM_BADGES - 2,  LEVEL_FROM_BADGES + 5
	contest_mon  5, VENOMOTH,    LEVEL_FROM_BADGES + 0,  LEVEL_FROM_BADGES + 3
	contest_mon  5, YANMA,       LEVEL_FROM_BADGES + 1,  LEVEL_FROM_BADGES + 2
	contest_mon  5, SCYTHER,     LEVEL_FROM_BADGES + 1,  LEVEL_FROM_BADGES + 2
	contest_mon  5, PINSIR,      LEVEL_FROM_BADGES + 1,  LEVEL_FROM_BADGES + 2
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
