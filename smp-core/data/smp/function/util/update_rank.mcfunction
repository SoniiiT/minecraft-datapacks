# === Rang aktualisieren ===
# Thresholds: Neuling=0, Abenteurer=10, Krieger=25, Veteran=50, Legende=100
# Neuen Rang in smp.tmp2 berechnen, mit altem (smp.rank) vergleichen

scoreboard players set @s smp.tmp2 0
execute if score @s smp.quests_done matches 10..  run scoreboard players set @s smp.tmp2 1
execute if score @s smp.quests_done matches 25..  run scoreboard players set @s smp.tmp2 2
execute if score @s smp.quests_done matches 50..  run scoreboard players set @s smp.tmp2 3
execute if score @s smp.quests_done matches 100.. run scoreboard players set @s smp.tmp2 4

# Aufstieg ankündigen (nur wenn tatsächlich gestiegen)
execute if score @s smp.tmp2 > @s smp.rank run function smp:util/announce_rank_up

# Rang setzen
scoreboard players operation @s smp.rank = @s smp.tmp2
