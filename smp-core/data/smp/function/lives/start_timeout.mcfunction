# === Timeout starten – Spieler wird gekickt ===
# Spieler hat alle Leben verloren

scoreboard players set @s smp.lives 0

# Absoluten Unban-Zeitpunkt speichern: jetzt + ~22,5h Server-Uptime
# (= 1.620.000 Ticks, kompensiert ~1,5h durchschnittliche Offline-Zeit pro Tag)
execute store result score @s smp.unban_time run time query gametime
scoreboard players add @s smp.unban_time 1620000

# Broadcast zuerst (danach wird @s durch Kick ungültig)
tellraw @a ["",{text:"[SMP] ",color:"red",bold:1b},{selector:"@s",color:"white"},{text:" hat das letzte Leben verloren und ist für 24 Stunden gebannt!",color:"red"}]
title @a title {text:"[SMP]",color:"red",bold:1b}
title @a subtitle ["",{selector:"@s",color:"white"},{text:" ist jetzt gebannt!",color:"gray"}]

# Spieler kicken
kick @s {text:"[SMP] Du hast alle Leben verloren!",color:"red",extra:[{text:"\nDu bist für 24 Stunden gebannt. Versuche es später erneut.",color:"gray"}]}
