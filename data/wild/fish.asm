MACRO fishgroup
; mon chance, mon+item chance, old rod, good rod, super rod
	db \1, \2
	dw \3, \4, \5
ENDM

FishGroups:
; entries correspond to FISHGROUP_* constants
	table_width FISHGROUP_DATA_LENGTH
	fishgroup 65 percent, (65 + 5) percent, .Shore_Old,            .Shore_Good,            .Shore_Super
	fishgroup 75 percent, (75 + 1) percent, .Ocean_Old,            .Ocean_Good,            .Ocean_Super
	fishgroup 70 percent, (70 + 5) percent, .Lake_Old,             .Lake_Good,             .Lake_Super
	fishgroup 70 percent, (70 + 5) percent, .Well_Old,             .Well_Good,             .Well_Super
	fishgroup 70 percent, (70 + 3) percent, .River_Old,            .River_Good,            .River_Super
	fishgroup 55 percent, (55 + 5) percent, .Pond_Old,             .Pond_Good,             .Pond_Super
	fishgroup 60 percent, (60 + 3) percent, .Dratini_Old,          .Dratini_Good,          .Dratini_Super
	fishgroup 60 percent, (65 + 5) percent, .Qwilfish_Swarm_Old,   .Qwilfish_Swarm_Good,   .Qwilfish_Swarm_Super
	fishgroup 60 percent, (60 + 3) percent, .Remoraid_Swarm_Old,   .Remoraid_Swarm_Good,   .Remoraid_Swarm_Super
	fishgroup 60 percent, (60 + 3) percent, .Gyarados_Old,         .Gyarados_Good,         .Gyarados_Super
	fishgroup 55 percent, (55 + 1) percent, .Dratini_2_Old,        .Dratini_2_Good,        .Dratini_2_Super
	fishgroup 60 percent, (60 + 3) percent, .WhirlIslands_Old,     .WhirlIslands_Good,     .WhirlIslands_Super
	fishgroup 60 percent, (60 + 3) percent, .Qwilfish_Old,         .Qwilfish_Good,         .Qwilfish_Super
	fishgroup 60 percent, (60 + 3) percent, .Remoraid_Old,         .Remoraid_Good,         .Remoraid_Super
	fishgroup 65 percent, (65 + 5) percent, .Hisuian_Qwilfish_Old, .Hisuian_Qwilfish_Good, .Hisuian_Qwilfish_Super
	fishgroup 65 percent, (65 + 5) percent, .Staryu_Old,           .Staryu_Good,           .Staryu_Super
	assert_table_length NUM_FISHGROUPS

MACRO fishentry
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

.Shore_Old:
	fishentry MORN|DAY|NITE, 40, 10, 10, MAGIKARP
	fishentry MORN|DAY|NITE, 40, 10, 10, MAGIKARP
	fishentry MORN|DAY|NITE, 20, 10, 10, KRABBY
.Shore_Good:
	fishentry MORN|DAY|NITE, 40, 20, 20, MAGIKARP
	fishentry MORN|DAY|NITE, 25, 20, 20, KRABBY
	fishentry MORN|DAY|NITE, 20, 20, 20, KRABBY
	fishentry MORN|DAY|NITE, 15, 20, 20, CORSOLA
.Shore_Super:
	fishentry MORN|DAY|NITE, 30, 40, 40, KRABBY
	fishentry MORN|DAY|NITE, 30, 40, 40, KRABBY
	fishentry MORN|DAY|NITE, 30, 40, 40, CORSOLA
	fishentry MORN|DAY|NITE, 10, 40, 40, KINGLER

.Ocean_Old:
	fishentry MORN|DAY|NITE, 10, 10, 10, MAGIKARP
	fishentry MORN|DAY|NITE, 30, 10, 10, TENTACOOL
	fishentry MORN|DAY|NITE, 30, 10, 10, CHINCHOU
.Ocean_Good:
	fishentry MORN|DAY|NITE, 35, 20, 20, MAGIKARP
	fishentry MORN|DAY|NITE, 35, 20, 20, TENTACOOL
	fishentry MORN|DAY|NITE, 20, 20, 20, CHINCHOU
	fishentry MORN|DAY|NITE, 10, 20, 20, SHELLDER
