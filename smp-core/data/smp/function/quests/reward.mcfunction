# === Quest abgeschlossen ===
# Gibt +1 Leben (max 8)

scoreboard players set @s smp.quest.done 1
scoreboard players add @s smp.lives 1
execute if score @s smp.lives matches 9.. run scoreboard players set @s smp.lives 8
tellraw @a ["",{text:"[SMP] ",color:"gold",bold:1b},{selector:"@s",color:"white"},{text:" hat eine Quest abgeschlossen und ein extra Leben erhalten! ❤",color:"gold"}]
title @s title {text:"Quest abgeschlossen! ❤",color:"gold",bold:1b}
title @s subtitle {text:"+1 Leben",color:"white"}

# Papier entfernen (qtype-spezifisch per Makro)
execute store result storage smp:tmp reward.qtype int 1 run scoreboard players get @s smp.quest.type
function smp:quests/remove_paper_by_type with storage smp:tmp reward
# Quest-Status zurücksetzen
scoreboard players set @s smp.quest.active 0
# Bossbar verstecken
function smp:quests/hide_bossbar

# === Neue Feature-Logik ===
# Quest-Gesamtzahl erhöhen
scoreboard players add @s smp.quests_done 1

# Quest-Streak aktualisieren (nur wenn nicht bereits heute gezählt)
execute unless score @s smp.streak.last_day = #server smp.day run scoreboard players add @s smp.streak 1
execute unless score @s smp.streak.last_day = #server smp.day run scoreboard players operation @s smp.streak.last_day = #server smp.day

# Rang aktualisieren (prüft Aufstieg und kündigt an)
function smp:util/update_rank

# Streak-Belohnungen prüfen
function smp:quests/streak_reward

# Wochenchallenge-Fortschritt
execute if score #server smp.week_done matches 0 run scoreboard players add #server smp.week_progress 1
execute if score #server smp.week_done matches 0 if score #server smp.week_progress >= #server smp.week_goal run function smp:quests/week/complete
