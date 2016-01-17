Introduction
=====================

This tutorial shows how to generate PDF documents from XML/HTML
using the "CSS Paged Media" approach where the complete styling
and layout information is keep in cascading stylessheets (CSS).
In addition we show what different tools produce with identical data.
This gives an impression on functionality and output quality.

What is CSS Paged Media
-----------------------

Short version: CSS Paged Media (a W3C standard) is a way to generate
PDF documents from XML/HTML as input and CSS for styling. Consider it as
an extension for CSS for print purposes. So it is obvious that CSS Paged Media
must deal with print aspects like pagination, page formats, page regions or 
other print specific aspects.

Usecases for CSS Paged Media
----------------------------

- text-oriented publications (books, newspapers, documentation etc.).
- layout-oriented publictions (flyers, brochures, web-to-print applications)
- technical documentation 
- etc.

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

Tools
-----

There are various CSS Paged Media converters on the market. However we focus on
some tools that are widely used and the ones that provide a reasonable quality
for professional use. Another (personal) requirement is also that tools should
work cross-platform on multiple operating systems (Mac OSX, Linux, Windows).
Tests do not include tools that only work on a single operating system or
platform for inclusion as a library.

This tutorial and shortcut covers and compares the following four tools:

- PDFreactor 7/8
- PrinceXML 9/10
- Antennahouse 6.2 CSS formatter 
- Vivliostyle Formatter

This tutorial does not cover and installation issues. Please refer to
the vendor documentation. All tools are available for free for the purpose
of evaluation. Depending on the converter the generated PDF documents will
contain a watermark or a vendor specific message or icon.

Basic converter usage
---------------------

PDFreactor
++++++++++

.. code-block:: shell

  > prince index.html index.pdf

PrinceXML
+++++++++

.. code-block:: shell

  > pdfreactor index.html index.pdf

Vivliostyle Formatter
+++++++++++++++++++++

.. code-block:: shell

  > vivliostyle-formatter index.html


Antennahouse CSS Formatter
++++++++++++++++++++++++++

.. code-block:: shell

  > run.sh -d index.html  -o out.pdf

The core examples work both with ```pdfreactor`` and ``prince```. Ensure that
the related binary/binaries are configured in the ``$PATH`` of your shell environment.

Each of ``lesson-...`` directory contains a ``Makefile`` that can be used in the same
across all lessons for generating a PDF with one of the mentioned converters::

    > make pdfreactor -> generates pdfreactor.pdf as output
    > make prince -> generates prince.pdf as output
    > make vivliostyle -> generates vivliostyle-formatter.pdf as output
    > make antennahouse -> generates antennahouse.pdf as output


Source code
-----------

- https://github.com/zopyx/css-paged-media-tutorial

Bugtracker
-----------

- https://github.com/zopyx/css-paged-media-tutorial/issues