.Ocean_Super:
	fishentry MORN|DAY|NITE, 40, 40, 40, CHINCHOU
	fishentry MORN|DAY|NITE, 30, 40, 40, SHELLDER
	fishentry MORN|DAY|NITE, 20, 40, 40, TENTACRUEL
	fishentry MORN|DAY|NITE, 10, 40, 40, LANTURN

.Lake_Old:
.River_Old:
.Well_Old:
	fishentry MORN|DAY|NITE, 35, 10, 10, MAGIKARP
	fishentry MORN|DAY|NITE, 35, 10, 10, MAGIKARP
	fishentry MORN|DAY|NITE, 30, 10, 10, GOLDEEN
.Lake_Good:
.River_Good:
.Well_Good:
	fishentry MORN|DAY|NITE, 40, 20, 20, MAGIKARP
	fishentry MORN|DAY|NITE, 20, 20, 20, GOLDEEN
	fishentry MORN|DAY|NITE, 20, 20, 20, GOLDEEN
	fishentry MORN|DAY|NITE, 20, 20, 20, GOLDEEN
.Lake_Super:
.River_Super:
	fishentry MORN|DAY|NITE, 35, 40, 40, GOLDEEN
	fishentry MORN|DAY|NITE, 35, 40, 40, GOLDEEN
	fishentry MORN|DAY|NITE, 20, 40, 40, MAGIKARP
	fishentry MORN|DAY|NITE, 10, 40, 40, SEAKING

.Well_Super:
	fishentry MORN|DAY|NITE, 35, 40, 40, GOLDEEN
	fishentry MORN|DAY|NITE, 35, 40, 40, GOLDEEN
	fishentry MORN|DAY|NITE, 20, 40, 40, SHELLDER
	fishentry MORN|DAY|NITE, 10, 40, 40, SEAKING

.Pond_Old:
	fishentry MORN|DAY|NITE, 40, 10, 10, MAGIKARP
	fishentry MORN|DAY|NITE, 40, 10, 10, MAGIKARP
	fishentry MORN|DAY|NITE, 20, 10, 10, POLIWAG
.Pond_Good:
	fishentry MORN|DAY|NITE, 40, 20, 20, MAGIKARP
	fishentry MORN|DAY|NITE, 20, 20, 20, POLIWAG
	fishentry MORN|DAY|NITE, 20, 20, 20, POLIWAG
	fishentry MORN|DAY|NITE, 20, 20, 20, POLIWAG
.Pond_Super:
	fishentry MORN|DAY|NITE, 30, 40, 40, MAGIKARP
	fishentry MORN|DAY|NITE, 30, 40, 40, POLIWAG
	fishentry MORN|DAY|NITE, 30, 40, 40, POLIWAG
	fishentry MORN|DAY|NITE, 20, 40, 40, POLIWHIRL

.Dratini_Old:
	fishentry MORN|DAY|NITE, 50, 10, 10, MAGIKARP
	fishentry MORN|DAY|NITE, 49, 10, 10, MAGIKARP
	fishentry MORN|DAY|NITE,  1, 10, 10, DRATINI
.Dratini_Good:
	fishentry MORN|DAY|NITE, 30, 20, 20, MAGIKARP
	fishentry MORN|DAY|NITE, 30, 20, 20, MAGIKARP
	fishentry MORN|DAY|NITE, 30, 20, 20, MAGIKARP
	fishentry MORN|DAY|NITE, 10, 20, 20, DRATINI
.Dratini_Super:
	fishentry MORN|DAY|NITE, 20, 40, 40, MAGIKARP
	fishentry MORN|DAY|NITE, 20, 40, 40, MAGIKARP
	fishentry MORN|DAY|NITE, 20, 40, 40, MAGIKARP
	fishentry MORN|DAY|NITE, 40, 40, 40, DRATINI

.Qwilfish_Swarm_Old:
	fishentry MORN|DAY|NITE, 45, 10, 10, MAGIKARP
	fishentry MORN|DAY|NITE, 40, 10, 10, MAGIKARP
	fishentry MORN|DAY|NITE, 15, 10, 10, QWILFISH
.Qwilfish_Swarm_Good:
	fishentry MORN|DAY|NITE, 35, 20, 20, MAGIKARP
	fishentry MORN|DAY|NITE, 45, 20, 20, QWILFISH
	fishentry MORN|DAY|NITE, 10, 20, 20, QWILFISH
	fishentry MORN|DAY|NITE, 10, 20, 20, QWILFISH
