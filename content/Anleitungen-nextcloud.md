---
title: "Die Nextcloud"
date: "2022-09-06"
tags:
- nextcloud
- anleitung
- teilen
- kalender
- talk
- dateien
---

Solltest du dich noch nie in einer der Plattformen eingeloggt haben oder Probleme beim Einloggen haben, so lies bitte erst die [[Anleitungen-keycloak|Anleitung zum Login]].

# Nextcloud
## Dateien
Die Dateienapp ist das Herzstück von Nextcloud, da das gesamte Projekt ursprünglich als Cloudspeicher konzipiert wurde. Um als Alternative zu MS365, Google Workspace und ähnlichem bestehen zu können, wurden später die anderen "Apps" hinzugefügt.

### Dateien teilen
Man kann Dateien und Ordner einzelnen Personen, Gruppen von Personen oder ganz öffentlich jedem zur Verfügung stellen.

Um eine Datei oder einen Ordner zu teilen muss zuerst auf das "Teilen"-Symbol geklickt werden.
![[assets/Pasted image 20221006094755.png]]

Nun öffnet sich das "Teilen"-Menü:
![[assets/Pasted image 20221006094641.png]]
Möchte man eine Datei (oder Ordner) jemandem nochmals kurz zeigen, mit dem diese (dieser) bereits geteilt ist, so kann man einfach bei "Interner Link" auf das "Zwischenablage"-Symbol klicken und diesen Link versenden. Ist dies aber noch nicht geschehen, muss man sich entscheiden, auf welche Art man die Datei teilen möchte, "innerhalb der Schulgemeinschaft", was deutlich speziellere Rechteeinstellungen erlaubt, oder per Link an Externe und damit jeden, der den Link erhält.

#### Teilen innerhalb der Schulgemeinschaft

Zum Teilen innerhalb der Schulgemeinschaft gibt man in das Suchfeld einen Teil desjenigen an, mit dem man teilen möchte. Anschließend werden einem relativ schnell per Autovervollständigung mögliche User, Gruppen, Kreise (hier nicht sichtbar) oder Talk-Konversationen angezeigt.

>**Wichtig:**
>Bei Benutzung der App funktioniert die Autovervollständigung nicht, dort muss der Suchbegriff abgeschickt werden ("Enter"), damit passende Vorschläge angezeigt werden!

![[assets/Pasted image 20221006095118.png]]

Im Bild ist erkennbar wie Nextcloud anzeigt, ob der Vorschlag eine Person (dann ist nichts am rechten Rand sichtbar und man sieht in grau die (Pseudo-)-Mailadresse unter dem Namen), eine Gruppe (Das Symbol mit den zwei Personen) oder eine Talk-Unterhaltung (die Sprechblase) ist.

![[assets/Pasted image 20221006102928.png]]
Wurde eine Datei (oder Ordner) erfolgreich innerhalb der Schulgemeinschaft geteilt, so sieht man im Anschluss (meistens erst nach einem Reload der Seite), dass neben dem "Teilen"-Symbol nun ein "Geteilt" steht.

![[assets/Pasted image 20221006095339.png]]

#### Teilen mit Externen
Möchte man eine Datei (oder Ordner) per Link teilen, dies ist notwendig, wenn diese auch Leute außerhalb der Schulgemeinschaft sehen/bearbeiten/erstellen können sollen, dann muss man einen neuen "Freigabe-Link" erstellen.
![[assets/Pasted image 20221006103951.png]]

Nachdem dieser erstellt wurde kann man über das "drei Punkt"-Symbol neben dem "Zwischenablage"-Symbol einstellen, welche Rechte den Leuten zustehen.
![[assets/Pasted image 20221006103907.png]]
**Rechte:**

- **Schreibgeschützt:** Datei oder Ordner kann nicht geändert werden, im Falle eines Ordners können auch keine neuen Dateien erstellt werden.
- **Hochladen und Bearbeiten erlauben (Nur bei Ordnern):** User dürfen Dateien innerhalb des geteilten Ordners verändern und neue Dateien erstellen.
- **Download verbergen:** Entfernt den Button zum Herunterladen von Dateien (ist aber für "versierte" Nutzer trotzdem noch möglich).
- **Passwortschutz:** Erfordert nach Eingabe des Links noch eine Passworteingabe um die geteilten Inhalte ansehen zu können.
- **Videoüberprüfung:** Für unseren usecase nicht von Interesse.
- **Ablaufdatum setzen:** Ermöglicht es ein Datum zu setzen, zu dem der Freigabe-Link automatisch abläuft.
- **Notiz an Empfänger:** Für unseren usecase bei der Link-Freigabe nicht von Interesse.
- **Freigabe aufheben:** Beendet die Freigabe.
- **Weiteren Link hinzufügen:** Fügt einen weiteren Link hinzu, dem man dann andere Rechte mitgeben kann.

Wurde eine Datei (oder Ordner) erfolgreich innerhalb über eine Link-Freigabe geteilt, so sieht man im Anschluss (meistens erst nach einem Reload der Seite), dass anstatt des "Teilen"-Symbols nun ein "Link"-Symbol erscheint und rechts davon nun ein "Geteilt" steht.
![[assets/Pasted image 20221006095235.png]]

### kollaboratives arbeiten
**Definition:**

>Kollaboratives Arbeiten meint eine spezielle Form der Zusammenarbeit innerhalb eines Teams. Üblicherweise ist es so, dass Teams gemeinsam auf ein Ziel hinarbeiten, die Team-Mitglieder aber meist einzelne Aufgaben übernehmen und eher nebeneinander als gemeinsam arbeiten.

Um dies bei der Erstellung von Dokumenten erreichen zu können, muss es möglich sein gleichzeitig an unterschiedlichen Stellen innerhalb eines Dokuments arbeiten zu können. Wir verwenden hierfür für ganz einfach Arbeiten den Texteditor von Nextcloud selbst oder Collabora Office.

#### Collabora Office
#### Einfache Textdatei (mit Markdown)
## Kalender
### Eigenen Kalender erstellen
### Kalender per CalDAV abonnieren
#### iOS
#### Android
#### Windows
## Talk
