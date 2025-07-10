.PHONY: default clean all epub pdf tex

default: clean all

clean:
	rm -rf */tmp.md
	rm -rf */tmp*.png
	rm -rf book.*

all:
	python3 src/parseBook.py  -f tex -f pdf -f epub

epub:
	python3 src/parseBook.py -f epub

pdf:
	python3 src/parseBook.py -f pdf

pdf-without-images:
	python3 src/parseBook.py -f pdf --skip-image-generation

tex:
	python3 src/parseBook.py -f tex
