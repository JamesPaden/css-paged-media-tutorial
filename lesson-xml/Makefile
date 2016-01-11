all: pdfreactor prince vivliostyle

pdfreactor:
	pdfreactor -s styles.css index.xml pdfreactor.pdf

prince: 
	prince -s styles.css  index.xml prince.pdf

vivliostyle: 
	vivliostyle-formatter index.xml 

clean:
	find . -name \*.pdf -exec rm {} \;

git: clean all 
	git add *pdf
	git commit -m updated *pdf
