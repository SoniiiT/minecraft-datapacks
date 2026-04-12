# === Quest-Papier geben ===
# Wird als @s (Spieler) ausgeführt.
# quest.type, quest.stat und quest.target müssen bereits gesetzt sein.
# Bei vollem Inventar fällt das Papier automatisch auf den Boden.

# Quest-Daten in Storage für Makro bereitstellen
execute store result storage smp:tmp quest.qtype int 1 run scoreboard players get @s smp.quest.type
execute store result storage smp:tmp quest.qtarget int 1 run scoreboard players get @s smp.quest.target

# Stat-spezifisches Papier mit Makro-Funktion geben
execute if score @s smp.quest.stat matches 1  run function smp:quests/paper/stat_1  with storage smp:tmp quest
execute if score @s smp.quest.stat matches 2  run function smp:quests/paper/stat_2  with storage smp:tmp quest
execute if score @s smp.quest.stat matches 3  run function smp:quests/paper/stat_3  with storage smp:tmp quest
execute if score @s smp.quest.stat matches 4  run function smp:quests/paper/stat_4  with storage smp:tmp quest
execute if score @s smp.quest.stat matches 5  run function smp:quests/paper/stat_5  with storage smp:tmp quest
execute if score @s smp.quest.stat matches 6  run function smp:quests/paper/stat_6  with storage smp:tmp quest
execute if score @s smp.quest.stat matches 7  run function smp:quests/paper/stat_7  with storage smp:tmp quest
execute if score @s smp.quest.stat matches 8  run function smp:quests/paper/stat_8  with storage smp:tmp quest
execute if score @s smp.quest.stat matches 9  run function smp:quests/paper/stat_9  with storage smp:tmp quest
execute if score @s smp.quest.stat matches 10 run function smp:quests/paper/stat_10 with storage smp:tmp quest
execute if score @s smp.quest.stat matches 11 run function smp:quests/paper/stat_11 with storage smp:tmp quest
execute if score @s smp.quest.stat matches 12 run function smp:quests/paper/stat_12 with storage smp:tmp quest
execute if score @s smp.quest.stat matches 13 run function smp:quests/paper/stat_13 with storage smp:tmp quest
execute if score @s smp.quest.stat matches 14 run function smp:quests/paper/stat_14 with storage smp:tmp quest
execute if score @s smp.quest.stat matches 15 run function smp:quests/paper/stat_15 with storage smp:tmp quest
execute if score @s smp.quest.stat matches 16 run function smp:quests/paper/stat_16 with storage smp:tmp quest
execute if score @s smp.quest.stat matches 17 run function smp:quests/paper/stat_17 with storage smp:tmp quest
execute if score @s smp.quest.stat matches 18 run function smp:quests/paper/stat_18 with storage smp:tmp quest
execute if score @s smp.quest.stat matches 19 run function smp:quests/paper/stat_19 with storage smp:tmp quest
execute if score @s smp.quest.stat matches 20 run function smp:quests/paper/stat_20 with storage smp:tmp quest
execute if score @s smp.quest.stat matches 21 run function smp:quests/paper/stat_21 with storage smp:tmp quest
execute if score @s smp.quest.stat matches 22 run function smp:quests/paper/stat_22 with storage smp:tmp quest
execute if score @s smp.quest.stat matches 23 run function smp:quests/paper/stat_23 with storage smp:tmp quest
execute if score @s smp.quest.stat matches 24 run function smp:quests/paper/stat_24 with storage smp:tmp quest
execute if score @s smp.quest.stat matches 25 run function smp:quests/paper/stat_25 with storage smp:tmp quest
execute if score @s smp.quest.stat matches 26 run function smp:quests/paper/stat_26 with storage smp:tmp quest
execute if score @s smp.quest.stat matches 27 run function smp:quests/paper/stat_27 with storage smp:tmp quest
execute if score @s smp.quest.stat matches 28 run function smp:quests/paper/stat_28 with storage smp:tmp quest
execute if score @s smp.quest.stat matches 29 run function smp:quests/paper/stat_29 with storage smp:tmp quest
execute if score @s smp.quest.stat matches 30 run function smp:quests/paper/stat_30 with storage smp:tmp quest
execute if score @s smp.quest.stat matches 31 run function smp:quests/paper/stat_31 with storage smp:tmp quest
execute if score @s smp.quest.stat matches 32 run function smp:quests/paper/stat_32 with storage smp:tmp quest
execute if score @s smp.quest.stat matches 33 run function smp:quests/paper/stat_33 with storage smp:tmp quest
execute if score @s smp.quest.stat matches 34 run function smp:quests/paper/stat_34 with storage smp:tmp quest
execute if score @s smp.quest.stat matches 35 run function smp:quests/paper/stat_35 with storage smp:tmp quest
execute if score @s smp.quest.stat matches 36 run function smp:quests/paper/stat_36 with storage smp:tmp quest
execute if score @s smp.quest.stat matches 37 run function smp:quests/paper/stat_37 with storage smp:tmp quest
execute if score @s smp.quest.stat matches 38 run function smp:quests/paper/stat_38 with storage smp:tmp quest
execute if score @s smp.quest.stat matches 39 run function smp:quests/paper/stat_39 with storage smp:tmp quest
execute if score @s smp.quest.stat matches 40 run function smp:quests/paper/stat_40 with storage smp:tmp quest
execute if score @s smp.quest.stat matches 41 run function smp:quests/paper/stat_41 with storage smp:tmp quest
execute if score @s smp.quest.stat matches 42 run function smp:quests/paper/stat_42 with storage smp:tmp quest
execute if score @s smp.quest.stat matches 43 run function smp:quests/paper/stat_43 with storage smp:tmp quest
execute if score @s smp.quest.stat matches 44 run function smp:quests/paper/stat_44 with storage smp:tmp quest
execute if score @s smp.quest.stat matches 45 run function smp:quests/paper/stat_45 with storage smp:tmp quest
execute if score @s smp.quest.stat matches 46 run function smp:quests/paper/stat_46 with storage smp:tmp quest
