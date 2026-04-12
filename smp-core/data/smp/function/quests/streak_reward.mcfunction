# === Quest-Streak Belohnungen ===
# Meilensteine: 3T→Smaragd, 7T→Diamant, 14T→Buch, 30T→Netherite Scrap
# Belohnungen werden genau beim Erreichen des Meilensteins gegeben (exacter Match)

execute if score @s smp.streak matches 3 run give @s minecraft:emerald 1
execute if score @s smp.streak matches 3 run title @s title {text:"🔥 3-Tage-Streak!",color:"green",bold:1b}
execute if score @s smp.streak matches 3 run title @s subtitle {text:"Du erhältst einen Smaragd!",color:"white"}
execute if score @s smp.streak matches 3 run tellraw @s {text:"[SMP] 🔥 3-Tage-Streak! Du erhältst einen Smaragd!",color:"green",bold:1b}

execute if score @s smp.streak matches 7 run give @s minecraft:diamond 1
execute if score @s smp.streak matches 7 run title @s title {text:"🔥 7-Tage-Streak!",color:"aqua",bold:1b}
execute if score @s smp.streak matches 7 run title @s subtitle {text:"Du erhältst einen Diamanten!",color:"white"}
execute if score @s smp.streak matches 7 run tellraw @s {text:"[SMP] 🔥 7-Tage-Streak! Du erhältst einen Diamanten!",color:"aqua",bold:1b}

# Hinweis: Enchanted Book Syntax für 26.1
execute if score @s smp.streak matches 14 run give @s minecraft:enchanted_book[stored_enchantments=[{id:"minecraft:fortune",levels:1}]] 1
execute if score @s smp.streak matches 14 run title @s title {text:"🔥 14-Tage-Streak!",color:"gold",bold:1b}
execute if score @s smp.streak matches 14 run title @s subtitle {text:"Du erhältst ein verzaubertes Buch!",color:"white"}
execute if score @s smp.streak matches 14 run tellraw @s {text:"[SMP] 🔥 14-Tage-Streak! Du erhältst ein verzaubertes Buch (Glück I)!",color:"gold",bold:1b}

execute if score @s smp.streak matches 30 run give @s minecraft:netherite_scrap 1
execute if score @s smp.streak matches 30 run title @s title {text:"🔥 30-Tage-Streak!",color:"dark_red",bold:1b}
execute if score @s smp.streak matches 30 run title @s subtitle {text:"Du erhältst Netherite Scrap!",color:"white"}
execute if score @s smp.streak matches 30 run tellraw @s {text:"[SMP] 🔥 30-Tage-Streak! Du erhältst Netherite-Schrott!",color:"dark_red",bold:1b}
