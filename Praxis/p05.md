# Thema: Diode & NPN-Bipolartransistoren

Ideenpool:

* http://asti.vistecprivat.de/hp/elektronik/wpu9/auf9_02.pdf
* http://www.elektronik-kompendium.de/sites/slt/0204302.htm
* http://www.elektronik-kompendium.de/sites/slt/0208031.htm
* http://www.elektronik-kompendium.de/sites/slt/1102161.htm

## 0) Vorbereitungsaufgaben

* Prüfungsfragen
* Diode mit Vorwiderstand -> leuchtet, leuchtet nicht
* Beinchen der BiPos zuordnen (Datenblatt)
* BiPos mit dem Komponententester durchmessen

## 1) Schalter

<!-- TODO stole -->

* mit 10k Ohm?

## 2) Darlington-Berührungssensor 

Prinzip: Multiplikative Verstärkung durch Darlington-Schaltung

* Körper wirkt als Antenne und koppelt HF über den Finger kapazitiv ein
  (Elektrosmog à la 50 Hz und höher)
* Stromverstärkung im Bereich von 10^4 ... 10^5 durch Multiplikation
    * BC547C: B = 420 ... 800
* NPN begrenzt Strom durch Verwendung von Kleinleistungstransistoren (~100 mA)
* LED kann durch Lautsprecher ausgetauscht werden -> man höre den Smog! ;-)

## 3) AF-Amp

Prinzip: Emitterschaltung mit Spannungsgegenkopplung zur Stabilisierung des
         Arbeitspunktes

* Signal Handy/Laptop: 0.1V bei mittlerer bis kleiner Lautstärke
* Stufe sollte so rund 10fache Spannungsverstärkung haben
* erster Ansatz: Widerstände zueinander ca. Faktor 100 (10k Ohm & 100 Ohm)
    * besser: Der Rückkoppelwiderstand sollte etwa um den Faktor der
      Stromverstärkung größer sein als der Kollektorwiderstand, damit sich ein
      Spanungsteiler 1/2:1/2 bildet. D.h. das Transistor-Modell BC547 hat eine
      Stromverstärkung von ~500, wobei es aber auch nicht genau darauf ankommt.
    * Ergebnis: 22k Ohm & 47 Ohm (+/- 10%) als billige Standardwerte
      (Toleranzen spielen kaum eine Rolle)
* für den Arbeitspunkt immer die Kollektorspannung ansehen, dort sollte die
  Wechselspannung ca. um die halbe Versorgungsspannung herum schwanken (hier so
  grob im Bereich 2-4V)
* Basisspannung messen kann auch Erleuchtungen bringen
* optionale Aufgabe: 3 solche Stufen hintereinander könnten einen
  Mikrofonverstaerker mit Lautsprecher ergeben -> dreifacher Darlington
