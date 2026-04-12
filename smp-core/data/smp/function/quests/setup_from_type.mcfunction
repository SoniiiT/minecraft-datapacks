# === Quest-Typ -> Stat + Target ===
# 46 Kategorien x 4 Schwierigkeiten = 184 Quest-Typen
# Wird als @s ausgefuehrt.

# -- quest.stat setzen --
execute if score @s smp.quest.type matches 1..4   run scoreboard players set @s smp.quest.stat 1
execute if score @s smp.quest.type matches 5..8   run scoreboard players set @s smp.quest.stat 2
execute if score @s smp.quest.type matches 9..12  run scoreboard players set @s smp.quest.stat 3
execute if score @s smp.quest.type matches 13..16 run scoreboard players set @s smp.quest.stat 4
execute if score @s smp.quest.type matches 17..20 run scoreboard players set @s smp.quest.stat 5
execute if score @s smp.quest.type matches 21..24 run scoreboard players set @s smp.quest.stat 6
execute if score @s smp.quest.type matches 25..28 run scoreboard players set @s smp.quest.stat 7
execute if score @s smp.quest.type matches 29..32 run scoreboard players set @s smp.quest.stat 8
execute if score @s smp.quest.type matches 33..36 run scoreboard players set @s smp.quest.stat 9
execute if score @s smp.quest.type matches 37..40 run scoreboard players set @s smp.quest.stat 10
execute if score @s smp.quest.type matches 41..44 run scoreboard players set @s smp.quest.stat 11
execute if score @s smp.quest.type matches 45..48 run scoreboard players set @s smp.quest.stat 12
execute if score @s smp.quest.type matches 49..52 run scoreboard players set @s smp.quest.stat 13
execute if score @s smp.quest.type matches 53..56 run scoreboard players set @s smp.quest.stat 14
execute if score @s smp.quest.type matches 57..60 run scoreboard players set @s smp.quest.stat 15
execute if score @s smp.quest.type matches 61..64 run scoreboard players set @s smp.quest.stat 16
execute if score @s smp.quest.type matches 65..68 run scoreboard players set @s smp.quest.stat 17
execute if score @s smp.quest.type matches 69..72 run scoreboard players set @s smp.quest.stat 18
execute if score @s smp.quest.type matches 73..76 run scoreboard players set @s smp.quest.stat 19
execute if score @s smp.quest.type matches 77..80 run scoreboard players set @s smp.quest.stat 20
execute if score @s smp.quest.type matches 81..84 run scoreboard players set @s smp.quest.stat 21
execute if score @s smp.quest.type matches 85..88 run scoreboard players set @s smp.quest.stat 22
execute if score @s smp.quest.type matches 89..92  run scoreboard players set @s smp.quest.stat 23
execute if score @s smp.quest.type matches 93..96  run scoreboard players set @s smp.quest.stat 24
execute if score @s smp.quest.type matches 97..100  run scoreboard players set @s smp.quest.stat 25
execute if score @s smp.quest.type matches 101..104 run scoreboard players set @s smp.quest.stat 26
execute if score @s smp.quest.type matches 105..108 run scoreboard players set @s smp.quest.stat 27
execute if score @s smp.quest.type matches 109..112 run scoreboard players set @s smp.quest.stat 28
execute if score @s smp.quest.type matches 113..116 run scoreboard players set @s smp.quest.stat 29
execute if score @s smp.quest.type matches 117..120 run scoreboard players set @s smp.quest.stat 30
execute if score @s smp.quest.type matches 121..124 run scoreboard players set @s smp.quest.stat 31
execute if score @s smp.quest.type matches 125..128 run scoreboard players set @s smp.quest.stat 32
execute if score @s smp.quest.type matches 129..132 run scoreboard players set @s smp.quest.stat 33
execute if score @s smp.quest.type matches 133..136 run scoreboard players set @s smp.quest.stat 34
execute if score @s smp.quest.type matches 137..140 run scoreboard players set @s smp.quest.stat 35
execute if score @s smp.quest.type matches 141..144 run scoreboard players set @s smp.quest.stat 36
execute if score @s smp.quest.type matches 145..148 run scoreboard players set @s smp.quest.stat 37
execute if score @s smp.quest.type matches 149..152 run scoreboard players set @s smp.quest.stat 38
execute if score @s smp.quest.type matches 153..156 run scoreboard players set @s smp.quest.stat 39
execute if score @s smp.quest.type matches 157..160 run scoreboard players set @s smp.quest.stat 40
execute if score @s smp.quest.type matches 161..164 run scoreboard players set @s smp.quest.stat 41
execute if score @s smp.quest.type matches 165..168 run scoreboard players set @s smp.quest.stat 42
execute if score @s smp.quest.type matches 169..172 run scoreboard players set @s smp.quest.stat 43
execute if score @s smp.quest.type matches 173..176 run scoreboard players set @s smp.quest.stat 44
execute if score @s smp.quest.type matches 177..180 run scoreboard players set @s smp.quest.stat 45
execute if score @s smp.quest.type matches 181..184 run scoreboard players set @s smp.quest.stat 46

