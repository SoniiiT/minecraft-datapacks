# === Diamant-Items konfiszieren – Materialien zurückgeben ===
# Nutzt "execute store result" um sicherzustellen dass nur gecraftete Items refunded werden.

# Diamant-Schwert (2 Diamanten + 1 Stock)
execute store result score @s smp.tmp run clear @s minecraft:diamond_sword 1
execute if score @s smp.tmp matches 1.. run give @s minecraft:diamond 2
execute if score @s smp.tmp matches 1.. run give @s minecraft:stick 1

# Diamant-Spitzhacke (3 Diamanten + 2 Stöcke)
execute store result score @s smp.tmp run clear @s minecraft:diamond_pickaxe 1
execute if score @s smp.tmp matches 1.. run give @s minecraft:diamond 3
execute if score @s smp.tmp matches 1.. run give @s minecraft:stick 2

# Diamant-Axt (3 Diamanten + 2 Stöcke)
execute store result score @s smp.tmp run clear @s minecraft:diamond_axe 1
execute if score @s smp.tmp matches 1.. run give @s minecraft:diamond 3
execute if score @s smp.tmp matches 1.. run give @s minecraft:stick 2

# Diamant-Schaufel (1 Diamant + 2 Stöcke)
execute store result score @s smp.tmp run clear @s minecraft:diamond_shovel 1
execute if score @s smp.tmp matches 1.. run give @s minecraft:diamond 1
execute if score @s smp.tmp matches 1.. run give @s minecraft:stick 2

# Diamant-Hacke (2 Diamanten + 2 Stöcke)
execute store result score @s smp.tmp run clear @s minecraft:diamond_hoe 1
execute if score @s smp.tmp matches 1.. run give @s minecraft:diamond 2
execute if score @s smp.tmp matches 1.. run give @s minecraft:stick 2

# Diamant-Helm (5 Diamanten)
execute store result score @s smp.tmp run clear @s minecraft:diamond_helmet 1
execute if score @s smp.tmp matches 1.. run give @s minecraft:diamond 5

# Diamant-Brustplatte (8 Diamanten)
execute store result score @s smp.tmp run clear @s minecraft:diamond_chestplate 1
execute if score @s smp.tmp matches 1.. run give @s minecraft:diamond 8

# Diamant-Hose (7 Diamanten)
execute store result score @s smp.tmp run clear @s minecraft:diamond_leggings 1
execute if score @s smp.tmp matches 1.. run give @s minecraft:diamond 7

# Diamant-Stiefel (4 Diamanten)
execute store result score @s smp.tmp run clear @s minecraft:diamond_boots 1
execute if score @s smp.tmp matches 1.. run give @s minecraft:diamond 4

title @s actionbar {text:"⚠ Diamant-Zeitalter noch nicht erreicht!",color:"red",bold:1b}
tellraw @s {text:"[SMP] Diamant-Ausrüstung ist erst im Diamant-Zeitalter erlaubt – Diamanten wurden zurückgegeben!",color:"red"}
