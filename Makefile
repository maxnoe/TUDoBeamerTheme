all: build/TUDo-Beispiel.pdf

TeXOptions = --interaction=nonstopmode \
			 --halt-on-error \
			 --output-directory=build

build/TUDo-Beispiel.pdf: TUDo-Beispiel.tex *.sty | build
	lualatex $(TeXOptions) TUDo-Beispiel.tex
	lualatex $(TeXOptions) TUDo-Beispiel.tex

build:
	mkdir -p build

clean:
	rm -r build