# -- quest.target setzen --

# Stat 1 - Stein
execute if score @s smp.quest.type matches 1  run scoreboard players set @s smp.quest.target 16
execute if score @s smp.quest.type matches 2  run scoreboard players set @s smp.quest.target 32
execute if score @s smp.quest.type matches 3  run scoreboard players set @s smp.quest.target 64
execute if score @s smp.quest.type matches 4  run scoreboard players set @s smp.quest.target 128

# Stat 2 - Kohleerz
execute if score @s smp.quest.type matches 5  run scoreboard players set @s smp.quest.target 4
execute if score @s smp.quest.type matches 6  run scoreboard players set @s smp.quest.target 8
execute if score @s smp.quest.type matches 7  run scoreboard players set @s smp.quest.target 16
execute if score @s smp.quest.type matches 8  run scoreboard players set @s smp.quest.target 32

# Stat 3 - Eisenerz
execute if score @s smp.quest.type matches 9  run scoreboard players set @s smp.quest.target 2
execute if score @s smp.quest.type matches 10 run scoreboard players set @s smp.quest.target 4
execute if score @s smp.quest.type matches 11 run scoreboard players set @s smp.quest.target 8
execute if score @s smp.quest.type matches 12 run scoreboard players set @s smp.quest.target 16

# Stat 4 - Golderz
execute if score @s smp.quest.type matches 13 run scoreboard players set @s smp.quest.target 2
execute if score @s smp.quest.type matches 14 run scoreboard players set @s smp.quest.target 4
execute if score @s smp.quest.type matches 15 run scoreboard players set @s smp.quest.target 6
execute if score @s smp.quest.type matches 16 run scoreboard players set @s smp.quest.target 12

# Stat 5 - Diamanterz
execute if score @s smp.quest.type matches 17 run scoreboard players set @s smp.quest.target 1
execute if score @s smp.quest.type matches 18 run scoreboard players set @s smp.quest.target 2
execute if score @s smp.quest.type matches 19 run scoreboard players set @s smp.quest.target 3
execute if score @s smp.quest.type matches 20 run scoreboard players set @s smp.quest.target 6

# Stat 6 - Smaragderz
execute if score @s smp.quest.type matches 21 run scoreboard players set @s smp.quest.target 1
execute if score @s smp.quest.type matches 22 run scoreboard players set @s smp.quest.target 2
execute if score @s smp.quest.type matches 23 run scoreboard players set @s smp.quest.target 3
execute if score @s smp.quest.type matches 24 run scoreboard players set @s smp.quest.target 5

# Stat 7 - Lapiserz
execute if score @s smp.quest.type matches 25 run scoreboard players set @s smp.quest.target 2
execute if score @s smp.quest.type matches 26 run scoreboard players set @s smp.quest.target 4
execute if score @s smp.quest.type matches 27 run scoreboard players set @s smp.quest.target 8
execute if score @s smp.quest.type matches 28 run scoreboard players set @s smp.quest.target 16

# Stat 8 - Redstoneerz
execute if score @s smp.quest.type matches 29 run scoreboard players set @s smp.quest.target 4
execute if score @s smp.quest.type matches 30 run scoreboard players set @s smp.quest.target 8
execute if score @s smp.quest.type matches 31 run scoreboard players set @s smp.quest.target 12
execute if score @s smp.quest.type matches 32 run scoreboard players set @s smp.quest.target 20

