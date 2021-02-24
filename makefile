index.html: index.md pubs.html software.html
	pandoc $^ -o $@ --standalone --css=style.css

pubs.html: pubs.md
	pandoc --citeproc --csl=apa-cv.csl $^ -o $@ 

software.html: software.tex
	pandoc $< -o $@ 
