# Augment Realm XSLT

This XSLT's job is to add new attributes to each `<value />`  element in `input.xml` based on the `concept` attribute.

The values for these attributes can be found in the `realm.xml` file.

Files:

* input.xml shows an example input file.
* realm.xml shows a mapping file with `concept` and `codelist` elements.
* output.xml shows the expected output.
  * Note: it adds `dataType`, `shortName`, `label` and `conceptId` to all `value` elements.
  * Note: it adds `code` (copy of value), `codeSystem` and `displayName` attributes to `value` elements where dataType = `code` (specifically `peri22-dataelement-20305`)
  * Note: the `displayValue` and `label` attributes are language specific. These are resolved from the `property` elements based on their `language` attribute. Allow to pass a parameter for the preferred language. If no property exists for the requested language, it's ok to leave the attributes (displayName and/or label) empty.

Objectives:

* We need an augment-realm.xslt file (XSLT1.0 if possible) that takes input.xml and realm.xml and produces output.xml
* Please include an example command-line that demonstrates the transformation.
