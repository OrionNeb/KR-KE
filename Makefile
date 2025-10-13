# Standardziel (wird ausgeführt, wenn "make" ohne Argumente aufgerufen wird)
all: glossar render

# Glossar-Dateien erstellen
glossar:
	makeindex MeineArbeit.glo -s MeineArbeit.ist -t MeineArbeit.glg -o MeineArbeit.gls

# Quarto-Dokument rendern
render:
	quarto render MeineArbeit.qmd

# Aufräumen der temporären Dateien
clean:
	rm -f MeineArbeit.aux MeineArbeit.glo MeineArbeit.glg MeineArbeit.gls MeineArbeit.ist MeineArbeit.log MeineArbeit.out MeineArbeit.toc
