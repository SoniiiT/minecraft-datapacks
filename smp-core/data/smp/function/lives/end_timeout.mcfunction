# === Timeout beendet ===
# Spieler kehrt zurück

scoreboard players set @s smp.lives 3
scoreboard players set @s smp.unban_time 0
scoreboard players set @s smp.timeout_h 0
scoreboard players set @s smp.timeout_m 0
scoreboard players set @s smp.timeout_s 0
scoreboard players set @s smp.timeout_total_s 0
function smp:quests/assign
tellraw @a ["",{text:"[SMP] ",color:"green",bold:1b},{selector:"@s",color:"white"},{text:" ist zurück! 3 Leben wurden wiederhergestellt. ❤",color:"green"}]
title @s title {text:"Willkommen zurück!",color:"green",bold:1b}
title @s subtitle {text:"Du hast wieder 3 Leben.",color:"white"}
