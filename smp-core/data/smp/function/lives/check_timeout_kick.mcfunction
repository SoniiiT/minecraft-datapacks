# === Gebannten Spieler prüfen: kicken oder Bann aufheben ===
# Wird als @s (online gebannter Spieler) ausgeführt

# Verbleibende Ticks berechnen
scoreboard players operation @s smp.tmp = @s smp.unban_time
scoreboard players operation @s smp.tmp -= #server smp.gametime

# Bann abgelaufen → Spieler freigeben
execute if score @s smp.tmp matches ..0 run function smp:lives/end_timeout

# Noch gebannt → H/M/S berechnen und kicken
# (prüft unban_time erneut, falls end_timeout gerade ausgeführt wurde)
execute if score @s smp.unban_time matches 1.. run scoreboard players operation @s smp.timeout_total_s = @s smp.tmp
execute if score @s smp.unban_time matches 1.. run scoreboard players operation @s smp.timeout_total_s /= #20 smp.const
execute if score @s smp.unban_time matches 1.. run function smp:lives/calc_timeout_display

# Kick-Nachricht: >= 3000s (50+ Min) → Xh Ym Zs
execute if score @s smp.unban_time matches 1.. if score @s smp.timeout_total_s matches 3000.. run kick @s {text:"[SMP] Du bist noch gebannt!\n",color:"red",extra:[{text:"Verbleibend: ",color:"gray"},{score:{name:"@s",objective:"smp.timeout_h"},color:"white"},{text:"h ",color:"gray"},{score:{name:"@s",objective:"smp.timeout_m"},color:"white"},{text:"m ",color:"gray"},{score:{name:"@s",objective:"smp.timeout_s"},color:"white"},{text:"s",color:"gray"}]}

# Kick-Nachricht: 60-2999s (1-49 Min) → Xm Ys
execute if score @s smp.unban_time matches 1.. if score @s smp.timeout_total_s matches 60..2999 run kick @s {text:"[SMP] Du bist noch gebannt!\n",color:"red",extra:[{text:"Verbleibend: ",color:"gray"},{score:{name:"@s",objective:"smp.timeout_m"},color:"white"},{text:"m ",color:"gray"},{score:{name:"@s",objective:"smp.timeout_s"},color:"white"},{text:"s",color:"gray"}]}

# Kick-Nachricht: < 60s → Xs
execute if score @s smp.unban_time matches 1.. if score @s smp.timeout_total_s matches 1..59 run kick @s {text:"[SMP] Bann endet gleich!\n",color:"yellow",extra:[{text:"Noch ",color:"gray"},{score:{name:"@s",objective:"smp.timeout_s"},color:"white"},{text:"s",color:"gray"}]}