# Stat 9 - Kupfererz
execute if score @s smp.quest.type matches 33 run scoreboard players set @s smp.quest.target 4
execute if score @s smp.quest.type matches 34 run scoreboard players set @s smp.quest.target 8
execute if score @s smp.quest.type matches 35 run scoreboard players set @s smp.quest.target 12
execute if score @s smp.quest.type matches 36 run scoreboard players set @s smp.quest.target 20

# Stat 10 - Kies
execute if score @s smp.quest.type matches 37 run scoreboard players set @s smp.quest.target 16
execute if score @s smp.quest.type matches 38 run scoreboard players set @s smp.quest.target 32
execute if score @s smp.quest.type matches 39 run scoreboard players set @s smp.quest.target 64
execute if score @s smp.quest.type matches 40 run scoreboard players set @s smp.quest.target 96

# Stat 11 - Sand
execute if score @s smp.quest.type matches 41 run scoreboard players set @s smp.quest.target 16
execute if score @s smp.quest.type matches 42 run scoreboard players set @s smp.quest.target 32
execute if score @s smp.quest.type matches 43 run scoreboard players set @s smp.quest.target 64
execute if score @s smp.quest.type matches 44 run scoreboard players set @s smp.quest.target 96

# Stat 12 - Baumstaemme (alle Holztypen)
execute if score @s smp.quest.type matches 45 run scoreboard players set @s smp.quest.target 4
execute if score @s smp.quest.type matches 46 run scoreboard players set @s smp.quest.target 8
execute if score @s smp.quest.type matches 47 run scoreboard players set @s smp.quest.target 16
execute if score @s smp.quest.type matches 48 run scoreboard players set @s smp.quest.target 32

# Stat 13 - Zombies
execute if score @s smp.quest.type matches 49 run scoreboard players set @s smp.quest.target 3
execute if score @s smp.quest.type matches 50 run scoreboard players set @s smp.quest.target 5
execute if score @s smp.quest.type matches 51 run scoreboard players set @s smp.quest.target 10
execute if score @s smp.quest.type matches 52 run scoreboard players set @s smp.quest.target 20

# Stat 14 - Skelette
execute if score @s smp.quest.type matches 53 run scoreboard players set @s smp.quest.target 3
execute if score @s smp.quest.type matches 54 run scoreboard players set @s smp.quest.target 5
execute if score @s smp.quest.type matches 55 run scoreboard players set @s smp.quest.target 10
execute if score @s smp.quest.type matches 56 run scoreboard players set @s smp.quest.target 20

# Stat 15 - Creeper
execute if score @s smp.quest.type matches 57 run scoreboard players set @s smp.quest.target 2
execute if score @s smp.quest.type matches 58 run scoreboard players set @s smp.quest.target 4
execute if score @s smp.quest.type matches 59 run scoreboard players set @s smp.quest.target 6
execute if score @s smp.quest.type matches 60 run scoreboard players set @s smp.quest.target 12

# Stat 16 - Spinnen
execute if score @s smp.quest.type matches 61 run scoreboard players set @s smp.quest.target 3
execute if score @s smp.quest.type matches 62 run scoreboard players set @s smp.quest.target 5
execute if score @s smp.quest.type matches 63 run scoreboard players set @s smp.quest.target 10
execute if score @s smp.quest.type matches 64 run scoreboard players set @s smp.quest.target 20

# Stat 17 - Endermen
execute if score @s smp.quest.type matches 65 run scoreboard players set @s smp.quest.target 1
execute if score @s smp.quest.type matches 66 run scoreboard players set @s smp.quest.target 3
execute if score @s smp.quest.type matches 67 run scoreboard players set @s smp.quest.target 5
execute if score @s smp.quest.type matches 68 run scoreboard players set @s smp.quest.target 10

# Stat 18 - Blazes (Nether)
execute if score @s smp.quest.type matches 69 run scoreboard players set @s smp.quest.target 1
execute if score @s smp.quest.type matches 70 run scoreboard players set @s smp.quest.target 3
execute if score @s smp.quest.type matches 71 run scoreboard players set @s smp.quest.target 5
execute if score @s smp.quest.type matches 72 run scoreboard players set @s smp.quest.target 10

# Stat 19 - Ertrunkene
execute if score @s smp.quest.type matches 73 run scoreboard players set @s smp.quest.target 2
execute if score @s smp.quest.type matches 74 run scoreboard players set @s smp.quest.target 4
execute if score @s smp.quest.type matches 75 run scoreboard players set @s smp.quest.target 8
execute if score @s smp.quest.type matches 76 run scoreboard players set @s smp.quest.target 15

