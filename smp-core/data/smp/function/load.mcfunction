# === SMP Core – Lade-Funktion ===
# Wird bei /reload ausgeführt

# Scoreboards erstellen (ignoriert Fehler wenn bereits vorhanden)
scoreboard objectives add smp.initialized dummy
scoreboard objectives add smp.lives dummy
scoreboard objectives add smp.timeout dummy
scoreboard objectives add smp.deaths minecraft.custom:minecraft.deaths
scoreboard objectives add smp.deaths.prev dummy
scoreboard objectives add smp.tick_counter dummy
scoreboard objectives add smp.day_timer dummy
scoreboard objectives add smp.age dummy
scoreboard objectives add smp.quest.type dummy
scoreboard objectives add smp.quest.target dummy
scoreboard objectives add smp.quest.done dummy
scoreboard objectives add smp.quest.base dummy
scoreboard objectives add smp.quest.progress dummy
scoreboard objectives add smp.quest.stat dummy
scoreboard objectives add smp.tmp dummy
scoreboard objectives add smp.tmp2 dummy
scoreboard objectives add smp.unban_time dummy
scoreboard objectives add smp.timeout_h dummy
scoreboard objectives add smp.timeout_m dummy
scoreboard objectives add smp.timeout_s dummy
scoreboard objectives add smp.timeout_total_s dummy
scoreboard objectives add smp.gametime dummy
scoreboard objectives add smp.const dummy
scoreboard objectives add smp.stat.stone minecraft.mined:minecraft.stone
scoreboard objectives add smp.stat.iron minecraft.mined:minecraft.iron_ore
scoreboard objectives add smp.stat.iron_deep minecraft.mined:minecraft.deepslate_iron_ore
scoreboard objectives add smp.stat.coal minecraft.mined:minecraft.coal_ore
scoreboard objectives add smp.stat.coal_deep minecraft.mined:minecraft.deepslate_coal_ore
scoreboard objectives add smp.stat.zombies minecraft.killed:minecraft.zombie
scoreboard objectives add smp.stat.skeletons minecraft.killed:minecraft.skeleton
scoreboard objectives add smp.stat.walk minecraft.custom:minecraft.walk_one_cm

# Bergbau-Stats (weitere Erzsorten mit Tiefschiefer)
scoreboard objectives add smp.stat.gold minecraft.mined:minecraft.gold_ore
scoreboard objectives add smp.stat.gold_deep minecraft.mined:minecraft.deepslate_gold_ore
scoreboard objectives add smp.stat.diamond minecraft.mined:minecraft.diamond_ore
scoreboard objectives add smp.stat.diamond_deep minecraft.mined:minecraft.deepslate_diamond_ore
scoreboard objectives add smp.stat.emerald minecraft.mined:minecraft.emerald_ore
scoreboard objectives add smp.stat.emerald_deep minecraft.mined:minecraft.deepslate_emerald_ore
scoreboard objectives add smp.stat.lapis minecraft.mined:minecraft.lapis_ore
scoreboard objectives add smp.stat.lapis_deep minecraft.mined:minecraft.deepslate_lapis_ore
scoreboard objectives add smp.stat.redstone minecraft.mined:minecraft.redstone_ore
scoreboard objectives add smp.stat.redstone_deep minecraft.mined:minecraft.deepslate_redstone_ore
scoreboard objectives add smp.stat.copper minecraft.mined:minecraft.copper_ore
scoreboard objectives add smp.stat.copper_deep minecraft.mined:minecraft.deepslate_copper_ore
scoreboard objectives add smp.stat.gravel minecraft.mined:minecraft.gravel
scoreboard objectives add smp.stat.sand minecraft.mined:minecraft.sand

# Holz-Stats (alle natürlichen Stammtypen)
scoreboard objectives add smp.stat.oak_log minecraft.mined:minecraft.oak_log
scoreboard objectives add smp.stat.birch_log minecraft.mined:minecraft.birch_log
scoreboard objectives add smp.stat.spruce_log minecraft.mined:minecraft.spruce_log
scoreboard objectives add smp.stat.jungle_log minecraft.mined:minecraft.jungle_log
scoreboard objectives add smp.stat.acacia_log minecraft.mined:minecraft.acacia_log
scoreboard objectives add smp.stat.dark_oak_log minecraft.mined:minecraft.dark_oak_log
scoreboard objectives add smp.stat.mangrove_log minecraft.mined:minecraft.mangrove_log
scoreboard objectives add smp.stat.cherry_log minecraft.mined:minecraft.cherry_log