.Qwilfish_Swarm_Super:
	fishentry MORN|DAY|NITE, 25, 40, 40, QWILFISH
	fishentry MORN|DAY|NITE, 25, 40, 40, QWILFISH
	fishentry MORN|DAY|NITE, 25, 40, 40, QWILFISH
	fishentry MORN|DAY|NITE, 25, 40, 40, QWILFISH

.Remoraid_Swarm_Old:
	fishentry MORN|DAY|NITE, 75, 10, 10, MAGIKARP
	fishentry MORN|DAY|NITE, 10, 10, 10, MAGIKARP
	fishentry MORN|DAY|NITE, 15, 10, 10, REMORAID
.Remoraid_Swarm_Good:
	fishentry MORN|DAY|NITE, 25, 20, 20, MAGIKARP
	fishentry MORN|DAY|NITE, 10, 20, 20, MAGIKARP
	fishentry MORN|DAY|NITE, 45, 20, 20, REMORAID
	fishentry MORN|DAY|NITE, 20, 20, 20, REMORAID
.Remoraid_Swarm_Super:
	fishentry MORN|DAY|NITE, 25, 40, 40, REMORAID
	fishentry MORN|DAY|NITE, 25, 40, 40, REMORAID
	fishentry MORN|DAY|NITE, 25, 40, 40, REMORAID
	fishentry MORN|DAY|NITE, 25, 40, 40, REMORAID

.Gyarados_Old:
	fishentry MORN|DAY|NITE, 40, 10, 10, MAGIKARP
	fishentry MORN|DAY|NITE, 30, 10, 10, MAGIKARP
	fishentry MORN|DAY|NITE, 30, 10, 10, MAGIKARP
.Gyarados_Good:
	fishentry MORN|DAY|NITE, 20, 20, 90, MAGIKARP
	fishentry MORN|DAY|NITE, 20, 20, 90, MAGIKARP
	fishentry MORN|DAY|NITE, 20, 20, 10, GYARADOS
	fishentry MORN|DAY|NITE, 20, 20, 10, GYARADOS
.Gyarados_Super:
	fishentry MORN|DAY|NITE, 35, 40, 40, MAGIKARP
	fishentry MORN|DAY|NITE, 35, 40, 40, MAGIKARP
	fishentry MORN|DAY|NITE, 15, 40, 40, GYARADOS
	fishentry MORN|DAY|NITE, 15, 40, 40, GYARADOS

.Dratini_2_Old:
	fishentry MORN|DAY|NITE, 40, 10, 10, MAGIKARP
	fishentry MORN|DAY|NITE, 30, 10, 10, MAGIKARP
	fishentry MORN|DAY|NITE, 30, 10, 10, MAGIKARP
.Dratini_2_Good:
	fishentry MORN|DAY|NITE, 90, 20, 20, MAGIKARP
	fishentry MORN|DAY|NITE, 90, 20, 20, MAGIKARP
	fishentry MORN|DAY|NITE, 10, 20, 20, DRATINI
	fishentry MORN|DAY|NITE, 10, 20, 20, DRATINI
.Dratini_2_Super:
	fishentry MORN|DAY|NITE, 50, 40, 40, MAGIKARP
	fishentry MORN|DAY|NITE, 10, 40, 40, MAGIKARP
	fishentry MORN|DAY|NITE, 30, 40, 40, DRATINI
	fishentry MORN|DAY|NITE, 10, 40, 40, DRAGONAIR

.WhirlIslands_Old:
	fishentry MORN|DAY|NITE, 75, 10, 10, MAGIKARP
	fishentry MORN|DAY|NITE, 10, 10, 10, MAGIKARP
	fishentry MORN|DAY|NITE, 15, 10, 10, KRABBY
.WhirlIslands_Good:
	fishentry MORN|DAY|NITE, 35, 20, 20, MAGIKARP
	fishentry MORN|DAY|NITE, 55, 20, 20, KRABBY
	fishentry MORN|DAY|NITE, 10, 20, 20, HORSEA
.WhirlIslands_Super:
	fishentry MORN|DAY|NITE, 40, 40, 40, KRABBY
	fishentry MORN|DAY|NITE, 30, 40, 40, HORSEA
	fishentry MORN|DAY|NITE, 20, 40, 40, KINGLER
	fishentry MORN|DAY|NITE, 10, 40, 40, SEADRA

