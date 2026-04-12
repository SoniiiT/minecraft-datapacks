# === Admin: +1 Leben geben (max. 8) ===
# Aufruf: execute as <Spieler> run function smp:lives/admin/add

scoreboard players add @s smp.lives 1
execute if score @s smp.lives matches 9.. run scoreboard players set @s smp.lives 8
tellraw @s [{text:"[Admin] Du hast jetzt ",color:"green"},{score:{name:"@s",objective:"smp.lives"},color:"white"},{text:" Leben.",color:"green"}]
