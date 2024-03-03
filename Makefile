all: build/example.pdf

texoptions = \
	     --lualatex \
	     --interaction=nonstopmode \
	     --halt-on-error \
	     --output-directory=build

build/example.pdf: FORCE | build
	latexmk $(texoptions) example.tex

preview: FORCE | build
	latexmk $(texoptions) -pvc example.tex

FORCE:

build:
	mkdir -p build

clean:
	rm -rf build
