PANDOC=pandoc $< -o $@ -t html5 --standalone --smart

all: example-summons.html example-normalize.html example-plain.html example-wf.html

example-summons.html: example.md summons.css
	$(PANDOC) --css summons.css

example-normalize.html: example.md summons.css
	$(PANDOC) --css normalize.css

example-plain.html: example.md summons.css
	$(PANDOC)

example-wf.html: example.md summons-wf.css
	$(PANDOC) --css summons-wf.css

summons.css: summons.less
	lessc summons.less > summons.css

summons-wf.css: summons-wf.less
	lessc summons-wf.less > summons-wf.css

.PHONY:
clean:
	rm -f example-*.html summons.css summons-wf.css
