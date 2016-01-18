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
MacOS, Windows or Linux. The preferred converter for this tutorial is
PDFreactor (and PrinceXML).  Both converters are available for evaluation or
private purposes for free.  Antennahouse provides a special "CSS Edition" of
its Antennahouse Formatter software as well).  There is another tool called
PDFchip which also implements parts of the CSS Paged Media standard but it
lacks several feature besides the ridiculous high licence fees (so not an
option for us).

This tutorial also partly supports the Vivlostyle Formatter (www.vivliostyle.com).
For the moment it is unclear which parts of the CSS Paged Media standard are or
will be supported due to the beta status of the software and the lack of decent
documentation.

PDF converters in detail
------------------------

.. note::

   The opinions expressed under "Personal rating" are those of the maintainer
   of this project (Andreas Jung). The ratings are mostly based on personal
   experience, evaluation work and project work.

PDFreactor
++++++++++

* current version: 8
* Website: www.pdfreactor.com
* Sample documents: http://www.pdfreactor.com/samples/
* Pricing: 

  * 4 CPU server license: 2950 USD
  * personal non-commercial license: free

* Personal rating:

  * Excellent workhorse, very compliant and complete implementation of the CSS Paged Media standard
  * Extensive and good documentation (Javascript API could be better documented with examples)
  * Reasonable pricing 
  * Good and responsive support
  * PDFreactor is now premier choice in customer projects

PrinceXML
+++++++++

* current version: 10
* Website: www.princexml.com
* Sample documents: http://www.princexml.com/samples
* Pricing: 

  * 4 CPU server license:    3800 USD
  * academic server license: 1900 USD
  * personal desktop license: 495 USD

* Personal rating:

  * Similar quality and similar level of complicance as PDFreactor 
  * Still poor and unstructured documentation
  * Good and responsive support
  * A bit too expensive compared to PDFreactor
  * We used PrinceXML for many years before we discovered and switched to PDFreactor

Vivliostyle Formatter
+++++++++++++++++++++

* current version: unreleased/beta
* Website: www.vivliostyle.com
* Samples: http://www.vivliostyle.com/en/sample/
* Pricing: unknown so far

* Personal rating:

  * Not much can be said to this beta-quality software
  * Detailed documentation missing so far
  * Vivliostyle may become a game changer and perhaps "the next big thing" in publishing
  * Vivliostyle does not claim being (fully) CSS Paged Media compliant. Instead it seems
    to push vendors and the W3C publishing groups for getting forward with the standardization
    of various features (e.g. shapes)
  * Absolutely worthy keeping an eye on Vivliostyle
  * The success of Vivliostyle will depend on threethings: 
    
    * reasonable pricing, 
    * friendly license conditions
    * documentation, documentation, documentation


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

* Personal rating:

  * Perhaps the formatter with the best quality and typographical features
    (in fact it is based on their own XSL-FO converter Antennahouse V 6.2)
  * high price

pdfChip 
+++++++

* current version. 1.1
* Website: https://www.callassoftware.com/en/products/pdfchip
* Pricing: the various pdfChip versions are artificially limited (you pay
  for document volume and usage):

  * pdfChip S (1000 pages per hour, 25 pages per document, barcode support limited): 5.000 EUR                               $
  * pdfChip M (5000 pages per hour, 250 pages per document): 10.000 EUR
  * pdfChip L (25000 pages per hour, 1500 pages per document): 15.000 EUR
  * pdfChip XL/Enterprise (unlimited):  25.000 EUR

* Personal rating:

  * pdfChip does not claim to implement (the whole) CSS Paged Media standard.
    Instead they rely on the Webkit browser engine and implement a lot of
    features using the -webkit CSS prefix
  * An absurd pricing policy that is hard to beat. Entry level costs 5.000 EUR and is
    is crippled down to 25 pages per document. What the fuck...this is ripping of
    customers.
  * We evaluated pdfChip several times and there is not much that we could not
    do with PrinceXML or PDFreactor. It seems that pdfChip provides a better
    support for Javascript libraries since it is based on the Webkit engine while
    PDFreactor or PrinceXML implement their own rendering engine.
  * In my opinion not worth a single EUR...PDFreactor or PrinceXML are in general
    the better option (you get PDFreactor for less than 3000 USD without any
    limitation compared to a castrated pdfChip version (limited to #pages per document
    and # documents per hour)
  * pdfChip appears like a completely overpriced barcode generator

Weasyprint
++++++++++

* current version: 0.24
* Website: www.weasyprint.org
* Pricing:

  * free, open-source

* Personal rating:

  * Free alternative with a PDF rendering quality that is average.
  * Weasyprint only implements a subset of the CSS Paged Media standard
  * Various error found during evaluation.
  * If you need a cheap and average PDF engine then Weasyprint might be
    an option. Don't use it for professional enterprise projects. Tinkering
    with bugs and limitations costs more time, money and nerves than investing
    some money for PDFreactor or PrinceXML.

Docraptor
+++++++++

* Cloud-based conversion service running on top of PrinceXML
* Website: https://docraptor.com/
* Samples: https://docraptor.com/samples
* Pricing: https://docraptor.com/signup

* Personal rating:

  * Same PDF quality as PrinceXML, but DocRaptor does offer better JavaScript parsing on top of the PrinceXML engine
  * Using DocRaptor requires sending your document to a third-party, but they can delete it immediately upon processing
  * Pricing is based on conversion volume and appears reasonable. Not sure
    when a self-hosted version of some other professional converter is cheaper
    and the better option in the long run).

RenderX Cloudformatter
++++++++++++++++++++++

* Cloud-based conversion service
* Website: http://www.renderx.com/tools/cloudformatter.html
* Status: unknown (website partly dysfunctional)

* Personal rating:

  * No experience


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
- Book `Print CSS. Das CSS paged media Modul" <http://www.pagina-online.de/unternehmen/publikationen/printcss/>`_ (German)


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

Author
------

| Andreas Jung
| info@zopyx.com
| @MacYET on Twitter
| www.zopyx.com
| www.produce-and-publish.com
| www.xml-director.info
