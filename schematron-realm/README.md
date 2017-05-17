# Realm schematron

This Schematron's job is to validate the concepts and codes for each `<value />`  element in `input.xml`.

The values for these attributes can be found in the `realm.xml` file.

Files:

* realm.xml shows a mapping file with `concept` and `codelist` elements.
* input_ok.xml this file should pass the schematron validation
* input_error_unknown_code.xml this file should not pass validation (unknown code used)
* input_error_invalid_date_format this file should not pass validation (invalid date format when dataType=date)
* input_error_unknown_concept.xml this file should not pass validation (unknown concept used)


Objectives:

* We need an schematron file (XSLT1.0 if possible) that tests input.xml and realm.xml outputs schematron report
* The schematron error should say what section (type+id) and value.concept caused the error. It should display the concept.shortName in the error message. For example
	* Error: unknown code used for peri22-dataelement-82275 (hypertensieve_aandoening) in section "client" (id: 1). Code 999999 is unknown in codelist HypertensieveAandoening
	* Error: unknown concept used (peri22-dataelement-91919 used in section "client" (id: 1).
	* Error: invalid date value used peri22-dataelement-10040 (geboortedatum) used in section "client" (id: 1)
* Please include an example command-line that demonstrates the transformation.

