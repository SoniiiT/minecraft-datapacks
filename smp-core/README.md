# SMP Core – Befehlsreferenz

Datapack für Minecraft 1.21.5+ (`pack_format 101.1`).  
Namespace: `smp` · Alle Befehle werden im Chat mit `/` eingegeben.

---

## Leben-System

### Admin-Befehle (Operator)

| Befehl | Effekt |
|---|---|
| `execute as <Spieler> run function smp:lives/admin/add` | +1 Leben geben (Maximum: 8) |
| `execute as <Spieler> run function smp:lives/admin/remove` | −1 Leben entziehen (löst bei 0 den 24h-Bann aus) |
| `execute as <Spieler> run function smp:lives/admin/reset` | Leben auf 3 zurücksetzen + laufenden Bann aufheben |

> `<Spieler>` ist ein Selektor oder Name, z.B. `@p`, `@a` oder `SpielerXY`.

### Timeout-Bann manuell steuern

| Befehl | Effekt |
|---|---|
| `execute as <Spieler> run function smp:lives/start_timeout` | Bann sofort starten (Leben → 0, Kick, 24h-Timer) |
| `execute as <Spieler> run function smp:lives/end_timeout` | Bann manuell beenden (Leben → 3, Quest zuweisen) |

---

## Zeitalter-System

Das Zeitalter gilt **serverweit** (alle Spieler gleichzeitig).

| Befehl | Effekt |
|---|---|
| `function smp:ages/advance_to_iron` | Wechsel ins **Eisen-Zeitalter** – Eisen & Gold freigeschaltet |
| `function smp:ages/advance_to_diamond` | Wechsel ins **Diamant-Zeitalter** – Alle Rüstungen freigeschaltet |

> Das Kupfer-Zeitalter (Startstand, Age 0) wird automatisch nach `/reload` gesetzt.  
> Um manuell auf Age 0 zurückzusetzen: `scoreboard players set #server smp.age 0` gefolgt von `execute as @a run function smp:ages/apply_restrictions`

---

## Quest-System

### Mechanik

- Jeder Spieler erhält **einmal täglich** beim Einloggen ein **Papier-Item** als Quest-Zettel.
- **Annehmen**: Quest-Zettel einfach im Inventar behalten – wird automatisch nach einigen Sekunden aktiviert.
- **Ablehnen**: Zettel wegwerfen oder verbrennen.
- **Lagern**: In einer Kiste deponieren (deaktiviert die Quest bis Rücknahme).
- **Handeln**: Zettel an andere Spieler weitergeben – die Quest überträgt sich automatisch auf denjenigen der den Zettel aufhebt.
- Eine Quest kann **nur 1 aktiv** pro Spieler sein.
- **24h-Verfall** ab dem Zeitpunkt der Aktivierung (Zettel aufgehoben) – danach verfällt die Quest und der Zettel wird entfernt.
- Fortschritt wird über eine **grüne Bossbar** (oben im Bildschirm) angezeigt, die bei Abschluss oder Ablauf verschwindet.

### Admin-Befehle

| Befehl | Effekt |
|---|---|
| `execute as <Spieler> run function smp:quests/assign` | Neue Quest würfeln und Papier geben (ersetzt aktuelle) |
| `execute as <Spieler> run function smp:quests/activate_quest` | Aktuelle Quest des Spielers sofort aktivieren (ohne Papier-Scan) |
| `execute as <Spieler> run function smp:quests/reward` | Quest sofort als abgeschlossen markieren (+1 Leben, Papier entfernt) |
| `execute as <Spieler> run function smp:quests/do_expire` | Quest sofort ablaufen lassen (Papier entfernt, Bossbar weg) |
| `execute as <Spieler> run function smp:quests/deactivate_quest` | Quest deaktivieren (z.B. nach Handel) |
| `function smp:quests/daily_reset` | Tages-Reset manuell auslösen (erhöht smp.day, Spieler bekommen beim nächsten Login neue Quest) |

---

## Scoreboards lesen (Debugging)

