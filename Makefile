all: summons.css summons-wf.css

summons.css: summons.less
	lessc summons.less > summons.css

summons-wf.css: summons-wf.less summons.less
	lessc summons-wf.less > summons-wf.css

.PHONY:
clean:
	rm -f summons.css summons-wf.css