# Stat 20 - Phantome
execute if score @s smp.quest.type matches 77 run scoreboard players set @s smp.quest.target 1
execute if score @s smp.quest.type matches 78 run scoreboard players set @s smp.quest.target 2
execute if score @s smp.quest.type matches 79 run scoreboard players set @s smp.quest.target 4
execute if score @s smp.quest.type matches 80 run scoreboard players set @s smp.quest.target 8

# Stat 21 - Hexen
execute if score @s smp.quest.type matches 81 run scoreboard players set @s smp.quest.target 1
execute if score @s smp.quest.type matches 82 run scoreboard players set @s smp.quest.target 2
execute if score @s smp.quest.type matches 83 run scoreboard players set @s smp.quest.target 4
execute if score @s smp.quest.type matches 84 run scoreboard players set @s smp.quest.target 8

# Stat 22 - Laufen (Bloecke, /100 in check_progress)
execute if score @s smp.quest.type matches 85 run scoreboard players set @s smp.quest.target 250
execute if score @s smp.quest.type matches 86 run scoreboard players set @s smp.quest.target 500
execute if score @s smp.quest.type matches 87 run scoreboard players set @s smp.quest.target 1000
execute if score @s smp.quest.type matches 88 run scoreboard players set @s smp.quest.target 2000

# Stat 23 - Angeln
execute if score @s smp.quest.type matches 89 run scoreboard players set @s smp.quest.target 1
execute if score @s smp.quest.type matches 90 run scoreboard players set @s smp.quest.target 2
execute if score @s smp.quest.type matches 91 run scoreboard players set @s smp.quest.target 4
execute if score @s smp.quest.type matches 92 run scoreboard players set @s smp.quest.target 8

# Stat 24 - Brot backen (crafted)
execute if score @s smp.quest.type matches 93 run scoreboard players set @s smp.quest.target 3
execute if score @s smp.quest.type matches 94 run scoreboard players set @s smp.quest.target 6
execute if score @s smp.quest.type matches 95 run scoreboard players set @s smp.quest.target 12
execute if score @s smp.quest.type matches 96 run scoreboard players set @s smp.quest.target 20

# Stat 25 - Pfeile craften
execute if score @s smp.quest.type matches 97  run scoreboard players set @s smp.quest.target 8
execute if score @s smp.quest.type matches 98  run scoreboard players set @s smp.quest.target 16
execute if score @s smp.quest.type matches 99  run scoreboard players set @s smp.quest.target 32
execute if score @s smp.quest.type matches 100 run scoreboard players set @s smp.quest.target 64

# Stat 26 - Haendler (mit Dorfbewohnern handeln)
execute if score @s smp.quest.type matches 101 run scoreboard players set @s smp.quest.target 2
execute if score @s smp.quest.type matches 102 run scoreboard players set @s smp.quest.target 5
execute if score @s smp.quest.type matches 103 run scoreboard players set @s smp.quest.target 10
execute if score @s smp.quest.type matches 104 run scoreboard players set @s smp.quest.target 20

# Stat 27 - Verzaubern
execute if score @s smp.quest.type matches 105 run scoreboard players set @s smp.quest.target 1
execute if score @s smp.quest.type matches 106 run scoreboard players set @s smp.quest.target 2
execute if score @s smp.quest.type matches 107 run scoreboard players set @s smp.quest.target 3
execute if score @s smp.quest.type matches 108 run scoreboard players set @s smp.quest.target 5

# Stat 28 - Elytra fliegen (Bloecke, /100 in check_progress)
execute if score @s smp.quest.type matches 109 run scoreboard players set @s smp.quest.target 200
execute if score @s smp.quest.type matches 110 run scoreboard players set @s smp.quest.target 500
execute if score @s smp.quest.type matches 111 run scoreboard players set @s smp.quest.target 1000
execute if score @s smp.quest.type matches 112 run scoreboard players set @s smp.quest.target 2000

