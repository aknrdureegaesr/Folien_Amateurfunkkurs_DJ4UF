Style Guide für Content, Code, Design und Workflow der Unterlagen des
AfuTUB-Kurses.

# Content

Generell von anderen produzierten Content nicht löschen, sondern
auskommentieren. In den Reviews durch die Maintainer werden diese Inhalte im
Laufe der Jahre dann aussortiert.

Slides:

* Klasse E sollte auf entsprechendem Level gelehrt werden, Orientierung sind
  die Fragen im Skript. Demzufolge konsequent Zusatzinfos als solche markieren,
  in die Klasse A verschieben oder als pdfpc-Notes einfügen.
* Prüfungsfragen/Übungsaufgaben gehören hier nicht rein -- nur exemplarisch
  wichtige oder für das Verständnis unbedingt notwendige bzw. nur Bilder aus
  Fragenkatalog verwenden. Gemeinsame Rechenaufgaben führen teilw. zum
  Abschalten des Auditoriums, also auch diese nur wenn sie zum Verständnis
  notwendig sind. Ansonsten ist im Anschluss dazu Zeit.
* Praxisaufgaben gehören nicht in die Folien
* empfohlene Pausen nicht in die Folien, sondern in die pdfpc-Notes

----

# Coding Style

Die LaTeX-Files sollen nach dem Style Guide for Python Code erstellt werden:
https://www.python.org/dev/peps/pep-0008/

Einzige Anpassung ist die Indentation auf 2 Spaces. Da LaTeX-Code weit
verschachtelt und die Kommandos sehr breit sind, würde sich das sonst sehr weit
auseinanderziehen.

FIXME VIM FILES

----

# Design Rules

Slides:

* LaTeX Beamer -- Theme & Color: Goettingen-beetle (angepasst), vgl.
  http://www.deic.uab.es/~iblanes/beamer_gallery/index_by_theme_and_color.html
* Überschriften/Struktur: z.B. frametitle nur bezogen auf aktuelle Slide, sonst
  \section \subsection
* `columns` statt `minipages` verwenden, nutzt es intern aber ist sauberer
* sichtbare Links und Footnotes nur bei Relevanz, sonst in Appendix
* Quellen in den Appendix und `cc_beamer` verwenden
* Bildquellen direkt am Bild markieren und nicht an der Caption, damit das
  einheitlich ist und nicht überall Captions verwendet werden (bisher
  verwendeter Mix aus verschiedenem und `attribcaption` ist zu vereineitlichen)
* Captions sind auf der Leinwand kaum lesbar, nur zur Erläuterung fürs spätere
  Slides-Lesen verwenden
* Bilder möglichst für 4:3 und 16:9 anpassen mit bspw.
  `width=\textwidth,height=.4\textheight,keepaspectratio`

Skript: *in Entwicklung*

----

# Workflow

* Branches sowie kurs-input checken und einpflegen!
* Lösungswege in Praxisskript checken

## Branch-Integration mit Git und Vim

Beispielhaft am Chaoswelle-Branch und der Lektion E10:

    git diff ..origin/chaoswelle e10.tex
    git checkout -p origin/chaoswelle e10.tex

      > s - split
      > y - yes
      > n - no
      > a - all

    git diff --cached
    git commit

## Code Cleanup mit Vim

Folgende Kommandos im Editor ausführen:

      > gg              # Marker an den Textanfang setzen
      > V               # Zeilenweise markieren
      > G               # Marker bis Textende setzen
      > =               # Code automatisch ausrichten
      > :%s/\s\+$//gc   # unnötige Leerzeichen entfernen
      > :%s/^I/ /gc     # TABs entfernen, ^I = [CTRL]+V, <TAB>

