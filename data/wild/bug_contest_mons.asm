MACRO contest_mon
	db \1     ; Time of Day
	db \2     ; Encounter Weight
	db \3, \4 ; Min-Max Levels
	if _NARG == 6
		dp \5, \6 ; Species & Form
		shift
	else
		dp \5 ; Species
	endc
ENDM

; Base Bug Catching Contest
ContestMons:
	;                    Time, Weight, min,                   max,                   species
	contest_mon MORN|DAY|NITE,     15, LEVEL_FROM_BADGES - 5, LEVEL_FROM_BADGES + 6, CATERPIE
	contest_mon MORN|DAY|NITE,     15, LEVEL_FROM_BADGES - 5, LEVEL_FROM_BADGES + 6, WEEDLE
	contest_mon MORN|DAY|NITE,     10, LEVEL_FROM_BADGES - 3, LEVEL_FROM_BADGES + 6, METAPOD
	contest_mon MORN|DAY|NITE,     10, LEVEL_FROM_BADGES - 3, LEVEL_FROM_BADGES + 6, KAKUNA
	contest_mon MORN|DAY|NITE,      5, LEVEL_FROM_BADGES + 0, LEVEL_FROM_BADGES + 3, BUTTERFREE
	contest_mon MORN|DAY|NITE,      5, LEVEL_FROM_BADGES + 0, LEVEL_FROM_BADGES + 3, BEEDRILL
	contest_mon MORN|DAY|NITE,     10, LEVEL_FROM_BADGES - 2, LEVEL_FROM_BADGES + 4, VENONAT
	contest_mon MORN|DAY|NITE,     10, LEVEL_FROM_BADGES - 2, LEVEL_FROM_BADGES + 5, PARAS
	contest_mon MORN|DAY|NITE,      5, LEVEL_FROM_BADGES + 0, LEVEL_FROM_BADGES + 3, VENOMOTH
	contest_mon MORN|DAY|NITE,      5, LEVEL_FROM_BADGES + 1, LEVEL_FROM_BADGES + 2, YANMA
	contest_mon MORN|DAY|NITE,      5, LEVEL_FROM_BADGES + 1, LEVEL_FROM_BADGES + 2, SCYTHER
	contest_mon MORN|DAY|NITE,      5, LEVEL_FROM_BADGES + 1, LEVEL_FROM_BADGES + 2, PINSIR
	db -1
ContestMonsEnd:

; Bug Catching Contest after E4
E4_ContestMons:
	;                    Time, Weight, min,                   max,                   species
	contest_mon MORN|DAY|NITE,     10, LEVEL_FROM_BADGES + 0,  LEVEL_FROM_BADGES + 4, BUTTERFREE
	contest_mon MORN|DAY|NITE,     10, LEVEL_FROM_BADGES + 0,  LEVEL_FROM_BADGES + 4, BEEDRILL
	contest_mon MORN|DAY|NITE,     10, LEVEL_FROM_BADGES + 0,  LEVEL_FROM_BADGES + 4, PARAS
	contest_mon MORN|DAY|NITE,      5, LEVEL_FROM_BADGES - 1,  LEVEL_FROM_BADGES + 2, PARASECT
	contest_mon MORN|DAY|NITE,     10, LEVEL_FROM_BADGES + 0,  LEVEL_FROM_BADGES + 4, VENONAT
	contest_mon MORN|DAY|NITE,      5, LEVEL_FROM_BADGES - 1,  LEVEL_FROM_BADGES + 2, VENOMOTH
	contest_mon MORN|DAY|NITE,      5, LEVEL_FROM_BADGES - 2,  LEVEL_FROM_BADGES + 1, SCYTHER
	contest_mon MORN|DAY|NITE,      5, LEVEL_FROM_BADGES - 2,  LEVEL_FROM_BADGES + 1, PINSIR
	contest_mon MORN|DAY|NITE,     10, LEVEL_FROM_BADGES + 0,  LEVEL_FROM_BADGES + 4, LEDIAN
	contest_mon MORN|DAY|NITE,      5, LEVEL_FROM_BADGES - 1,  LEVEL_FROM_BADGES + 2, ARIADOS
	contest_mon MORN|DAY|NITE,      5, LEVEL_FROM_BADGES - 2,  LEVEL_FROM_BADGES + 1, YANMA
	contest_mon MORN|DAY|NITE,      5, LEVEL_FROM_BADGES - 2,  LEVEL_FROM_BADGES + 1, HERACROSS
	contest_mon MORN|DAY|NITE,      5, LEVEL_FROM_BADGES + 0,  LEVEL_FROM_BADGES + 4, PINECO
	contest_mon MORN|DAY|NITE,      5, LEVEL_FROM_BADGES - 2,  LEVEL_FROM_BADGES + 1, FORRETRESS
	contest_mon MORN|DAY|NITE,      5, LEVEL_FROM_BADGES + 0,  LEVEL_FROM_BADGES + 4, SHUCKLE
	db -1
E4_ContestMonsEnd:

; Bug Catching Contest after Blue
Blue_ContestMons:
	;                    Time, Weight, min,                   max,                   species
	contest_mon MORN|DAY|NITE,     10, LEVEL_FROM_BADGES + 0,  LEVEL_FROM_BADGES + 4, BUTTERFREE
	contest_mon MORN|DAY|NITE,     10, LEVEL_FROM_BADGES + 0,  LEVEL_FROM_BADGES + 4, BEEDRILL
	contest_mon MORN|DAY|NITE,      7, LEVEL_FROM_BADGES - 1,  LEVEL_FROM_BADGES + 2, PARASECT
	contest_mon MORN|DAY|NITE,      7, LEVEL_FROM_BADGES - 1,  LEVEL_FROM_BADGES + 2, VENOMOTH
	contest_mon MORN|DAY|NITE,      7, LEVEL_FROM_BADGES - 2,  LEVEL_FROM_BADGES + 1, SCYTHER
	contest_mon MORN|DAY|NITE,      7, LEVEL_FROM_BADGES - 2,  LEVEL_FROM_BADGES + 1, PINSIR
	contest_mon MORN|DAY|NITE,     10, LEVEL_FROM_BADGES + 0,  LEVEL_FROM_BADGES + 4, LEDIAN
	contest_mon MORN|DAY|NITE,      8, LEVEL_FROM_BADGES - 1,  LEVEL_FROM_BADGES + 2, ARIADOS
	contest_mon MORN|DAY|NITE,      8, LEVEL_FROM_BADGES - 2,  LEVEL_FROM_BADGES + 1, YANMA
	contest_mon MORN|DAY|NITE,      7, LEVEL_FROM_BADGES - 2,  LEVEL_FROM_BADGES + 1, HERACROSS
	contest_mon MORN|DAY|NITE,      7, LEVEL_FROM_BADGES - 2,  LEVEL_FROM_BADGES + 1, FORRETRESS
	contest_mon MORN|DAY|NITE,      7, LEVEL_FROM_BADGES + 0,  LEVEL_FROM_BADGES + 4, SHUCKLE
	contest_mon MORN|DAY|NITE,      2, LEVEL_FROM_BADGES - 2,  LEVEL_FROM_BADGES + 1, SCIZOR
	contest_mon MORN|DAY|NITE,      2, LEVEL_FROM_BADGES - 2,  LEVEL_FROM_BADGES + 1, YANMEGA
	contest_mon MORN|DAY|NITE,      1, LEVEL_FROM_BADGES - 2,  LEVEL_FROM_BADGES + 1, KLEAVOR
	db -1
Blue_ContestMonsEnd:
