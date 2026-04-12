# === Actionbar-Anzeige: Leben ===
# Zeigt die aktuellen Leben in der Actionbar an.
# Quest-Fortschritt wird separat per Bossbar angezeigt.

execute as @a[gamemode=survival] if score @s smp.initialized matches 1.. unless score @s smp.unban_time matches 1.. run title @s actionbar ["",{text:"❤ ",color:"red",bold:1b},{score:{name:"@s",objective:"smp.lives"},color:"white"},{text:" Leben",color:"white"}]