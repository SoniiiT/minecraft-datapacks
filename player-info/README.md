# Player Info

Datapack für Minecraft 26.3.

- **Herzen unter dem Namen:** Jeder Spieler hat unter seinem Namen ein rotes ❤ mit der Zahl seiner Herzen (10 = volle Gesundheit; aufgerundet, ein lebender Spieler zeigt nie 0).
- **Spielzeit in der Tab-Liste:** Neben jedem Namen steht die Spielzeit als `12 h 34 min`.

**Wichtig zur Spielzeit:** Sie zählt ab dem Moment, in dem das Pack installiert wird. Bereits gespielte Zeit wird nicht übernommen, weil ein Datapack die Statistik-Dateien nicht lesen kann (getestet: die Statistik zeigte 1202 Ticks, der Zähler nur 263 seit dem Anlegen). Es zählt die Vanilla-Spielzeit, AFK-Zeit zählt also mit.

**Serverlast:** Die Herzen werden alle 10 Ticks nur mit Scoreboard-Rechnung aktualisiert. Die Spielzeit-Anzeige wird pro Spieler einmal pro Minute erneuert, verteilt auf verschiedene Sekunden. Es wird kein Spieler-NBT gelesen.

**Deinstallieren:** Erst `/function pinfo:remove` ausführen (entfernt Anzeige und Scoreboards), dann den Ordner aus `world/datapacks/` löschen und `/reload`. Ohne den ersten Schritt bleiben Herzen und Spielzeit-Liste nach dem Entfernen des Packs sichtbar.

Installation: Ordner `player-info` in `<welt>/datapacks/` kopieren, dann `/reload`.
