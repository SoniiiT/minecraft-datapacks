# === Quest-Fortschritt prüfen ===
# Wird als @s (Spieler) ausgeführt (jede Sekunde, quest.done=0)

# Aktuellen Stat-Wert nach quest.stat in progress laden
execute if score @s smp.quest.stat matches 1  run scoreboard players operation @s smp.quest.progress = @s smp.stat.stone
execute if score @s smp.quest.stat matches 2  run scoreboard players operation @s smp.quest.progress = @s smp.stat.coal
execute if score @s smp.quest.stat matches 2  run scoreboard players operation @s smp.quest.progress += @s smp.stat.coal_deep
execute if score @s smp.quest.stat matches 3  run scoreboard players operation @s smp.quest.progress = @s smp.stat.iron
execute if score @s smp.quest.stat matches 3  run scoreboard players operation @s smp.quest.progress += @s smp.stat.iron_deep
execute if score @s smp.quest.stat matches 4  run scoreboard players operation @s smp.quest.progress = @s smp.stat.gold
execute if score @s smp.quest.stat matches 4  run scoreboard players operation @s smp.quest.progress += @s smp.stat.gold_deep
execute if score @s smp.quest.stat matches 5  run scoreboard players operation @s smp.quest.progress = @s smp.stat.diamond
execute if score @s smp.quest.stat matches 5  run scoreboard players operation @s smp.quest.progress += @s smp.stat.diamond_deep
execute if score @s smp.quest.stat matches 6  run scoreboard players operation @s smp.quest.progress = @s smp.stat.emerald
execute if score @s smp.quest.stat matches 6  run scoreboard players operation @s smp.quest.progress += @s smp.stat.emerald_deep
execute if score @s smp.quest.stat matches 7  run scoreboard players operation @s smp.quest.progress = @s smp.stat.lapis
execute if score @s smp.quest.stat matches 7  run scoreboard players operation @s smp.quest.progress += @s smp.stat.lapis_deep
execute if score @s smp.quest.stat matches 8  run scoreboard players operation @s smp.quest.progress = @s smp.stat.redstone
execute if score @s smp.quest.stat matches 8  run scoreboard players operation @s smp.quest.progress += @s smp.stat.redstone_deep
execute if score @s smp.quest.stat matches 9  run scoreboard players operation @s smp.quest.progress = @s smp.stat.copper
execute if score @s smp.quest.stat matches 9  run scoreboard players operation @s smp.quest.progress += @s smp.stat.copper_deep
execute if score @s smp.quest.stat matches 10 run scoreboard players operation @s smp.quest.progress = @s smp.stat.gravel
execute if score @s smp.quest.stat matches 11 run scoreboard players operation @s smp.quest.progress = @s smp.stat.sand
execute if score @s smp.quest.stat matches 12 run scoreboard players operation @s smp.quest.progress = @s smp.stat.oak_log
execute if score @s smp.quest.stat matches 12 run scoreboard players operation @s smp.quest.progress += @s smp.stat.birch_log
execute if score @s smp.quest.stat matches 12 run scoreboard players operation @s smp.quest.progress += @s smp.stat.spruce_log
execute if score @s smp.quest.stat matches 12 run scoreboard players operation @s smp.quest.progress += @s smp.stat.jungle_log
execute if score @s smp.quest.stat matches 12 run scoreboard players operation @s smp.quest.progress += @s smp.stat.acacia_log
execute if score @s smp.quest.stat matches 12 run scoreboard players operation @s smp.quest.progress += @s smp.stat.dark_oak_log
execute if score @s smp.quest.stat matches 12 run scoreboard players operation @s smp.quest.progress += @s smp.stat.mangrove_log
execute if score @s smp.quest.stat matches 12 run scoreboard players operation @s smp.quest.progress += @s smp.stat.cherry_log
execute if score @s smp.quest.stat matches 13 run scoreboard players operation @s smp.quest.progress = @s smp.stat.zombies
execute if score @s smp.quest.stat matches 14 run scoreboard players operation @s smp.quest.progress = @s smp.stat.skeletons
execute if score @s smp.quest.stat matches 15 run scoreboard players operation @s smp.quest.progress = @s smp.stat.creepers
execute if score @s smp.quest.stat matches 16 run scoreboard players operation @s smp.quest.progress = @s smp.stat.spiders
execute if score @s smp.quest.stat matches 17 run scoreboard players operation @s smp.quest.progress = @s smp.stat.endermen
execute if score @s smp.quest.stat matches 18 run scoreboard players operation @s smp.quest.progress = @s smp.stat.blazes
execute if score @s smp.quest.stat matches 19 run scoreboard players operation @s smp.quest.progress = @s smp.stat.drowned
execute if score @s smp.quest.stat matches 20 run scoreboard players operation @s smp.quest.progress = @s smp.stat.phantoms
execute if score @s smp.quest.stat matches 21 run scoreboard players operation @s smp.quest.progress = @s smp.stat.witches
execute if score @s smp.quest.stat matches 22 run scoreboard players operation @s smp.quest.progress = @s smp.stat.walk
execute if score @s smp.quest.stat matches 23 run scoreboard players operation @s smp.quest.progress = @s smp.stat.fish
execute if score @s smp.quest.stat matches 24 run scoreboard players operation @s smp.quest.progress = @s smp.stat.bread
execute if score @s smp.quest.stat matches 25 run scoreboard players operation @s smp.quest.progress = @s smp.stat.arrows
execute if score @s smp.quest.stat matches 26 run scoreboard players operation @s smp.quest.progress = @s smp.stat.trades
execute if score @s smp.quest.stat matches 27 run scoreboard players operation @s smp.quest.progress = @s smp.stat.enchants
execute if score @s smp.quest.stat matches 28 run scoreboard players operation @s smp.quest.progress = @s smp.stat.elytra
execute if score @s smp.quest.stat matches 29 run scoreboard players operation @s smp.quest.progress = @s smp.stat.climb
execute if score @s smp.quest.stat matches 30 run scoreboard players operation @s smp.quest.progress = @s smp.stat.pig
execute if score @s smp.quest.stat matches 30 run scoreboard players operation @s smp.quest.progress += @s smp.stat.cow
execute if score @s smp.quest.stat matches 30 run scoreboard players operation @s smp.quest.progress += @s smp.stat.chicken
execute if score @s smp.quest.stat matches 30 run scoreboard players operation @s smp.quest.progress += @s smp.stat.sheep
execute if score @s smp.quest.stat matches 31 run scoreboard players operation @s smp.quest.progress = @s smp.stat.bred
execute if score @s smp.quest.stat matches 32 run scoreboard players operation @s smp.quest.progress = @s smp.stat.anc_debris
execute if score @s smp.quest.stat matches 33 run scoreboard players operation @s smp.quest.progress = @s smp.stat.nq_ore
execute if score @s smp.quest.stat matches 34 run scoreboard players operation @s smp.quest.progress = @s smp.stat.sleep
execute if score @s smp.quest.stat matches 35 run scoreboard players operation @s smp.quest.progress = @s smp.stat.cake
execute if score @s smp.quest.stat matches 36 run scoreboard players operation @s smp.quest.progress = @s smp.stat.bonemeal
execute if score @s smp.quest.stat matches 37 run scoreboard players operation @s smp.quest.progress = @s smp.stat.guardians
execute if score @s smp.quest.stat matches 38 run scoreboard players operation @s smp.quest.progress = @s smp.stat.wither_skels

# Biom-Erkundung (Stats 39-46): Spezialbehandlung - fruehes Ende
execute if score @s smp.quest.stat matches 39..46 run return run function smp:quests/check_biome_progress

# Baseline abziehen (Fortschritt seit Quest-Zuweisung)
scoreboard players operation @s smp.quest.progress -= @s smp.quest.base

# cm -> Bloecke: Laufen (22), Elytra (28), Klettern (29)
execute if score @s smp.quest.stat matches 22 run scoreboard players operation @s smp.quest.progress /= #100 smp.const
execute if score @s smp.quest.stat matches 28 run scoreboard players operation @s smp.quest.progress /= #100 smp.const
execute if score @s smp.quest.stat matches 29 run scoreboard players operation @s smp.quest.progress /= #100 smp.const

# Belohnung wenn Ziel erreicht
execute if score @s smp.quest.progress >= @s smp.quest.target run function smp:quests/reward
