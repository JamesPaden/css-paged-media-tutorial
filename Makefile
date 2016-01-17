all: pdfreactor prince vivliostyle antennahouse

pdfreactor:
	pdfreactor -v -j index.html pdfreactor.pdf

prince: 
	prince -v --javascript index.html prince.pdf

vivliostyle: 
	vivliostyle-formatter index.html 

antennahouse:
	run.sh -d  index.html -o antennahouse.pdf

clean:
	find . -name \*.pdf -exec rm {} \;

git: clean all 
	git add *pdf
	git commit -m updated *pdf

push: 
	git push


docs: FORCE
	git pull
	virtualenv-2.7 .
	bin/pip install sphinx sphinx-bootstrap-theme ninja sphinxcontrib-googleanalytics
	cd docs; make html
	cp -av docs/build/html/* /var/www/print-css.rocks

FORCE:
