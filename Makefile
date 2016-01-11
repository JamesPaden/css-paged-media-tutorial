all: pdfreactor prince vivliostyle

pdfreactor:
	pdfreactor -v index.html pdfreactor.pdf

prince: 
	prince -v index.html prince.pdf

vivliostyle: 
	vivliostyle-formatter index.html 

