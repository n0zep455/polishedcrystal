TreeMons:
; entries correspond to TREEMON_SET_* constants
	table_width 2
	dw TreeMonSet_City
	dw TreeMonSet_Canyon
	dw TreeMonSet_Town
	dw TreeMonSet_Route
	dw TreeMonSet_Kanto
	dw TreeMonSet_Lake
	dw TreeMonSet_Forest
	dw TreeMonSet_Apricorns
	dw TreeMonSet_NoisyForest
	dw TreeMonSet_Rock
	assert_table_length NUM_TREEMON_SETS
	dw TreeMonSet_City ; unused

MACRO tree_mon
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

TreeMonSet_City:
TreeMonSet_Canyon:
	tree_mon MORN|DAY|NITE, 50, 10, 10, SPEAROW
	tree_mon MORN|DAY|NITE, 30, 10, 10, AIPOM
	tree_mon MORN|DAY|NITE, 20, 10, 10, HERACROSS
	db -1
	tree_mon MORN|DAY|NITE, 50, 10, 10, SPEAROW
	tree_mon MORN|DAY|NITE, 30, 10, 10, AIPOM
	tree_mon MORN|DAY|NITE, 20, 10, 10, HERACROSS
	db -1

TreeMonSet_Town:
	tree_mon MORN|DAY|NITE, 25, 10, 10, SPEAROW
	tree_mon MORN|DAY|NITE, 25, 10, 10, EKANS
	tree_mon MORN|DAY|NITE, 25, 10, 10, AIPOM
	tree_mon MORN|DAY|NITE, 25, 10, 10, HERACROSS
	db -1
	tree_mon MORN|DAY|NITE, 25, 10, 10, SPEAROW
	tree_mon MORN|DAY|NITE, 25, 10, 10, EKANS
	tree_mon MORN|DAY|NITE, 25, 10, 10, AIPOM
	tree_mon MORN|DAY|NITE, 25, 10, 10, HERACROSS
	db -1

TreeMonSet_Route:
	tree_mon MORN|DAY|NITE, 30, 10, 10, HOOTHOOT
	tree_mon MORN|DAY|NITE, 20, 10, 10, SPINARAK
	tree_mon MORN|DAY|NITE, 20, 10, 10, LEDYBA
	tree_mon MORN|DAY|NITE, 10, 10, 10, EXEGGCUTE
	tree_mon MORN|DAY|NITE, 10, 10, 10, MURKROW
	tree_mon MORN|DAY|NITE, 10, 10, 10, PINECO
	db -1
	tree_mon MORN|DAY|NITE, 30, 10, 10, HOOTHOOT
	tree_mon MORN|DAY|NITE, 20, 10, 10, SPINARAK
	tree_mon MORN|DAY|NITE, 20, 10, 10, LEDYBA
	tree_mon MORN|DAY|NITE, 10, 10, 10, EXEGGCUTE
	tree_mon MORN|DAY|NITE, 10, 10, 10, MURKROW
	tree_mon MORN|DAY|NITE, 10, 10, 10, PINECO
	db -1

TreeMonSet_Kanto:
	tree_mon MORN|DAY|NITE, 30, 10, 10, HOOTHOOT
	tree_mon MORN|DAY|NITE, 20, 10, 10, EKANS
	tree_mon MORN|DAY|NITE, 20, 10, 10, EXEGGCUTE
	tree_mon MORN|DAY|NITE, 15, 10, 10, MURKROW
	tree_mon MORN|DAY|NITE, 15, 10, 10, PINECO
	db -1
	tree_mon MORN|DAY|NITE, 30, 10, 10, HOOTHOOT
	tree_mon MORN|DAY|NITE, 20, 10, 10, EKANS
	tree_mon MORN|DAY|NITE, 20, 10, 10, EXEGGCUTE
	tree_mon MORN|DAY|NITE, 15, 10, 10, MURKROW
	tree_mon MORN|DAY|NITE, 15, 10, 10, PINECO
	db -1

TreeMonSet_Lake:
	tree_mon MORN|DAY|NITE, 40, 10, 10, HOOTHOOT
	tree_mon MORN|DAY|NITE, 30, 10, 10, VENONAT
	tree_mon MORN|DAY|NITE, 20, 10, 10, EXEGGCUTE
	tree_mon MORN|DAY|NITE, 10, 10, 10, PINECO
	db -1
	tree_mon MORN|DAY|NITE, 40, 10, 10, HOOTHOOT
	tree_mon MORN|DAY|NITE, 30, 10, 10, VENONAT
	tree_mon MORN|DAY|NITE, 20, 10, 10, EXEGGCUTE
	tree_mon MORN|DAY|NITE, 10, 10, 10, PINECO
	db -1