# Mob-Kills (weitere Gegnertypen)
scoreboard objectives add smp.stat.creepers minecraft.killed:minecraft.creeper
scoreboard objectives add smp.stat.spiders minecraft.killed:minecraft.spider
scoreboard objectives add smp.stat.endermen minecraft.killed:minecraft.enderman
scoreboard objectives add smp.stat.blazes minecraft.killed:minecraft.blaze
scoreboard objectives add smp.stat.drowned minecraft.killed:minecraft.drowned
scoreboard objectives add smp.stat.phantoms minecraft.killed:minecraft.phantom
scoreboard objectives add smp.stat.witches minecraft.killed:minecraft.witch

# Custom-Stats (Angeln, Craften, Handeln, Verzaubern, Fliegen, Klettern)
scoreboard objectives add smp.stat.fish minecraft.custom:minecraft.fish_caught
scoreboard objectives add smp.stat.bread minecraft.crafted:minecraft.bread
scoreboard objectives add smp.stat.arrows minecraft.crafted:minecraft.arrow
scoreboard objectives add smp.stat.trades minecraft.custom:minecraft.traded_with_villager
scoreboard objectives add smp.stat.enchants minecraft.custom:minecraft.enchant_item
scoreboard objectives add smp.stat.elytra minecraft.custom:minecraft.aviate_one_cm
scoreboard objectives add smp.stat.climb minecraft.custom:minecraft.climb_one_cm

# Farmtier-Stats (Stat 30: Tiere toeten)
scoreboard objectives add smp.stat.pig minecraft.killed:minecraft.pig
scoreboard objectives add smp.stat.cow minecraft.killed:minecraft.cow
scoreboard objectives add smp.stat.chicken minecraft.killed:minecraft.chicken
scoreboard objectives add smp.stat.sheep minecraft.killed:minecraft.sheep

# Neue Kategorien (Stats 31-38)
scoreboard objectives add smp.stat.bred minecraft.custom:minecraft.animals_bred
scoreboard objectives add smp.stat.anc_debris minecraft.mined:minecraft.ancient_debris
scoreboard objectives add smp.stat.nq_ore minecraft.mined:minecraft.nether_quartz_ore
scoreboard objectives add smp.stat.sleep minecraft.custom:minecraft.sleep_in_bed
scoreboard objectives add smp.stat.cake minecraft.crafted:minecraft.cake
scoreboard objectives add smp.stat.bonemeal minecraft.used:minecraft.bone_meal
scoreboard objectives add smp.stat.guardians minecraft.killed:minecraft.guardian
scoreboard objectives add smp.stat.wither_skels minecraft.killed:minecraft.wither_skeleton

# Neue Quest-Scoreboards
scoreboard objectives add smp.quest.active dummy
scoreboard objectives add smp.quest.expire dummy
scoreboard objectives add smp.quest.last_day dummy
scoreboard objectives add smp.slot dummy
scoreboard objectives add smp.next_slot dummy
scoreboard objectives add smp.day dummy

# === Neue Feature-Scoreboards ===
# Rang-System
scoreboard objectives add smp.quests_done dummy
scoreboard objectives add smp.rank dummy
# Quest-Streak
scoreboard objectives add smp.streak dummy
scoreboard objectives add smp.streak.last_day dummy
# PvP-Tracker
scoreboard objectives add smp.pvp_kills minecraft.killed:minecraft.player
# Statistik-Trigger
scoreboard objectives add smp.stats trigger "Statistiken anzeigen"
# Wochenchallenge
scoreboard objectives add smp.week_days dummy
scoreboard objectives add smp.week_progress dummy
scoreboard objectives add smp.week_goal dummy
scoreboard objectives add smp.week_done dummy

# Server-Variablen initialisieren (nur wenn noch nicht gesetzt)
scoreboard players add #server smp.age 0
execute unless score #server smp.day_timer matches 1.. run scoreboard players set #server smp.day_timer 86400
scoreboard players add #server smp.next_slot 0
scoreboard players add #server smp.day 0

# Wochenchallenge-Variablen initialisieren
scoreboard players add #server smp.week_days 0
execute unless score #server smp.week_goal matches 1.. run scoreboard players set #server smp.week_goal 10
scoreboard players add #server smp.week_progress 0
scoreboard players add #server smp.week_done 0