| Befehl | Zeigt |
|---|---|
| `scoreboard players get <Spieler> smp.lives` | Aktuelle Leben |
| `scoreboard players get <Spieler> smp.quest.type` | Quest-Typ-ID (1–184) |
| `scoreboard players get <Spieler> smp.quest.stat` | Quest-Kategorie (1–46) |
| `scoreboard players get <Spieler> smp.quest.target` | Quest-Ziel |
| `scoreboard players get <Spieler> smp.quest.progress` | Aktueller Fortschritt |
| `scoreboard players get <Spieler> smp.quest.done` | 1 = Quest abgeschlossen |
| `scoreboard players get <Spieler> smp.quest.active` | 1 = Quest aktiviert (Papier aufgenommen) |
| `scoreboard players get <Spieler> smp.quest.expire` | Gametime-Tick an dem die Quest abläuft (0 = keine aktive Quest) |
| `scoreboard players get <Spieler> smp.quest.last_day` | Tages-Nummer der letzten Quest-Vergabe |
| `scoreboard players get <Spieler> smp.slot` | Bossbar-Slot dieses Spielers (1–20) |
| `scoreboard players get <Spieler> smp.unban_time` | Gametime-Tick ab dem der Spieler wieder joinen darf (0 = nicht gebannt) |
| `scoreboard players get #server smp.age` | Aktuelles Zeitalter (0=Kupfer, 1=Eisen, 2=Diamant) |
| `scoreboard players get #server smp.day` | Aktueller Tages-Zähler (erhöht sich täglich) |
| `scoreboard players get #server smp.day_timer` | Sekunden bis zum nächsten Quest-Reset |

---

## Statistik-Trigger (Spieler)

| Befehl | Effekt |
|---|---|
| `/trigger smp.stats` | Eigene Statistiken anzeigen (Leben, Tode, PvP-Kills, Quests, Streak, Rang, Wochenchallenge) |

---

## Rang-System

Ränge sind rein kosmetisch und steigen automatisch mit den abgeschlossenen Quests.

| Rang | Schwelle | Farbe |
|---|---|---|
| Neuling | 0 Quests | Grau |
| Abenteurer ⭐ | 10 Quests | Grün |
| Krieger ⚔ | 25 Quests | Aqua |
| Veteran 🛡 | 50 Quests | Gold |
| Legende 👑 | 100 Quests | Lila |

> Beim Erreichen eines neuen Rangs erscheint eine Meldung im Chat aller Spieler sowie ein Titel-Screen.

### Admin-Befehle

| Befehl | Effekt |
|---|---|
| `execute as <Spieler> run function smp:util/update_rank` | Rang manuell neu berechnen |
| `scoreboard players get <Spieler> smp.rank` | Aktuellen Rang lesen (0–4) |
| `scoreboard players get <Spieler> smp.quests_done` | Gesamtzahl abgeschlossener Quests |

---

## Quest-Streak

Der Streak zählt aufeinanderfolgende Tage mit mindestens einer abgeschlossenen Quest.  
Wird beim täglichen Reset zurückgesetzt, falls gestern keine Quest abgeschlossen wurde.

| Meilenstein | Belohnung |
|---|---|
| 3 Tage | 1× Smaragd |
| 7 Tage | 1× Diamant |
| 14 Tage | 1× Verzaubertes Buch (Glück I) |
| 30 Tage | 1× Netherite-Schrott |

| Befehl | Effekt |
|---|---|
| `scoreboard players get <Spieler> smp.streak` | Aktueller Streak in Tagen |
| `scoreboard players get <Spieler> smp.streak.last_day` | Tages-Nummer der letzten Quest dieses Spielers |

---

## PvP-Tracker

Wird automatisch über das Scoreboard `minecraft.killed:minecraft.player` gezählt.

| Befehl | Effekt |
|---|---|
| `scoreboard players get <Spieler> smp.pvp_kills` | Anzahl der Spieler-Kills |

---

## Wochenchallenge

Alle Spieler gemeinsam schließen innerhalb von 7 Tagen eine bestimmte Anzahl Quests ab.  
Bei Erreichen des Ziels erhalten **alle Online-Spieler** 3 Diamanten + 5 Erfahrungsflaschen.  
Nach 7 Tagen startet automatisch eine neue Challenge.

### Admin-Befehle

| Befehl | Effekt |
|---|---|
| `scoreboard players set #server smp.week_goal <Zahl>` | Ziel-Anzahl der Quests für die Wochenchallenge setzen |
| `function smp:quests/week/reset` | Neue Woche manuell starten (Fortschritt zurücksetzen) |
| `function smp:quests/week/complete` | Wochenchallenge sofort als abgeschlossen markieren (+ Belohnung) |
| `scoreboard players get #server smp.week_progress` | Aktueller gemeinsamer Fortschritt |
| `scoreboard players get #server smp.week_done` | 1 = diese Woche bereits abgeschlossen |
| `scoreboard players get #server smp.week_days` | Tage seit Start der aktuellen Woche (0–6) |

---

## Sonstiges

| Befehl | Effekt |
|---|---|
| `/reload` | Datapack neu laden (Scoreboards & Einschränkungen werden neu angewendet) |
| `execute as @a run function smp:util/init_player` | Alle Spieler neu initialisieren (nur bei frischen Spielern sinnvoll) |
| `execute as @a run function smp:ages/apply_restrictions` | Zeitalter-Beschränkungen auf alle Spieler neu anwenden |

---

