# 307_Xylophone

## Aufgabe:
* Lade dir das XCode Starter Projekt aus meinem Public Repository!
* Erarbeite mit AutoLayout eine Version, welche auf allen Geräten optisch brauchbar ist
* Erstelle einen Startscreen (ebenfalls AutoLayout formatiert)
* Eine Methode soll von allen "Tasten" über IBActions aufgerufen werden! Die Unterscheidung, welche Taste gedrückt wird, kann über den currentTitle erfolgen (siehe Title im Attribute Inspector).
* Die gedrückte Taste soll optisch hervorgehoben werden. Benutze dazu das Attribut "alpha". Setze den Wert auf 0.5. Nach 0.2 Sekunden soll der Wert wieder auf 1.0 gesetzt werden. Verwende folgenden Code dazu:
```
DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {...}
```
* Recherchiere, wie man Sound abspielen kann. Stichwort: ```AVAudioPlayer```
