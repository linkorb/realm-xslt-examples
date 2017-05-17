#!/bin/bash

xsltproc realm2schematron.xslt realm.xml  > realm.sch
xsltproc iso_dsdl_include.xsl realm.sch > step1.xsl
xsltproc iso_abstract_expand.xsl step1.xsl > step2.xsl
xsltproc iso_svrl_for_xslt1.xsl step2.xsl > realm-schematron.xsl
