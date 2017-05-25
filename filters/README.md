# Filter XSLT

This XSLT's job is to filter values and sections from `input.xml` based on a second `filter.xml` file.

Files:

* input.xml shows an example input file.
* filter.xml shows an example white-list filter file, that describes which values are allowed by section_type and concept.
* output.xml shows the expected output.
  * Note: it does not include any values that have not been 'allowed' in the filter.
  * Note: the file does not include empty section elements. If there are no values, it removes the whole section.

Objectives:

* We need a filter.xslt file (XSLT1.0 if possible) that takes input.xml and filter.xml and produces output.xml
* Please include an example command-line that demonstrates the transformation.

Usage:

    xsltproc filters.xslt --stringparam filter filter.xml input.xml
