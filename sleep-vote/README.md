# Sleep Vote

Datapack für Minecraft 26.3.

- **Ab 50 % Schläfern** (in der Overworld, Spectator zählen nicht; bei 2 Spielern reicht 1) erscheint im Chat einmalig `<Prozent>% der Spieler schlafen. Tag in 10 Sekunden.` Nach 10 Sekunden wird es Tag und Regen/Gewitter hört auf. Steigt jemand vorher aus dem Bett und es sind zu wenige Schläfer, wird abgebrochen.
- **Wenn alle schlafen** (auch ein einzelner Spieler allein), verkürzt sich der Countdown auf 3 Sekunden. Im Chat steht `Alle Spieler schlafen! Tag in 3 Sekunden, danach gibt es einen Boost für die nächsten 20 Minuten.`
- **Der Boost kommt erst, wenn die Nacht vorbei ist** und nur, wenn bis dahin wirklich alle im Bett geblieben sind. Wer vorher aufsteht, verhindert den Boost für alle, damit man ihn nicht durch kurzes Hinlegen abgreifen kann. Jeder Spieler bekommt einen eigenen, zufälligen guten Effekt für 20 Minuten und sieht im Chat, welchen: Stärke, Regeneration, Schnelligkeit, Eile, Resistenz, Sprungkraft, Feuerresistenz, Nachtsicht, Wasseratmung, Extraherzen, Absorption, Langsamer Fall, Glück, Delfins Gnade oder Held des Dorfes.

- **Ausgeschlafen und satt:** Alle Spieler, die beim Tageswechsel im Bett liegen, haben danach eine volle Hungerleiste (auch bei der 50-%-Regel, aber nur die, die wirklich geschlafen haben).

- **AFK-Spieler zählen nicht mit**, wenn das Pack `afk-detect` ebenfalls installiert ist: Wer den Tag `afk` hat, blockiert weder die 50-%-Regel noch „alle schlafen“ und bekommt keinen Boost.

- **Serverlast:** Im Normalbetrieb (niemand im Bett) macht das Pack pro Tick fast nichts. Ein Advancement markiert Spieler beim Hinlegen, nur diese werden dann geprüft. Nachts fängt ein Scan alle 2 Sekunden Schlafende auf, die das Advancement nicht erfasst hat.

Installation: Ordner `sleep-vote` in `<welt>/datapacks/` kopieren, dann `/reload`.
