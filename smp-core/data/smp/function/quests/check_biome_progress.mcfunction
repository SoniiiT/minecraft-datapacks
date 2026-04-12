# === Biom-Erkundung: Fortschritt pruefen ===
# Wird als @s (Spieler) ausgefuehrt.
# Setzt quest.progress = 1 wenn Spieler im gesuchten Biom ist.

scoreboard players set @s smp.quest.progress 0

execute if score @s smp.quest.stat matches 39 if biome ~ ~ ~ minecraft:jungle             run scoreboard players set @s smp.quest.progress 1
execute if score @s smp.quest.stat matches 40 if biome ~ ~ ~ minecraft:mushroom_fields     run scoreboard players set @s smp.quest.progress 1
execute if score @s smp.quest.stat matches 41 if biome ~ ~ ~ minecraft:deep_dark           run scoreboard players set @s smp.quest.progress 1
execute if score @s smp.quest.stat matches 42 if biome ~ ~ ~ minecraft:badlands            run scoreboard players set @s smp.quest.progress 1
execute if score @s smp.quest.stat matches 43 if biome ~ ~ ~ minecraft:ice_spikes          run scoreboard players set @s smp.quest.progress 1
execute if score @s smp.quest.stat matches 44 if biome ~ ~ ~ minecraft:crimson_forest      run scoreboard players set @s smp.quest.progress 1
execute if score @s smp.quest.stat matches 45 if biome ~ ~ ~ minecraft:cherry_grove        run scoreboard players set @s smp.quest.progress 1
execute if score @s smp.quest.stat matches 46 if biome ~ ~ ~ minecraft:mangrove_swamp      run scoreboard players set @s smp.quest.progress 1

# Belohnung wenn im richtigen Biom
execute if score @s smp.quest.progress >= @s smp.quest.target run function smp:quests/reward
