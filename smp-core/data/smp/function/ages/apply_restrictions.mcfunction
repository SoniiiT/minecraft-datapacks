# === Alters-Restriktionen anwenden ===
# Wird als @s (Spieler) ausgeführt

execute if score #server smp.age matches 0 run function smp:ages/restrict/copper
execute if score #server smp.age matches 1 run function smp:ages/restrict/iron
execute if score #server smp.age matches 2 run function smp:ages/restrict/diamond
