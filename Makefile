all: pdfreactor prince vivliostyle

pdfreactor:
	pdfreactor -v index.html index-pdfreactor.pdf

prince: 
	prince -v index.html index-prince.pdf

vivliostyle: 
	vivliostyle-formatter --output-file-name index-vivliostyle.pdf index.html 


clean:
	find . -name \*.pdf -exec rm {} \;

git: clean all 
	git add *pdf
	git commit -m updated *pdf
