all: pdfreactor prince vivliostyle

pdfreactor:
	pdfreactor -v -j index.html pdfreactor.pdf

prince: 
	prince -v --javascript index.html prince.pdf

vivliostyle: 
	vivliostyle-formatter index.html 

clean:
	find . -name \*.pdf -exec rm {} \;

git: clean all 
	git add *pdf
	git commit -m updated *pdf

push: 
	git push
