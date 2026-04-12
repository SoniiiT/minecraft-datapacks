# === Spieler initialisieren ===
# Wird für neue Spieler (ohne smp.initialized Score) aufgerufen

scoreboard players set @s smp.initialized 1
scoreboard players set @s smp.lives 3
scoreboard players set @s smp.timeout 0
scoreboard players set @s smp.unban_time 0
scoreboard players set @s smp.timeout_h 0
scoreboard players set @s smp.timeout_m 0
scoreboard players set @s smp.timeout_s 0
scoreboard players set @s smp.timeout_total_s 0
scoreboard players set @s smp.quest.type 0
scoreboard players set @s smp.quest.target 0
scoreboard players set @s smp.quest.done 0
scoreboard players set @s smp.quest.base 0
scoreboard players set @s smp.quest.progress 0
scoreboard players set @s smp.quest.stat 0
scoreboard players set @s smp.tmp 0
scoreboard players set @s smp.quest.active 0
scoreboard players set @s smp.quest.expire 0
scoreboard players set @s smp.quest.last_day 0

# Neue Feature-Scores
scoreboard players set @s smp.quests_done 0
scoreboard players set @s smp.rank 0
scoreboard players set @s smp.streak 0
scoreboard players set @s smp.streak.last_day 0

# Statistik-Trigger aktivieren
scoreboard players enable @s smp.stats

# Bossbar-Slot zuweisen (1-20, rotierend)
scoreboard players add #server smp.next_slot 1
execute if score #server smp.next_slot matches 21.. run scoreboard players set #server smp.next_slot 1
scoreboard players operation @s smp.slot = #server smp.next_slot

# Todes-Snapshot setzen
scoreboard players operation @s smp.deaths.prev = @s smp.deaths

# Alters-Restriktionen anwenden
function smp:ages/apply_restrictions

tellraw @s {text:"[SMP] Willkommen! Du hast 3 Leben. Viel Erfolg!",color:"green",bold:1b}
