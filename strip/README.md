# Strip XSLT

This XSLT's job is to strip any attributes from the `<value />` elements, except for `concept` and `value`.

Files:
* input.xml shows an example input file.
* output.xml shows the expected output after running it to the XSLT. Note that the value attributes like `label`, `comment`, etc are removed.

Objectives:

* We need a strip.xslt file (XSLT1.0 if possible) that takes input.xml and filter.xml and outputs output.xml
* Please include an example command-line that demonstrates the transformation.
