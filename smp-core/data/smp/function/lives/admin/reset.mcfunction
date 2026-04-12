# === Admin: Leben auf 3 zurücksetzen + ggf. Bann aufheben ===
# Aufruf: execute as <Spieler> run function smp:lives/admin/reset
# Funktioniert auch für gebannte Spieler (wenn online, z.B. beim nächsten Login-Versuch)

scoreboard players set @s smp.lives 3
scoreboard players set @s smp.unban_time 0
scoreboard players set @s smp.timeout_h 0
scoreboard players set @s smp.timeout_m 0
scoreboard players set @s smp.timeout_s 0
scoreboard players set @s smp.timeout_total_s 0
tellraw @s [{text:"[Admin] Deine Leben wurden auf 3 zurückgesetzt.",color:"green"}]
