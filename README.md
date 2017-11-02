# About

* Material für den AfuTUB-Kurs

# Dokumente & Folien

Der AfuTUB-Kurs verwendet das Textsatzformat LaTeX. Um alles zu generieren gibt
es ein Makefile. Ein einfaches Kommando `make` reicht also aus um alle
Dokumente und Folien zu generieren. Mit `make xxx.pdf` wird ein einzelnes
Kapitel generiert.

# Patches

Änderungsvorschläge bitte als Patchfile per E-Mail an <kurs@dk0tu.de> --
Beispielbfehl für die Konsole:

    git diff > Verbesserung.patch

Man sollte das Patchfile auf einem frischen "clone" des Master-Branches testen:

    git apply Verbesserung.patch