## Quest-Kategorien (stat 1–46)

| stat | Kategorie | Einheit | Ziele (4 Stufen) |
|---|---|---|---|
| 1 | Stein abbauen | Blöcke | 16 / 32 / 64 / 128 |
| 2 | Kohleerz (inkl. Tiefschiefer) | Blöcke | 4 / 8 / 16 / 32 |
| 3 | Eisenerz (inkl. Tiefschiefer) | Blöcke | 2 / 4 / 8 / 16 |
| 4 | Golderz (inkl. Tiefschiefer) | Blöcke | 2 / 4 / 6 / 12 |
| 5 | Diamanterz (inkl. Tiefschiefer) | Blöcke | 1 / 2 / 3 / 6 |
| 6 | Smaragderz (inkl. Tiefschiefer) | Blöcke | 1 / 2 / 3 / 5 |
| 7 | Lapiserz (inkl. Tiefschiefer) | Blöcke | 2 / 4 / 8 / 16 |
| 8 | Redstoneerz (inkl. Tiefschiefer) | Blöcke | 4 / 8 / 12 / 20 |
| 9 | Kupfererz (inkl. Tiefschiefer) | Blöcke | 4 / 8 / 12 / 20 |
| 10 | Kies abbauen | Blöcke | 16 / 32 / 64 / 96 |
| 11 | Sand abbauen | Blöcke | 16 / 32 / 64 / 96 |
| 12 | Baumstämme fällen (alle Holztypen) | Stämme | 4 / 8 / 16 / 32 |
| 13 | Zombies töten | Kills | 3 / 5 / 10 / 20 |
| 14 | Skelette töten | Kills | 3 / 5 / 10 / 20 |
| 15 | Creeper töten | Kills | 2 / 4 / 6 / 12 |
| 16 | Spinnen töten | Kills | 3 / 5 / 10 / 20 |
| 17 | Endermen töten | Kills | 1 / 3 / 5 / 10 |
| 18 | Blazes töten | Kills | 1 / 3 / 5 / 10 |
| 19 | Ertrunkene töten | Kills | 2 / 4 / 8 / 15 |
| 20 | Phantome töten | Kills | 1 / 2 / 4 / 8 |
| 21 | Hexen töten | Kills | 1 / 2 / 4 / 8 |
| 22 | Laufen | Blöcke | 250 / 500 / 1000 / 2000 |
| 23 | Angeln | Fische | 1 / 2 / 4 / 8 |
| 24 | Brot backen (craften) | Brote | 3 / 6 / 12 / 20 |
| 25 | Pfeile craften | Pfeile | 8 / 16 / 32 / 64 |
| 26 | Mit Dorfbewohnern handeln | Trades | 2 / 5 / 10 / 20 |
| 27 | Items verzaubern | Verzauberungen | 1 / 2 / 3 / 5 |
| 28 | Elytra fliegen | Blöcke | 200 / 500 / 1000 / 2000 |
| 29 | Klettern (Leitern, Ranken, etc.) | Blöcke | 50 / 100 / 200 / 400 |
| 30 | Farmtiere töten (Schwein/Kuh/Huhn/Schaf) | Kills | 3 / 5 / 10 / 20 |
| 31 | Tiere züchten | Züchtungen | 1 / 2 / 4 / 8 |
| 32 | Ancient Debris abbauen | Blöcke | 1 / 2 / 3 / 5 |
| 33 | Netherquarzerz abbauen | Blöcke | 4 / 8 / 16 / 32 |
| 34 | Schlafen | Nächte | 1 / 2 / 3 / 5 |
| 35 | Kuchen backen (craften) | Kuchen | 1 / 2 / 3 / 5 |
| 36 | Knochenmehl verwenden | Mal | 8 / 16 / 32 / 64 |
| 37 | Wächter töten | Kills | 2 / 4 / 8 / 15 |
| 38 | Wither-Skelette töten | Kills | 1 / 2 / 4 / 8 |
| 39 | Biom erkunden: Dschungel | — | Betreten |
| 40 | Biom erkunden: Pilzfelder | — | Betreten |
| 41 | Biom erkunden: Tiefe Dunkelheit | — | Betreten |
| 42 | Biom erkunden: Badlands | — | Betreten |
| 43 | Biom erkunden: Eisspitzen | — | Betreten |
| 44 | Biom erkunden: Scharlachroter Wald | — | Betreten |
| 45 | Biom erkunden: Kirschblütenhain | — | Betreten |
| 46 | Biom erkunden: Mangrove-Sumpf | — | Betreten |

Jede Kategorie hat 4 Schwierigkeitsstufen → 184 Quest-Typen gesamt.  
Biom-Quests haben keine Schwierigkeitsgrade (Ziel ist immer: Biom betreten).