TreeMonSet_Forest:
	tree_mon MORN|DAY|NITE, 20, 10, 10, HOOTHOOT
	tree_mon MORN|DAY|NITE, 15, 10, 10, CATERPIE
	tree_mon MORN|DAY|NITE, 15, 10, 10, WEEDLE
	tree_mon MORN|DAY|NITE, 10, 10, 10, METAPOD
	tree_mon MORN|DAY|NITE, 10, 10, 10, KAKUNA
	tree_mon MORN|DAY|NITE, 15, 10, 10, PINECO
	tree_mon MORN|DAY|NITE,  5, 10, 10, NOCTOWL
	tree_mon MORN|DAY|NITE,  5, 10, 10, BUTTERFREE
	tree_mon MORN|DAY|NITE,  5, 10, 10, BEEDRILL
	db -1
	tree_mon MORN|DAY|NITE, 20, 10, 10, HOOTHOOT
	tree_mon MORN|DAY|NITE, 15, 10, 10, CATERPIE
	tree_mon MORN|DAY|NITE, 15, 10, 10, WEEDLE
	tree_mon MORN|DAY|NITE, 10, 10, 10, METAPOD
	tree_mon MORN|DAY|NITE, 10, 10, 10, KAKUNA
	tree_mon MORN|DAY|NITE, 15, 10, 10, PINECO
	tree_mon MORN|DAY|NITE,  5, 10, 10, NOCTOWL
	tree_mon MORN|DAY|NITE,  5, 10, 10, BUTTERFREE
	tree_mon MORN|DAY|NITE,  5, 10, 10, BEEDRILL
	db -1

TreeMonSet_Apricorns:
	tree_mon MORN|DAY|NITE, 30, 10, 10, SPEAROW
	tree_mon MORN|DAY|NITE, 20, 10, 10, EKANS
	tree_mon MORN|DAY|NITE, 10, 10, 10, AIPOM
	tree_mon MORN|DAY|NITE, 10, 10, 10, VOLTORB, HISUIAN_FORM
	tree_mon MORN|DAY|NITE, 15, 10, 10, HERACROSS
	tree_mon MORN|DAY|NITE, 15, 10, 10, MEOWTH
	db -1
	tree_mon MORN|DAY|NITE, 30, 10, 10, SPEAROW
	tree_mon MORN|DAY|NITE, 20, 10, 10, EKANS
	tree_mon MORN|DAY|NITE, 10, 10, 10, AIPOM
	tree_mon MORN|DAY|NITE, 10, 10, 10, VOLTORB, HISUIAN_FORM
	tree_mon MORN|DAY|NITE, 15, 10, 10, HERACROSS
	tree_mon MORN|DAY|NITE, 15, 10, 10, MEOWTH
	db -1

TreeMonSet_NoisyForest:
	tree_mon MORN|DAY|NITE, 30, LEVEL_FROM_BADGES - 3, LEVEL_FROM_BADGES - 3, PINECO
	tree_mon MORN|DAY|NITE, 20, LEVEL_FROM_BADGES - 3, LEVEL_FROM_BADGES - 3, VOLTORB, HISUIAN_FORM
	tree_mon MORN|DAY|NITE, 20, LEVEL_FROM_BADGES + 2, LEVEL_FROM_BADGES + 2, FORRETRESS
	tree_mon MORN|DAY|NITE, 20, LEVEL_FROM_BADGES + 0, LEVEL_FROM_BADGES + 0, ELECTRODE, HISUIAN_FORM
	db -1
	tree_mon MORN|DAY|NITE, 30, LEVEL_FROM_BADGES - 3, LEVEL_FROM_BADGES - 3, PINECO
	tree_mon MORN|DAY|NITE, 20, LEVEL_FROM_BADGES - 3, LEVEL_FROM_BADGES - 3, VOLTORB, HISUIAN_FORM
	tree_mon MORN|DAY|NITE, 20, LEVEL_FROM_BADGES + 2, LEVEL_FROM_BADGES + 2, FORRETRESS
	tree_mon MORN|DAY|NITE, 20, LEVEL_FROM_BADGES + 0, LEVEL_FROM_BADGES + 0, ELECTRODE, HISUIAN_FORM
	db -1

TreeMonSet_Rock:
	tree_mon MORN|DAY|NITE, 70, 15, 15, KRABBY
	tree_mon MORN|DAY|NITE, 25, 15, 15, GEODUDE
	tree_mon MORN|DAY|NITE,  5, 15, 15, SHUCKLE
	db -1