# Stat 29 - Klettern (Bloecke, /100 in check_progress)
execute if score @s smp.quest.type matches 113 run scoreboard players set @s smp.quest.target 50
execute if score @s smp.quest.type matches 114 run scoreboard players set @s smp.quest.target 100
execute if score @s smp.quest.type matches 115 run scoreboard players set @s smp.quest.target 200
execute if score @s smp.quest.type matches 116 run scoreboard players set @s smp.quest.target 400

# Stat 30 - Tiere toeten (Schwein, Kuh, Huhn, Schaf)
execute if score @s smp.quest.type matches 117 run scoreboard players set @s smp.quest.target 3
execute if score @s smp.quest.type matches 118 run scoreboard players set @s smp.quest.target 5
execute if score @s smp.quest.type matches 119 run scoreboard players set @s smp.quest.target 10
execute if score @s smp.quest.type matches 120 run scoreboard players set @s smp.quest.target 20

# Stat 31 - Tiere zuechten
execute if score @s smp.quest.type matches 121 run scoreboard players set @s smp.quest.target 1
execute if score @s smp.quest.type matches 122 run scoreboard players set @s smp.quest.target 2
execute if score @s smp.quest.type matches 123 run scoreboard players set @s smp.quest.target 4
execute if score @s smp.quest.type matches 124 run scoreboard players set @s smp.quest.target 8

# Stat 32 - Ancient Debris
execute if score @s smp.quest.type matches 125 run scoreboard players set @s smp.quest.target 1
execute if score @s smp.quest.type matches 126 run scoreboard players set @s smp.quest.target 2
execute if score @s smp.quest.type matches 127 run scoreboard players set @s smp.quest.target 3
execute if score @s smp.quest.type matches 128 run scoreboard players set @s smp.quest.target 5

# Stat 33 - Netherquarz
execute if score @s smp.quest.type matches 129 run scoreboard players set @s smp.quest.target 4
execute if score @s smp.quest.type matches 130 run scoreboard players set @s smp.quest.target 8
execute if score @s smp.quest.type matches 131 run scoreboard players set @s smp.quest.target 16
execute if score @s smp.quest.type matches 132 run scoreboard players set @s smp.quest.target 32

# Stat 34 - Schlafen
execute if score @s smp.quest.type matches 133 run scoreboard players set @s smp.quest.target 1
execute if score @s smp.quest.type matches 134 run scoreboard players set @s smp.quest.target 2
execute if score @s smp.quest.type matches 135 run scoreboard players set @s smp.quest.target 3
execute if score @s smp.quest.type matches 136 run scoreboard players set @s smp.quest.target 5

# Stat 35 - Kuchen backen (crafted)
execute if score @s smp.quest.type matches 137 run scoreboard players set @s smp.quest.target 1
execute if score @s smp.quest.type matches 138 run scoreboard players set @s smp.quest.target 2
execute if score @s smp.quest.type matches 139 run scoreboard players set @s smp.quest.target 3
execute if score @s smp.quest.type matches 140 run scoreboard players set @s smp.quest.target 5

# Stat 36 - Knochenmehl verwenden
execute if score @s smp.quest.type matches 141 run scoreboard players set @s smp.quest.target 8
execute if score @s smp.quest.type matches 142 run scoreboard players set @s smp.quest.target 16
execute if score @s smp.quest.type matches 143 run scoreboard players set @s smp.quest.target 32
execute if score @s smp.quest.type matches 144 run scoreboard players set @s smp.quest.target 64

# Stat 37 - Waechter toeten
execute if score @s smp.quest.type matches 145 run scoreboard players set @s smp.quest.target 2
execute if score @s smp.quest.type matches 146 run scoreboard players set @s smp.quest.target 4
execute if score @s smp.quest.type matches 147 run scoreboard players set @s smp.quest.target 8
execute if score @s smp.quest.type matches 148 run scoreboard players set @s smp.quest.target 15

# Stat 38 - Wither-Skelette toeten
execute if score @s smp.quest.type matches 149 run scoreboard players set @s smp.quest.target 1
execute if score @s smp.quest.type matches 150 run scoreboard players set @s smp.quest.target 2
execute if score @s smp.quest.type matches 151 run scoreboard players set @s smp.quest.target 4
execute if score @s smp.quest.type matches 152 run scoreboard players set @s smp.quest.target 8

# Stats 39-46 - Biom-Erkundung (Ziel immer 1 = Biom betreten)
execute if score @s smp.quest.type matches 153..184 run scoreboard players set @s smp.quest.target 1
