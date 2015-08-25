PANDOC=pandoc $< -o $@ -t html5 --standalone --smart

all: example-summons.html example-normalize.html example-plain.html
	
example-summons.html: example.md summons.css
	$(PANDOC) --css summons.css

example-normalize.html: example.md summons.css
	$(PANDOC) --css normalize.css

example-plain.html: example.md summons.css
	$(PANDOC) --css summons.css

summons.css: summons.less
	lessc summons.less > summons.css

.PHONY:
clean:
	rm -f example-*.html summons.css
