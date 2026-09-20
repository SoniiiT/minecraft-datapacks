# Laeuft als der Spieler, sobald er sich ins Bett legt: markiert ihn guenstig, damit nicht jeden Tick das NBT aller Spieler gelesen werden muss
tag @s add in_bed
advancement revoke @s only sleep:slept_in_bed
