---
title: "Anleitungen-quartz"
date: "2022-09-03"
tags:
- quartz
- obsidian
- hosting
---

Solltest du deinen Obsidian-Vault nicht bei GitHub Pages hosten wollen, dann solltest du dir dringend diese [Anleitung von Brandon Boswell](https://brandonkboswell.com/blog/Publishing-your-Obsidian-Vault-Online-with-Quartz/) ansehen. Das erfordert allerdings deutlich mehr Fachwissen als das, was ich hier vorstellen möchte.

Solltest du es so hingegen so einfach wie möglich haben wollen, dann kannst du hier weiterlesen. 

Ich selbst habe mich an die [Anleitung des Entwicklers](https://quartz.jzhao.xyz/) von Quartz gehalten. Dort ist alles erklärt und ich würde es unbedingt als Nachschlagewerk empfehlen, wenn hier etwas nicht sofort klar wird. Ich fand es nur nicht ganz linear aufgebaut, ich musste andauernd hin und her springen während der Ersteinrichtung.

## Voraussetzung
Da wir bei github pages hosten wollen, benötigst du naheliegender Weise einen [github](https://github.com) account. Weiterhin benötigst du natürlich [obsidian](https://obsidian.md), da wir einen obsidian-Vault veröffentlichen wollen.


## Installation
Zuerst gehst du zu Jacky Zhaos [Quartzrepository](https://github.com/jackyzha0/quartz). Dort klickst du auf **"Fork"**. (Leute mit Ahnung von github usw. benötigen diese Anleitung nicht, deswegen werde ich hier vieles sehr vereinfacht darstellen)
![[Pasted image 20220904103758.png]]

Im Browser gehst du nun zu dem neuen repository in deinem Account und klickst auf Settings->Pages:
![[Pasted image 20220904112833.png]]

Dort aktivierst du GitHub Pages. Im screenshot oben habe ich eine eigene Domain gewählt, das ist aber nicht erforderlich.

> **WICHTIG:**
> Bei Build and deployment muss unter Branch **UNBEDINGT** "master" und "/root" ausgewählt werden! Nur dann kann es funktionieren.
> Mir fiel auf, dass master erst nach dem ersten push auswählbar war. Eventuell war ich aber auch zu blöd...





Um das regelmäßige Arbeiten später zu vereinfachen, sollte man das geforkte repository (also das, das sich im eigenen GitHub Account befindet) nun clonen um eine Kopie auf dem lokalen Rechner zu besitzen. Für die vollkommen unbedarften geht dies sehr einfach mit [VS-Code](https://code.visualstudio.com/). Man öffnet dort ein neue Fenster
![[Pasted image 20220904105828.png]]
und geht anschließend in der vertikalen Menüleiste auf den **"git"** button und wählt **"Repository klonen"**.
![[Pasted image 20220904110202.png]]
Hier muss man in einem Dialog dann seine Zugangsdaten für GitHub angeben (und ein paar weitere Informationen) und später das gewünschte repositor. Anschließend ist alles eingerichtet.

Die Struktur des Ordners sieht innerhalb von VS-Code wie folgt aus:
![[Pasted image 20220904110709.png]]
Bevor man die Seite nun online bringen kann, sind ein paar wenige Einstellungen von Nöten.

### deploy.yaml
Die Datei `deploy.yaml` befindet sich im Verzeichnis `.github/workflows`. In dieser musst du unter **cname** die URL eingeben, unter der eure Seite später erreichbar sein soll.

### config.yaml
Die Datei `config.yaml` befindet sich im Ordner `data`.
In dieser kannst du unter **name** euren Namen eingeben. Dieser wird auf der Startseite unten angezeigt:
![[Pasted image 20220904111416.png]]
Auch ob und welche links für social media angezeigt werden sollen, kannst du in dieser Datei einstellen. Zusätzlich noch die Beschreibung der Seite.

### config.toml
Die Datei `config.toml` befindet sich im root eures repository.
Die wichtigste Einstellung ist hier direkt die erste Zeile. Hier musst du die URL eurer GitHub Pages einstellen. 

> **WICHTIG:** 
> am Ende der URL **MUSS** ein "/" ("slash") stehen, ansonsten beschwert sich github pages.

Desweiteren solltet ihr Google Analytics auskommentieren mit einem "#":

```
# googleAnalytics = "G-ADSFEJ§JAD"
```

### Test
Um alles zu testen solltest du nun einmal in den Ordner `content` gehen und dort irgendwo in der Datei `_index.md` ein "Hallo Welt!" oder ähnliches einfügen.

Danach gehst du bei VS-Code wieder auf den **"git"**-Button im vertikalen Menü links. Dort klickst du auf **"refresh"**, gibst einen Namen für den ersten Commit ein (bspw. "Hallo Welt") und klickst danach auf commit und push.
![[Pasted image 20220904113224.png]]
Wenn es keine Fehlermeldungen gibt, solltest du im Browser in deinem repository deinen neuen Commit sehen können.

Es dauert ca. 2 min bis GitHub Actions durchgelaufen ist und die Seite unter der URL (wie bei "Settings->Pages" angezeigt) sichtbar ist.

Hier sollte nach dem ersten push nochmal nachgesehen werden, ob es wie oben beschrieben auf "master" und "/root" eingestellt ist! Insbesondere, wenn es noch nicht geklappt hat.

## Content erstellen/Vault vorbereiten
Wenn es ganz, ganz einfach sein soll, dann startet man einfach einen neuen Vault im Verzeichnis `content`. Die Unterordner `privat` und `template` sollte man tunlichst nicht löschen. Auf Templates komme ich gleich nochmal zu sprechen.

Damit Hugo (der static-site generator, den Quartz nutzt um den Vault zu veröffentlichen) mit den Notizen in Obsidian klar kommt, gibt es ein paar Sachen zu beachten.

#### Front Matter:
Hugo benötigt ein Front Matter. Dies ist ein kleiner Textbereich am Anfang einer Markdowndatei