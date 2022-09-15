---
title: "Nullstellen ganzrationaler Funktionen"
date: "2022-09-08"
tags:
- mathematik
- ef
- nullstellen
---
## Warm-up

![[assets/M-EF-nullstellen 20220908-232346.excalidraw.svg]]
<!-- %%[[assets/M-EF-nullstellen 20220908-232346.excalidraw.md|🖋 Edit in Excalidraw]], and the [[assets/M-EF-nullstellen 20220908-232346.excalidraw.dark.svg|dark exported image]]%% -->

## Einstieg

![[assets/M-EF-nullstellen 20220908-234248.excalidraw.svg]]
<!--  %%[[assets/M-EF-nullstellen 20220908-234248.excalidraw.md|🖋 Edit in Excalidraw]], and the [[assets/M-EF-nullstellen 20220908-234248.excalidraw.dark.svg|dark exported image]]%% -->

## Sicherung
Es gibt drei grundsätzliche Möglichkeiten um die Nullstellen von ganzrationalen Funktionen zu bestimmen:

### Ablesen
Wenn die Funktion nur aus Linearfaktoren besteht, lassen sich die Nullstellen direkt ablesen. 
Beispiel:

$$
f(x) = -3(x-2)^2\cdot(x+1)\cdot(x-5)^3
$$

Da ein Produkt genau dann 0 ist, wenn mindestens einer der Faktoren 0 ist, kann die obige Funktion $f(x)$ nur dann 0 sein, wenn $(x-2)^2=0$, oder $(x+1)=0$, oder $(x-5)^3=0$ gilt.

Somit sind die Nullstellen $x_1=2 \land  x_2=-1 \land x_3=5$. 

### Ausklammern
Wenn alle Summanden des Funktionsterms die Variable beinhalten, lässt diese sich ausklammern und anschließend wie beim Ablesen fortfahren.

Beispiel:
$$
f(x)=x^3-2x^2+3x
$$
Hier lässt sich ein $x$ ausklammern
$$
\Leftrightarrow f(x)=x\cdot(x^2-2x+3)
$$
und anschließend ist der Funktionsterm wieder ein Produkt. (Zu lösen wie bei **Ablesen**)

### Substitution
Beim Betrachten der folgenden Gleichung fällt auf, dass durchaus Ähnlichkeit zur quadratischen Gleichung besteht, die sich mit der pq-Formel lösen lässt:

![[assets/M-EF-nullstellen 20220909-000110.excalidraw.svg]]
<!-- %%[[assets/M-EF-nullstellen 20220909-000110.excalidraw.md|🖋 Edit in Excalidraw]], and the [[assets/M-EF-nullstellen 20220909-000110.excalidraw.dark.svg|dark exported image]]%% -->
