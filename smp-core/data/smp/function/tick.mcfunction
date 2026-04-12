# === SMP Core – Tick-Funktion ===
# Läuft jeden Tick

scoreboard players add #server smp.tick_counter 1
execute if score #server smp.tick_counter matches 20.. run function smp:util/every_second
