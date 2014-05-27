all: TUDo-Beispiel.pdf

TUDo-Beispiel.pdf: TUDo-Beispiel.tex *.sty
	lualatex TUDo-Beispiel.tex
	lualatex TUDo-Beispiel.tex
	mkdir -p logfiles
	mv *.log *.aux *.nav *.out *.snm *.toc logfiles/

clean:
	rm -r logfiles
