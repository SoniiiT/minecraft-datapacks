# === Leben verloren ===
# Wird aufgerufen wenn Todes-Snapshot-Vergleich anspricht

# === Tod-Ereignis ===
scoreboard players remove @s smp.lives 1

# Angepasste Todesnachricht (showDeathMessages ist false)
execute if score @s smp.lives matches 1.. run tellraw @a ["",{text:"[SMP] ☠ ",color:"dark_red",bold:1b},{selector:"@s",color:"red"},{text:" ist gestorben. Noch ",color:"gray"},{score:{name:"@s",objective:"smp.lives"},color:"red"},{text:" Leben übrig.",color:"gray"}]
execute if score @s smp.lives matches ..0 run tellraw @a ["",{text:"[SMP] ☠ ",color:"dark_red",bold:1b},{selector:"@s",color:"red"},{text:" ist gestorben und hat keine Leben mehr übrig!",color:"dark_red"}]

# Recovery Compass geben (zeigt auf letzten Todespunkt)
function smp:lives/give_compass

# Leben aufgebraucht?
execute if score @s smp.lives matches ..0 run function smp:lives/start_timeout
