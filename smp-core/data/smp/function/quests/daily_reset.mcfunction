# === Täglicher Reset ===
# Wird aufgerufen wenn smp.day_timer auf 0 fällt.

# Streak-Überprüfung VOR Tag-Erhöhung:
# Spieler die HEUTE (smp.day) keine Quest gemacht haben, verlieren ihren Streak
execute as @a if score @s smp.streak matches 1.. unless score @s smp.streak.last_day = #server smp.day run scoreboard players set @s smp.streak 0
execute as @a if score @s smp.streak matches 1.. unless score @s smp.streak.last_day = #server smp.day run tellraw @s {text:"[SMP] Dein Quest-Streak wurde zurückgesetzt – gestern keine Quest abgeschlossen.",color:"gray",italic:1b}

# Tag erhöhen & Timer zurücksetzen
scoreboard players add #server smp.day 1
scoreboard players set #server smp.day_timer 86400
tellraw @a {text:"[SMP] Ein neuer Tag beginnt! Logge dich ein um deine tägliche Quest zu erhalten.",color:"gold",bold:1b}

# Wochenchallenge-Tageszähler
scoreboard players add #server smp.week_days 1
execute if score #server smp.week_days matches 7.. run function smp:quests/week/reset