# ── Bossbar-Slots erstellen (20 Spieler-Slots für Quest-Fortschrittanzeige) ──
bossbar add smp:q1  ["",{text:"⚔ ",color:"gold"},{text:"Tagesquest",color:"white"}]
bossbar set smp:q1  color green
bossbar set smp:q1  visible false
bossbar add smp:q2  ["",{text:"⚔ ",color:"gold"},{text:"Tagesquest",color:"white"}]
bossbar set smp:q2  color green
bossbar set smp:q2  visible false
bossbar add smp:q3  ["",{text:"⚔ ",color:"gold"},{text:"Tagesquest",color:"white"}]
bossbar set smp:q3  color green
bossbar set smp:q3  visible false
bossbar add smp:q4  ["",{text:"⚔ ",color:"gold"},{text:"Tagesquest",color:"white"}]
bossbar set smp:q4  color green
bossbar set smp:q4  visible false
bossbar add smp:q5  ["",{text:"⚔ ",color:"gold"},{text:"Tagesquest",color:"white"}]
bossbar set smp:q5  color green
bossbar set smp:q5  visible false
bossbar add smp:q6  ["",{text:"⚔ ",color:"gold"},{text:"Tagesquest",color:"white"}]
bossbar set smp:q6  color green
bossbar set smp:q6  visible false
bossbar add smp:q7  ["",{text:"⚔ ",color:"gold"},{text:"Tagesquest",color:"white"}]
bossbar set smp:q7  color green
bossbar set smp:q7  visible false
bossbar add smp:q8  ["",{text:"⚔ ",color:"gold"},{text:"Tagesquest",color:"white"}]
bossbar set smp:q8  color green
bossbar set smp:q8  visible false
bossbar add smp:q9  ["",{text:"⚔ ",color:"gold"},{text:"Tagesquest",color:"white"}]
bossbar set smp:q9  color green
bossbar set smp:q9  visible false
bossbar add smp:q10 ["",{text:"⚔ ",color:"gold"},{text:"Tagesquest",color:"white"}]
bossbar set smp:q10 color green
bossbar set smp:q10 visible false
bossbar add smp:q11 ["",{text:"⚔ ",color:"gold"},{text:"Tagesquest",color:"white"}]
bossbar set smp:q11 color green
bossbar set smp:q11 visible false
bossbar add smp:q12 ["",{text:"⚔ ",color:"gold"},{text:"Tagesquest",color:"white"}]
bossbar set smp:q12 color green
bossbar set smp:q12 visible false
bossbar add smp:q13 ["",{text:"⚔ ",color:"gold"},{text:"Tagesquest",color:"white"}]
bossbar set smp:q13 color green
bossbar set smp:q13 visible false
bossbar add smp:q14 ["",{text:"⚔ ",color:"gold"},{text:"Tagesquest",color:"white"}]
bossbar set smp:q14 color green
bossbar set smp:q14 visible false
bossbar add smp:q15 ["",{text:"⚔ ",color:"gold"},{text:"Tagesquest",color:"white"}]
bossbar set smp:q15 color green
bossbar set smp:q15 visible false
bossbar add smp:q16 ["",{text:"⚔ ",color:"gold"},{text:"Tagesquest",color:"white"}]
bossbar set smp:q16 color green
bossbar set smp:q16 visible false
bossbar add smp:q17 ["",{text:"⚔ ",color:"gold"},{text:"Tagesquest",color:"white"}]
bossbar set smp:q17 color green
bossbar set smp:q17 visible false
bossbar add smp:q18 ["",{text:"⚔ ",color:"gold"},{text:"Tagesquest",color:"white"}]
bossbar set smp:q18 color green
bossbar set smp:q18 visible false
bossbar add smp:q19 ["",{text:"⚔ ",color:"gold"},{text:"Tagesquest",color:"white"}]
bossbar set smp:q19 color green
bossbar set smp:q19 visible false
bossbar add smp:q20 ["",{text:"⚔ ",color:"gold"},{text:"Tagesquest",color:"white"}]
bossbar set smp:q20 color green
bossbar set smp:q20 visible false

# Konstanten für Zeitberechnung
scoreboard players set #20 smp.const 20
scoreboard players set #60 smp.const 60
scoreboard players set #100 smp.const 100
scoreboard players set #3600 smp.const 3600

# Initiales Gametime speichern
execute store result score #server smp.gametime run time query gametime

# Todes-Snapshot für alle Spieler aktualisieren (verhindert false-positives nach reload)
execute as @a run scoreboard players operation @s smp.deaths.prev = @s smp.deaths

# Alters-Restriktionen anwenden
execute as @a run function smp:ages/apply_restrictions

# Neue Spieler initialisieren
execute as @a unless score @s smp.initialized matches 1.. run function smp:util/init_player

# Trigger für bestehende Spieler aktivieren
execute as @a run scoreboard players enable @s smp.stats

# Spielwelt-Regeln
gamerule keepInventory true
gamerule showDeathMessages false

# Sidebar leeren
scoreboard objectives setdisplay sidebar

# Lade-Bestätigung
tellraw @a {text:"[SMP] Datapack geladen (26.1).",color:"green"}
