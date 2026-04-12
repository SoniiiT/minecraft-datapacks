# === Eisen/Gold-Items konfiszieren – Materialien zurückgeben ===
# Nutzt "execute store result" um sicherzustellen dass nur gecraftete Items refunded werden.
# clear gibt zurück wie viele Items entfernt wurden → 0 = Item nicht vorhanden → kein Refund.

# Eisen-Schwert (2 Eisenbarren + 1 Stock)
execute store result score @s smp.tmp run clear @s minecraft:iron_sword 1
execute if score @s smp.tmp matches 1.. run give @s minecraft:iron_ingot 2
execute if score @s smp.tmp matches 1.. run give @s minecraft:stick 1

# Eisen-Spitzhacke (3 Eisenbarren + 2 Stöcke)
execute store result score @s smp.tmp run clear @s minecraft:iron_pickaxe 1
execute if score @s smp.tmp matches 1.. run give @s minecraft:iron_ingot 3
execute if score @s smp.tmp matches 1.. run give @s minecraft:stick 2

# Eisen-Axt (3 Eisenbarren + 2 Stöcke)
execute store result score @s smp.tmp run clear @s minecraft:iron_axe 1
execute if score @s smp.tmp matches 1.. run give @s minecraft:iron_ingot 3
execute if score @s smp.tmp matches 1.. run give @s minecraft:stick 2

# Eisen-Schaufel (1 Eisenbarren + 2 Stöcke)
execute store result score @s smp.tmp run clear @s minecraft:iron_shovel 1
execute if score @s smp.tmp matches 1.. run give @s minecraft:iron_ingot 1
execute if score @s smp.tmp matches 1.. run give @s minecraft:stick 2

# Eisen-Hacke (2 Eisenbarren + 2 Stöcke)
execute store result score @s smp.tmp run clear @s minecraft:iron_hoe 1
execute if score @s smp.tmp matches 1.. run give @s minecraft:iron_ingot 2
execute if score @s smp.tmp matches 1.. run give @s minecraft:stick 2

# Eisen-Helm (5 Eisenbarren)
execute store result score @s smp.tmp run clear @s minecraft:iron_helmet 1
execute if score @s smp.tmp matches 1.. run give @s minecraft:iron_ingot 5

# Eisen-Brustplatte (8 Eisenbarren)
execute store result score @s smp.tmp run clear @s minecraft:iron_chestplate 1
execute if score @s smp.tmp matches 1.. run give @s minecraft:iron_ingot 8

# Eisen-Hose (7 Eisenbarren)
execute store result score @s smp.tmp run clear @s minecraft:iron_leggings 1
execute if score @s smp.tmp matches 1.. run give @s minecraft:iron_ingot 7

# Eisen-Stiefel (4 Eisenbarren)
execute store result score @s smp.tmp run clear @s minecraft:iron_boots 1
execute if score @s smp.tmp matches 1.. run give @s minecraft:iron_ingot 4

# Gold-Schwert (2 Goldbarren + 1 Stock)
execute store result score @s smp.tmp run clear @s minecraft:golden_sword 1
execute if score @s smp.tmp matches 1.. run give @s minecraft:gold_ingot 2
execute if score @s smp.tmp matches 1.. run give @s minecraft:stick 1

# Gold-Spitzhacke (3 Goldbarren + 2 Stöcke)
execute store result score @s smp.tmp run clear @s minecraft:golden_pickaxe 1
execute if score @s smp.tmp matches 1.. run give @s minecraft:gold_ingot 3
execute if score @s smp.tmp matches 1.. run give @s minecraft:stick 2

# Gold-Axt (3 Goldbarren + 2 Stöcke)
execute store result score @s smp.tmp run clear @s minecraft:golden_axe 1
execute if score @s smp.tmp matches 1.. run give @s minecraft:gold_ingot 3
execute if score @s smp.tmp matches 1.. run give @s minecraft:stick 2

# Gold-Schaufel (1 Goldbarren + 2 Stöcke)
execute store result score @s smp.tmp run clear @s minecraft:golden_shovel 1
execute if score @s smp.tmp matches 1.. run give @s minecraft:gold_ingot 1
execute if score @s smp.tmp matches 1.. run give @s minecraft:stick 2

# Gold-Hacke (2 Goldbarren + 2 Stöcke)
execute store result score @s smp.tmp run clear @s minecraft:golden_hoe 1
execute if score @s smp.tmp matches 1.. run give @s minecraft:gold_ingot 2
execute if score @s smp.tmp matches 1.. run give @s minecraft:stick 2

# Gold-Helm (5 Goldbarren)
execute store result score @s smp.tmp run clear @s minecraft:golden_helmet 1
execute if score @s smp.tmp matches 1.. run give @s minecraft:gold_ingot 5

# Gold-Brustplatte (8 Goldbarren)
execute store result score @s smp.tmp run clear @s minecraft:golden_chestplate 1
execute if score @s smp.tmp matches 1.. run give @s minecraft:gold_ingot 8

# Gold-Hose (7 Goldbarren)
execute store result score @s smp.tmp run clear @s minecraft:golden_leggings 1
execute if score @s smp.tmp matches 1.. run give @s minecraft:gold_ingot 7

# Gold-Stiefel (4 Goldbarren)
execute store result score @s smp.tmp run clear @s minecraft:golden_boots 1
execute if score @s smp.tmp matches 1.. run give @s minecraft:gold_ingot 4

title @s actionbar {text:"⚠ Nicht erlaubt im Kupfer-Zeitalter!",color:"red",bold:1b}
tellraw @s {text:"[SMP] Eisen & Gold Ausrüstung ist im Kupfer-Zeitalter gesperrt – Materialien wurden zurückgegeben!",color:"red"}
