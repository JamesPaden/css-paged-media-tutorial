Tutorial CSS Paged Media
========================

This tutorial shows how to generate PDF documents from XML/HTML
using the "CSS Paged Media" approach where the complete styling
and layout information is keep in cascading stylessheets (CSS).

Software
--------

The tutorial is based on external converters like 

* PDFreactor 7 (www.pdfreactor.com)

or

* PrinceXML 10 (www.princexml.com)

The external converters are available for all decent operating systems like
MacOS, Windows or Linux. The preferred converter for this tool is PDFreactor.
Both converters are available for evaluation or private purposes for free.
Antennahouse provides a special "CSS Edition" of its Antennahouse Formatter
software as well - however we do not have much experience with this version (in
addition to the much higher license fees).


Basic converter usage
---------------------

.. code-block::

    > prince index.html index.pdf
    > pdfreactor index.html index.pdf


Structure of the tutorial
-------------------------

Lesson 1
++++++++

In the first lesson you will learn

- the basic usage of the converter tools
- how to set the PDF page size
- to apply basic styles and CSS formatting options


Lession `Guideline`
+++++++++++++++++++

In this advanced lesson we will use a real-world document
(a medical guideline with several chapters, tables and images)
for live coding. We will use the content to show you 

- pagination
- page break rules
- counters
- running tables
- image formatting


Author
------

| Andreas Jung
| info@zopyx.com
| @MacYET on Twitter
| www.zopyx.com
| www.produce-and-publish.com
| www.xml-director.info
