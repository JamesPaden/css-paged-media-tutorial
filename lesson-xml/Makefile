all: pdfreactor prince vivliostyle antennahouse

pdfreactor:
	pdfreactor -s styles.css index.xml pdfreactor.pdf

prince: 
	prince -s styles.css  index.xml prince.pdf

vivliostyle: 
	vivliostyle-formatter index.xml 

antennahouse: 
	vivliostyle-formatter -d index.xml -o antennahouse.pdf

clean:
	find . -name \*.pdf -exec rm {} \;

git: clean all 
	git add *pdf
	git commit -m updated *pdf
