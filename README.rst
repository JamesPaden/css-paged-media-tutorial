Tutorial CSS Paged Media
========================

This tutorial shows how to generate PDF documents from XML/HTML
using the "CSS Paged Media" approach where the complete styling
and layout information is keep in cascading stylessheets (CSS).


What is CSS Paged Media
-----------------------

Short version: CSS Paged Media (a W3C standard) is a way to generate
PDF documents from XML/HTML as input and CSS for styling. Consider it as
an extension for CSS for print purposes. So it is obvious that CSS Paged Media
must deal with print aspects like pagination, page formats, page regions or 
other print specific aspects.

Status of this tutorial
-----------------------

This tutorial is work-in-progress and based on the "CSS Paged Media"
workshop given for the first time at the XML London 2015 conference.
The tutorial is split into various aspects of CSS Paged Media and usually
contains a sample ``index.html`` with example data suitable for the purpose
of a particiular lesson and a ``styles.css`` file holding the specific
print styles. The styles are kept as simple as impossible in order to demonstrate
the functionality. Nice layout options are being omitted for the sake keeping
everything as simple as possible.

Author of this tutorial
-----------------------

See http://about.me/andreasjung or https://www.zopyx.com/company/team-and-partners/andreas-jung

Software
--------

The tutorial is based on external converters like 

* PDFreactor 7 or 8 (www.pdfreactor.com)

or

* PrinceXML 9 or 10 (www.princexml.com)

The external converters are available for all decent operating systems like
MacOS, Windows or Linux. The preferred converter for this tutorial is PDFreactor (and PrinceXML).
Both converters are available for evaluation or private purposes for free.
Antennahouse provides a special "CSS Edition" of its Antennahouse Formatter
software as well - however we do not have much experience with this version (in
addition to the much higher license fees). There is another tool called PDFchip
which also implements parts of the CSS Paged Media standard but it lacks several
feature besides the ridiculous high licence fees (so not an option for us).

This tutorial also partly supports the Vivlostyle Formatter (www.vivliostyle.com).
For the moment it is unclear which parts of the CSS Paged Media standard are or
will be supported due to the beta status of the software and the lack of decent
documentation.

PDF converters in detail
------------------------

PDFreactor
++++++++++

* current version: 8
* Website: www.pdfreactor.com
* Pricing: 

  * 4 CPU server license: 2950 USD
  * personal non-commercial license: free

Prince
++++++

* current version: 10
* Website: www.princexml.com
* Pricing: 

  * 4 CPU server license:    3800 USD
  * academic server license: 1900 USD
  * personal desktop license: 495 USD


Vivliostyle Formatter
+++++++++++++++++++++

* current version: unreleased/beta
* Website: www.vivliostyle.com
* Pricing: unknown so far


Antennahouse CSS Formatter
++++++++++++++++++++++++++

* current version: 6.2
* Website: www.antennahouse.com
* Pricing:

  * Server license with one CPU: 5000 USD
  * each additional CPU: 4000 USD 
  * Standalone license: 1250 USD
  * SVG option: 2000 USD
  * MathML option: 500 USD
  * Barcode option: 1500 USD


Weasyprint
++++++++++

* current version: 0.24
* Website: www.weasyprint.org
* Princing:

  * free, open-source


Basic converter usage
---------------------

.. code-block::

    > prince index.html index.pdf
    > pdfreactor index.html index.pdf

The core examples work both with ```pdfreactor`` and ``prince```. Ensure that
the related binary/binaries are configured in the ``$PATH`` of your shell environment.

Each of ``lesson-...`` directory contains a ``Makefile`` that can be used in the same
across all lessons for generating a PDF with PDFreactor or PrinceXML::

    > make pdfreactor -> generates pdfreactor.pdf as output
    > make prince -> generates prince.pdf as output
    > make vivliostyle -> generates vivliostyle-formatter.pdf as output


Supplementary material
----------------------

- https://www.youtube.com/watch?v=H-5_b9m3p1k
- http://de.slideshare.net/ajung/css-paged-media-a-review-of-tools-and-techniques
- Book **"Print CSS. Das CSS paged media Modul"** (German only): http://www.pagina-online.de/unternehmen/publikationen/printcss/


Compatibility matrix
====================

============================   ==========     =========   ===========
Lesson                         PDFreactor     PrinceXML   Vivliostyle 
============================   ==========     =========   ===========
lesson-basic                       Y             Y             Y
lesson-chapter-numbering           Y             Y             N 
lesson-css-transformations         Y             Y             N
lesson-fonts                       Y             Y             Y
lesson-footnotes                   Y             Y             N
lesson-hyphenation                 Y             Y             N
lesson-images                      Y             Y             Y
lesson-multi-columns               Y             Y             N
lesson-page-areas                  Y             Y             Y
lesson-page-numbers                Y             Y             N
lesson-pagination                  Y             Y             Y
lesson-positioning                 Y             Y             Y
lesson-right-to-left               Y             Y             Y
lesson-running-elements            Y             Y             N
lesson-tables                      Y             Y             N
lesson-xml                         Y             Y             N
lesson-char-js                     Y             N             N
lesson-flotr2-js                   Y             N             N
lesson-guideline                   Y            Y/N           Y/N
============================   ==========     =========   ===========

**Y** = Yes, renders as expected without errors
**N** = No, does not render properly
**Y/N** = Renders partly as expected 

Structure of the tutorial
-------------------------

Lesson Basic
++++++++++++

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
