# === Admin: 1 Leben entfernen ===
# Aufruf: execute as <Spieler> run function smp:lives/admin/remove
# Löst automatisch den Timeout-Bann aus wenn Leben auf ≤ 0 fällt

scoreboard players remove @s smp.lives 1
execute if score @s smp.lives matches ..0 run function smp:lives/start_timeout
execute unless score @s smp.lives matches ..0 run tellraw @s [{text:"[Admin] Dir wurde 1 Leben entzogen. Du hast jetzt ",color:"red"},{score:{name:"@s",objective:"smp.lives"},color:"white"},{text:" Leben.",color:"red"}]
