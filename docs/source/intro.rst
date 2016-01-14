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
- `Print CSS. Das CSS paged media Modul <http://www.pagina-online.de/unternehmen/publikationen/printcss />`_ (German only)

Source code
-----------

- https://github.com/zopyx/css-paged-media-tutorial

Bugtracker
-----------

- https://github.com/zopyx/css-paged-media-tutorial/issues

Author
------
Andreas Jung is an expert in electronic publishing with more 20 years of professional
experience in publishing projects.


| Andreas Jung
| info@zopyx.com
| @MacYET on Twitter
| https://www.zopyx.com
| https://about.me/andreasjung 
| https://www.zopyx.com/company/team-and-partners/andreas-jung
| https://www.produce-and-publish.com
| https://www.xml-director.info