.Qwilfish_Old:
	fishentry MORN|DAY|NITE, 45, 10, 10, MAGIKARP
	fishentry MORN|DAY|NITE, 40, 10, 10, MAGIKARP
	fishentry MORN|DAY|NITE, 15, 10, 10, TENTACOOL
.Qwilfish_Good:
	fishentry MORN|DAY|NITE, 15, 20, 20, MAGIKARP
	fishentry MORN|DAY|NITE, 15, 20, 20, MAGIKARP
	fishentry MORN|DAY|NITE, 35, 20, 20, TENTACOOL
	fishentry MORN|DAY|NITE, 35, 20, 20, TENTACOOL
.Qwilfish_Super:
	fishentry MORN|DAY|NITE, 35, 40, 40, TENTACOOL
	fishentry MORN|DAY|NITE, 35, 40, 40, TENTACOOL
	fishentry MORN|DAY|NITE, 20, 40, 40, MAGIKARP
	fishentry MORN|DAY|NITE, 10, 40, 40, QWILFISH

.Remoraid_Old:
	fishentry MORN|DAY|NITE, 75, 10, 10, MAGIKARP
	fishentry MORN|DAY|NITE, 10, 10, 10, MAGIKARP
	fishentry MORN|DAY|NITE, 15, 10, 10, POLIWAG
.Remoraid_Good:
	fishentry MORN|DAY|NITE, 35, 20, 20, MAGIKARP
	fishentry MORN|DAY|NITE, 35, 20, 20, MAGIKARP
	fishentry MORN|DAY|NITE, 65, 20, 20, POLIWAG
	fishentry MORN|DAY|NITE, 65, 20, 20, POLIWAG
.Remoraid_Super:
	fishentry MORN|DAY|NITE, 50, 40, 40, POLIWAG
	fishentry MORN|DAY|NITE, 20, 40, 40, POLIWAG
	fishentry MORN|DAY|NITE, 20, 40, 40, MAGIKARP
	fishentry MORN|DAY|NITE, 10, 40, 40, REMORAID

.Hisuian_Qwilfish_Old:
	fishentry MORN|DAY|NITE, 75, 10, 10, MAGIKARP
	fishentry MORN|DAY|NITE, 10, 10, 10, MAGIKARP
	fishentry MORN|DAY|NITE, 15, 10, 10, TENTACOOL
.Hisuian_Qwilfish_Good:
	fishentry MORN|DAY|NITE, 35, 20, 20, MAGIKARP
	fishentry MORN|DAY|NITE, 35, 20, 20, TENTACOOL
	fishentry MORN|DAY|NITE, 20, 20, 20, HORSEA
	fishentry MORN|DAY|NITE, 10, 20, 20, QWILFISH, HISUIAN_FORM
.Hisuian_Qwilfish_Super:
	fishentry MORN|DAY|NITE, 40, 40, 40, TENTACRUEL
	fishentry MORN|DAY|NITE, 30, 40, 40, SEADRA
	fishentry MORN|DAY|NITE, 20, 40, 40, QWILFISH, HISUIAN_FORM
	fishentry MORN|DAY|NITE, 10, 40, 40, OVERQWIL

.Staryu_Old:
	fishentry MORN|DAY|NITE, 75, 10, 10, MAGIKARP
	fishentry MORN|DAY|NITE, 10, 10, 10, MAGIKARP
	fishentry MORN|DAY|NITE, 15, 10, 10, KRABBY
.Staryu_Good:
	fishentry MORN|DAY|NITE, 35, 20, 20, MAGIKARP
	fishentry MORN|DAY|NITE, 45, 20, 20, KRABBY
	fishentry MORN|DAY|NITE, 10, 20, 20, KRABBY
	fishentry MORN|DAY|NITE, 10, 20, 20, STARYU
.Staryu_Super:
	fishentry MORN|DAY|NITE, 50, 40, 40, KRABBY
	fishentry MORN|DAY|NITE, 10, 40, 40, KRABBY
	fishentry MORN|DAY|NITE, 30, 40, 40, STARYU
	fishentry MORN|DAY|NITE, 10, 40, 40, KINGLER
