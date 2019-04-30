************
Introduction
************

This is a simple test file that includes all the features of sphinx and its
extensions that we plan to use for the third edition of the
`Computer Networking: Principles, Protocols and Pratice <https://www.computer-networking.info>`_ ebook. It is designed to test the ability to automatically
build the ebook by using `travis <https://travis-ci.org>`_ and translate it by using `transifex <https://www.transifex.com/>`_.

Each of the files contains a different feature of `sphinx <http://www.sphinx-doc.org>`_.

This document is divided in sections. We apply the `Python’s Style Guide for documenting <https://docs.python.org/devguide/documenting.html#style-guide>`_, i.e. :

  - ``#`` with overline, for parts
  - ``*`` with overline, for chapters
  - ``=``, for sections
  - ``,`` for subsections
  - ``^``, for subsubsections
  - ``"``, for paragraphs

A section
=========
    

A subsection
,,,,,,,,,,,,


A subsubsection

^^^^^^^^^^^^^^^



Citing references
=================

References are included in the Bibliography which is an appendix to this document.
The references must be cited, otherwise sphinx will complain.
Here are the references included in the sample bibliography: [IEEE802.11]_ [AS2004]_ [B1989]_ and [Baran]_.
Whenever possible, we provide a URL that points to the cited document.
If a stable URL such as a DOI exist, we prefer to use it instead of a non-permanent URL that may be easier to access.
If readers have difficulties to access some of the cited documents, they can consult specialised search engines such as `https://scholar.google.com <https://scholar.google.com>`_
Request for Comments (RFCs) should not be cited by using :rfc:`20` because sphinx does not automatically add them to the bibliography.
They should be cited as [RFC20]_ and placed in the bibliography in alphabetical order.

We should agree on a specific format to encode the references.
Some different formarts were used in the second edition of the ebook.


