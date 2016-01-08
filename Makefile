all: pdfreactor prince vivliostyle

pdfreactor:
	pdfreactor -v index.html index-pdfreactor.pdf

prince: 
	prince -v index.html index-prince.pdf

vivliostyle: 
	vivliostyle-formatter index.html index.pdf

