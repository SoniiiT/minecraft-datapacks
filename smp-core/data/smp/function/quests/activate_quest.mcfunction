# === Quest aktivieren ===
# Wird als @s ausgeführt.
# quest.type, quest.stat, quest.target müssen bereits gesetzt sein.
# Setzt Baseline, startet Timer, zeigt Bossbar.

# Aktiv-Flag und Status setzen
scoreboard players set @s smp.quest.active 1
scoreboard players set @s smp.quest.done 0

# Heutigen Tag als "Quest erhalten" markieren (verhindert doppelte Vergabe)
scoreboard players operation @s smp.quest.last_day = #server smp.day

# ── Baseline setzen (aktueller Stat-Wert zum Zeitpunkt der Aktivierung) ──
execute if score @s smp.quest.stat matches 1  run scoreboard players operation @s smp.quest.base = @s smp.stat.stone
execute if score @s smp.quest.stat matches 2  run scoreboard players operation @s smp.quest.base = @s smp.stat.coal
execute if score @s smp.quest.stat matches 2  run scoreboard players operation @s smp.quest.base += @s smp.stat.coal_deep
execute if score @s smp.quest.stat matches 3  run scoreboard players operation @s smp.quest.base = @s smp.stat.iron
execute if score @s smp.quest.stat matches 3  run scoreboard players operation @s smp.quest.base += @s smp.stat.iron_deep
execute if score @s smp.quest.stat matches 4  run scoreboard players operation @s smp.quest.base = @s smp.stat.gold
execute if score @s smp.quest.stat matches 4  run scoreboard players operation @s smp.quest.base += @s smp.stat.gold_deep
execute if score @s smp.quest.stat matches 5  run scoreboard players operation @s smp.quest.base = @s smp.stat.diamond
execute if score @s smp.quest.stat matches 5  run scoreboard players operation @s smp.quest.base += @s smp.stat.diamond_deep
execute if score @s smp.quest.stat matches 6  run scoreboard players operation @s smp.quest.base = @s smp.stat.emerald
execute if score @s smp.quest.stat matches 6  run scoreboard players operation @s smp.quest.base += @s smp.stat.emerald_deep
execute if score @s smp.quest.stat matches 7  run scoreboard players operation @s smp.quest.base = @s smp.stat.lapis
execute if score @s smp.quest.stat matches 7  run scoreboard players operation @s smp.quest.base += @s smp.stat.lapis_deep
execute if score @s smp.quest.stat matches 8  run scoreboard players operation @s smp.quest.base = @s smp.stat.redstone
execute if score @s smp.quest.stat matches 8  run scoreboard players operation @s smp.quest.base += @s smp.stat.redstone_deep
execute if score @s smp.quest.stat matches 9  run scoreboard players operation @s smp.quest.base = @s smp.stat.copper
execute if score @s smp.quest.stat matches 9  run scoreboard players operation @s smp.quest.base += @s smp.stat.copper_deep
execute if score @s smp.quest.stat matches 10 run scoreboard players operation @s smp.quest.base = @s smp.stat.gravel
execute if score @s smp.quest.stat matches 11 run scoreboard players operation @s smp.quest.base = @s smp.stat.sand
execute if score @s smp.quest.stat matches 12 run scoreboard players operation @s smp.quest.base = @s smp.stat.oak_log
execute if score @s smp.quest.stat matches 12 run scoreboard players operation @s smp.quest.base += @s smp.stat.birch_log
execute if score @s smp.quest.stat matches 12 run scoreboard players operation @s smp.quest.base += @s smp.stat.spruce_log
execute if score @s smp.quest.stat matches 12 run scoreboard players operation @s smp.quest.base += @s smp.stat.jungle_log
execute if score @s smp.quest.stat matches 12 run scoreboard players operation @s smp.quest.base += @s smp.stat.acacia_log
execute if score @s smp.quest.stat matches 12 run scoreboard players operation @s smp.quest.base += @s smp.stat.dark_oak_log
execute if score @s smp.quest.stat matches 12 run scoreboard players operation @s smp.quest.base += @s smp.stat.mangrove_log
execute if score @s smp.quest.stat matches 12 run scoreboard players operation @s smp.quest.base += @s smp.stat.cherry_log
execute if score @s smp.quest.stat matches 13 run scoreboard players operation @s smp.quest.base = @s smp.stat.zombies
execute if score @s smp.quest.stat matches 14 run scoreboard players operation @s smp.quest.base = @s smp.stat.skeletons
execute if score @s smp.quest.stat matches 15 run scoreboard players operation @s smp.quest.base = @s smp.stat.creepers
execute if score @s smp.quest.stat matches 16 run scoreboard players operation @s smp.quest.base = @s smp.stat.spiders
execute if score @s smp.quest.stat matches 17 run scoreboard players operation @s smp.quest.base = @s smp.stat.endermen
execute if score @s smp.quest.stat matches 18 run scoreboard players operation @s smp.quest.base = @s smp.stat.blazes
execute if score @s smp.quest.stat matches 19 run scoreboard players operation @s smp.quest.base = @s smp.stat.drowned
execute if score @s smp.quest.stat matches 20 run scoreboard players operation @s smp.quest.base = @s smp.stat.phantoms
execute if score @s smp.quest.stat matches 21 run scoreboard players operation @s smp.quest.base = @s smp.stat.witches
execute if score @s smp.quest.stat matches 22 run scoreboard players operation @s smp.quest.base = @s smp.stat.walk
execute if score @s smp.quest.stat matches 23 run scoreboard players operation @s smp.quest.base = @s smp.stat.fish
execute if score @s smp.quest.stat matches 24 run scoreboard players operation @s smp.quest.base = @s smp.stat.bread
execute if score @s smp.quest.stat matches 25 run scoreboard players operation @s smp.quest.base = @s smp.stat.arrows
execute if score @s smp.quest.stat matches 26 run scoreboard players operation @s smp.quest.base = @s smp.stat.trades
execute if score @s smp.quest.stat matches 27 run scoreboard players operation @s smp.quest.base = @s smp.stat.enchants
execute if score @s smp.quest.stat matches 28 run scoreboard players operation @s smp.quest.base = @s smp.stat.elytra
execute if score @s smp.quest.stat matches 29 run scoreboard players operation @s smp.quest.base = @s smp.stat.climb
execute if score @s smp.quest.stat matches 30 run scoreboard players operation @s smp.quest.base = @s smp.stat.pig
execute if score @s smp.quest.stat matches 30 run scoreboard players operation @s smp.quest.base += @s smp.stat.cow
execute if score @s smp.quest.stat matches 30 run scoreboard players operation @s smp.quest.base += @s smp.stat.chicken
execute if score @s smp.quest.stat matches 30 run scoreboard players operation @s smp.quest.base += @s smp.stat.sheep
execute if score @s smp.quest.stat matches 31 run scoreboard players operation @s smp.quest.base = @s smp.stat.bred
execute if score @s smp.quest.stat matches 32 run scoreboard players operation @s smp.quest.base = @s smp.stat.anc_debris
execute if score @s smp.quest.stat matches 33 run scoreboard players operation @s smp.quest.base = @s smp.stat.nq_ore
execute if score @s smp.quest.stat matches 34 run scoreboard players operation @s smp.quest.base = @s smp.stat.sleep
execute if score @s smp.quest.stat matches 35 run scoreboard players operation @s smp.quest.base = @s smp.stat.cake
execute if score @s smp.quest.stat matches 36 run scoreboard players operation @s smp.quest.base = @s smp.stat.bonemeal
execute if score @s smp.quest.stat matches 37 run scoreboard players operation @s smp.quest.base = @s smp.stat.guardians
execute if score @s smp.quest.stat matches 38 run scoreboard players operation @s smp.quest.base = @s smp.stat.wither_skels
# Stats 39-46 (Biom-Erkundung): kein Baseline noetig (binary quest)

# ── Ablauf-Timer setzen (24h = 1.728.000 Ticks) ────────────────────
scoreboard players operation @s smp.quest.expire = #server smp.gametime
scoreboard players add @s smp.quest.expire 1728000

# Fortschritt auf 0 setzen
scoreboard players set @s smp.quest.progress 0

# Bossbar anzeigen
function smp:quests/update_bossbar

# Benachrichtigung
tellraw @s ["",{text:"[Quest] ",color:"gold",bold:1b},{text:"Aufgabe aktiviert! Du hast 24 Stunden Zeit. ",color:"gold"},{score:{name:"@s",objective:"smp.quest.target"},color:"yellow"},{text:" als Ziel.",color:"gold"}]
