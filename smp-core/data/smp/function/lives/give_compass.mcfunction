# === Recovery Compass geben ===
# Der Kompass zeigt automatisch auf den letzten Todespunkt des Spielers.
# Wird nach jedem Tod aufgerufen.

give @s minecraft:recovery_compass 1
tellraw @s {text:"[SMP] Du hast einen Recovery Compass erhalten – er zeigt zu deinem letzten Todespunkt.",color:"gray",italic:1b}
