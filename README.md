LaTeX Templates for Scientific Writing
======================================

Configure your document's directory
-----------------------------------

Before the initial build you will need to configure the name of the master
document and the LaTeX class you want to use (in that specific order).

To configure the master document name you should edit the `Makefile` and change
the value of `DNAME` variable (default is 'main') to the name of your choice.
Use a short descriptive filename which could identify your document.

To select the LaTeX class, you must run the `make` command setting the `CLASS`
environment variable to one of the available package template(s). Example::

	$ make CLASS=llncs

The previous command configures your LaTeX document to use the `llncs` class
(i.e., The Springer: Lecture Notes in Computer Science).

NOTE: You will only need to set the `CLASS` environment variable the first time
you run the `make` command. That initail build execution will create the master
document file (i.e., 'yourname.tex').  If you want to reconfigure your system,
simply delete the master document file (WARNING: all changes in this file will
be lost).

Building your document
----------------------

To build (or re-build) your document simply execute `make`::

	$ make


