# 0. Vorbereitung

* PIN-Belegung des RPi ansehen
* FIXME Buchsenleiste verdeckt gerade die Lötaugen!

# 1. Bauteile der 'Core Parts' in "Schematic" View hinzufügen:

* Basic
    * Resistor 680 Ohm (THT)
    * Inductor 22 nH (SMD 1206)
    * Ceramic Capacitor 1 nF (THT)
    * Ceramic Capacitor 22 pF (THT)
* Input
    * Variable Capacitor 2.1-10 pF (THT, 3.81mm pin spacing)
    * Antenna (Wire soldering point)
* Connection
    * Generic female header (THT, 2x10)
* Schematic View
    * Ground

# 2. "Schematic"-Verdrahtung

# 3. "PCB" View

* PCB ändern auf One Layer & Fäche ca. 30x30mm
* Bauteile anordnen (THT-Bauteile auf Vorderseite, SMD auf Unterseite, Female Header auf Unterseite drehen)
* Leitungen ziehen
* optional: Copper Fill Blocker & Silkscreen Text
* Rechtsklick auf einen Ground Pin: "Set Ground Fill Seed"
* Routing -> Ground Fill

# 4. Zusatzaufgaben

* Antennenanschluss auf folgende MCX-Buchse umbauen:
  http://www.reichelt.de/index.html?ARTICLE=152523
* Testboard mit verschiedenen PCB-Spulen um ~24 nH erstellen, da typ. 2-3% Abweichung
    * Berechnungsgrundlagen mit Online calculator:
      http://coil32.net/pcb-coil.html
    * alternative Formen:
      http://www.circuits.dk/calculator_planar_coil_inductor.htm

# Bugs/Feature Requests

* es gibt ein richtiges Variable Capacitor Schaltsymbol
* Female Header double row Breadboard View kaputt
