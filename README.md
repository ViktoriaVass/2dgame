PlatformerGame – Projektdokumentation

Spielbeschreibung:
Das Spiel besteht aus zwei Levels und wird über ein Hauptmenü gestartet. Vom ersten Level gelangt man durch eine Tür in das zweite Level. Ziel des Spiels ist es, möglichst viele Coins zu sammeln und nicht zu sterben.
Im ersten Level stirbt der Spieler nur, wenn er von einer Plattform fällt. Im zweiten Level gibt es zusätzlich dynamisch fallende Steine, die den Spieler töten können, wenn sie ihn treffen. Am Ende des zweiten Levels befindet sich ein klar gekennzeichnetes Ziel. Wird dieses erreicht, erscheint eine "You won the game"–Seite, von der aus das Spiel neu gestartet werden kann.
Stirbt der Spieler, gelangt er auf eine Game Over-Seite mit der Möglichkeit, das Spiel erneut von vorne zu beginnen.

Funktionen und Gameplay-Elemente:
Ton-Effekte:
- Beim Springen
- Beim Einsammeln von Coins

Coin-Anzeige:
- Die Anzahl gesammelter Coins wird pro Level separat gezählt
- Diese Zahl wird dynamisch aktualisiert und oben links unter der Levelbezeichnung angezeigt

Animationen/ Darstellungen:
- Spielerdarstellung:
   . Stehen → Stehendes-Spielersymbol
   . Laufen → Laufanimation - Bewegung der Beine und Anpassung nach Richtung
   . Springen → Springendes-Spielersymbol
- Coins sind animiert und „vibrieren“ leicht zur besseren Sichtbarkeit
- Die Level wurden mithilfe von Tilemaps erstellt

Steuerung:
- Bewegung nach links und rechts über die Pfeiltasten oder andere definierte Tasten
- Springen
- ESC-Taste: Rückkehr ins Hauptmenü aus jedem Level

Eigene Umsetzung und Herausforderungen:
- Die Animationen, fallende Steine sowie das Coin-Sammelsystem wurden im Selbststudium implementiert
- Die größte Herausforderung war die korrekte Zählung der Coins - anfangs wurde immer nur bis eins gezählt
- Die Umsetzung der fallenden Steine war auch technisch anspruchsvoll: Anfangs habe ich angenommen, dass ein RigidBody2D ausreicht, später stellte sich jedoch heraus, dass zusätzlich ein Area2D zur Kollisionserkennung notwendig ist
