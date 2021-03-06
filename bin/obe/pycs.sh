#!/bin/bash
# pflint Thu 22 Jan 2015 11:52:41 AM EST   
# Bull In China Shop approach to content.xml
#
#
# Output the header stuff
#debug spause
# packs expect and sends it out...
# 
# From this line to EOF is the code to export
# note slash escapes (\\)
read -d '' header <<"EOF"
C Begin Document - Begin Header
(office:document-content
Axmlns:office urn:oasis:names:tc:opendocument:xmlns:office:1.0
Axmlns:style urn:oasis:names:tc:opendocument:xmlns:style:1.0
Axmlns:text urn:oasis:names:tc:opendocument:xmlns:text:1.0
Axmlns:table urn:oasis:names:tc:opendocument:xmlns:table:1.0
Axmlns:draw urn:oasis:names:tc:opendocument:xmlns:drawing:1.0
Axmlns:fo urn:oasis:names:tc:opendocument:xmlns:xsl-fo-compatible:1.0
Axmlns:xlink http://www.w3.org/1999/xlink
Axmlns:dc http://purl.org/dc/elements/1.1/
Axmlns:meta urn:oasis:names:tc:opendocument:xmlns:meta:1.0
Axmlns:number urn:oasis:names:tc:opendocument:xmlns:datastyle:1.0
Axmlns:svg urn:oasis:names:tc:opendocument:xmlns:svg-compatible:1.0
Axmlns:chart urn:oasis:names:tc:opendocument:xmlns:chart:1.0
Axmlns:dr3d urn:oasis:names:tc:opendocument:xmlns:dr3d:1.0
Axmlns:math http://www.w3.org/1998/Math/MathML
Axmlns:form urn:oasis:names:tc:opendocument:xmlns:form:1.0
Axmlns:script urn:oasis:names:tc:opendocument:xmlns:script:1.0
Axmlns:ooo http://openoffice.org/2004/office
Axmlns:ooow http://openoffice.org/2004/writer
Axmlns:oooc http://openoffice.org/2004/calc
Axmlns:dom http://www.w3.org/2001/xml-events
Axmlns:xforms http://www.w3.org/2002/xforms
Axmlns:xsd http://www.w3.org/2001/XMLSchema
Axmlns:xsi http://www.w3.org/2001/XMLSchema-instance
Axmlns:rpt http://openoffice.org/2005/report
Axmlns:of urn:oasis:names:tc:opendocument:xmlns:of:1.2
Axmlns:xhtml http://www.w3.org/1999/xhtml
Axmlns:grddl http://www.w3.org/2003/g/data-view#
Axmlns:officeooo http://openoffice.org/2009/office
Axmlns:tableooo http://openoffice.org/2009/table
Axmlns:drawooo http://openoffice.org/2010/draw
Axmlns:calcext urn:org:documentfoundation:names:experimental:calc:xmlns:calcext:1.0
Axmlns:loext urn:org:documentfoundation:names:experimental:office:xmlns:loext:1.0
Axmlns:field urn:openoffice:names:experimental:ooo-ms-interop:xmlns:field:1.0
Axmlns:formx urn:openoffice:names:experimental:ooxml-odf-interop:xmlns:form:1.0
Axmlns:css3t http://www.w3.org/TR/css3-text/
Aoffice:version 1.2
(office:scripts
)office:scripts
(office:font-face-decls
(style:font-face
Asvg:font-family FreeSans
Astyle:font-family-generic swiss
Astyle:name FreeSans1
)style:font-face
(style:font-face
Asvg:font-family 'Liberation Serif'
Astyle:font-family-generic roman
Astyle:font-pitch variable
Astyle:name Liberation Serif
)style:font-face
(style:font-face
Asvg:font-family 'Times New Roman'
Astyle:font-family-generic roman
Astyle:font-pitch variable
Astyle:name Times New Roman
)style:font-face
(style:font-face
Asvg:font-family Arial
Astyle:font-family-generic swiss
Astyle:font-pitch variable
Astyle:name Arial
)style:font-face
(style:font-face
Asvg:font-family 'Droid Sans Fallback'
Astyle:font-family-generic system
Astyle:font-pitch variable
Astyle:name Droid Sans Fallback
)style:font-face
(style:font-face
Asvg:font-family FreeSans
Astyle:font-family-generic system
Astyle:font-pitch variable
Astyle:name FreeSans
)style:font-face
)office:font-face-decls
(office:automatic-styles
(style:style
Astyle:family paragraph
Astyle:list-style-name L3
Astyle:name P1
Astyle:parent-style-name Heading_20_2
(style:text-properties
Aofficeooo:paragraph-rsid 00176519
)style:text-properties
)style:style
(style:style
Astyle:family paragraph
Astyle:list-style-name L3
Astyle:name P2
Astyle:parent-style-name Heading_20_2
(style:text-properties
Aofficeooo:paragraph-rsid 00176519
Aofficeooo:rsid 00176519
)style:text-properties
)style:style
(style:style
Astyle:family paragraph
Astyle:list-style-name L3
Astyle:name P3
Astyle:parent-style-name Heading_20_2
(style:paragraph-properties
Astyle:auto-text-indent false
Afo:margin-left 0.5in
Afo:margin-right 0in
Afo:text-indent -0.25in
)style:paragraph-properties
(style:text-properties
Aofficeooo:paragraph-rsid 00176519
Aofficeooo:rsid 00176519
)style:text-properties
)style:style
(style:style
Astyle:family text
Astyle:name T1
(style:text-properties
Aofficeooo:rsid 00176519
)style:text-properties
)style:style
(text:list-style
Astyle:name L1
(text:list-level-style-number
Atext:level 1
Astyle:num-format 1
Astyle:num-suffix .
Atext:style-name Numbering_20_Symbols
(style:list-level-properties
Atext:list-level-position-and-space-mode label-alignment
(style:list-level-label-alignment
Atext:label-followed-by listtab
Atext:list-tab-stop-position 0.5in
Afo:margin-left 0.5in
Afo:text-indent -0.25in
)style:list-level-label-alignment
)style:list-level-properties
)text:list-level-style-number
(text:list-level-style-number
Atext:level 2
Astyle:num-format 1
Astyle:num-suffix .
Atext:style-name Numbering_20_Symbols
(style:list-level-properties
Atext:list-level-position-and-space-mode label-alignment
(style:list-level-label-alignment
Atext:label-followed-by listtab
Atext:list-tab-stop-position 0.75in
Afo:margin-left 0.75in
Afo:text-indent -0.25in
)style:list-level-label-alignment
)style:list-level-properties
)text:list-level-style-number
(text:list-level-style-number
Atext:level 3
Astyle:num-format 1
Astyle:num-suffix .
Atext:style-name Numbering_20_Symbols
(style:list-level-properties
Atext:list-level-position-and-space-mode label-alignment
(style:list-level-label-alignment
Atext:label-followed-by listtab
Atext:list-tab-stop-position 1in
Afo:margin-left 1in
Afo:text-indent -0.25in
)style:list-level-label-alignment
)style:list-level-properties
)text:list-level-style-number
(text:list-level-style-number
Atext:level 4
Astyle:num-format 1
Astyle:num-suffix .
Atext:style-name Numbering_20_Symbols
(style:list-level-properties
Atext:list-level-position-and-space-mode label-alignment
(style:list-level-label-alignment
Atext:label-followed-by listtab
Atext:list-tab-stop-position 1.25in
Afo:margin-left 1.25in
Afo:text-indent -0.25in
)style:list-level-label-alignment
)style:list-level-properties
)text:list-level-style-number
(text:list-level-style-number
Atext:level 5
Astyle:num-format 1
Astyle:num-suffix .
Atext:style-name Numbering_20_Symbols
(style:list-level-properties
Atext:list-level-position-and-space-mode label-alignment
(style:list-level-label-alignment
Atext:label-followed-by listtab
Atext:list-tab-stop-position 1.5in
Afo:margin-left 1.5in
Afo:text-indent -0.25in
)style:list-level-label-alignment
)style:list-level-properties
)text:list-level-style-number
(text:list-level-style-number
Atext:level 6
Astyle:num-format 1
Astyle:num-suffix .
Atext:style-name Numbering_20_Symbols
(style:list-level-properties
Atext:list-level-position-and-space-mode label-alignment
(style:list-level-label-alignment
Atext:label-followed-by listtab
Atext:list-tab-stop-position 1.75in
Afo:margin-left 1.75in
Afo:text-indent -0.25in
)style:list-level-label-alignment
)style:list-level-properties
)text:list-level-style-number
(text:list-level-style-number
Atext:level 7
Astyle:num-format 1
Astyle:num-suffix .
Atext:style-name Numbering_20_Symbols
(style:list-level-properties
Atext:list-level-position-and-space-mode label-alignment
(style:list-level-label-alignment
Atext:label-followed-by listtab
Atext:list-tab-stop-position 2in
Afo:margin-left 2in
Afo:text-indent -0.25in
)style:list-level-label-alignment
)style:list-level-properties
)text:list-level-style-number
(text:list-level-style-number
Atext:level 8
Astyle:num-format 1
Astyle:num-suffix .
Atext:style-name Numbering_20_Symbols
(style:list-level-properties
Atext:list-level-position-and-space-mode label-alignment
(style:list-level-label-alignment
Atext:label-followed-by listtab
Atext:list-tab-stop-position 2.25in
Afo:margin-left 2.25in
Afo:text-indent -0.25in
)style:list-level-label-alignment
)style:list-level-properties
)text:list-level-style-number
(text:list-level-style-number
Atext:level 9
Astyle:num-format 1
Astyle:num-suffix .
Atext:style-name Numbering_20_Symbols
(style:list-level-properties
Atext:list-level-position-and-space-mode label-alignment
(style:list-level-label-alignment
Atext:label-followed-by listtab
Atext:list-tab-stop-position 2.5in
Afo:margin-left 2.5in
Afo:text-indent -0.25in
)style:list-level-label-alignment
)style:list-level-properties
)text:list-level-style-number
(text:list-level-style-number
Atext:level 10
Astyle:num-format 1
Astyle:num-suffix .
Atext:style-name Numbering_20_Symbols
(style:list-level-properties
Atext:list-level-position-and-space-mode label-alignment
(style:list-level-label-alignment
Atext:label-followed-by listtab
Atext:list-tab-stop-position 2.75in
Afo:margin-left 2.75in
Afo:text-indent -0.25in
)style:list-level-label-alignment
)style:list-level-properties
)text:list-level-style-number
)text:list-style
(text:list-style
Astyle:name L2
(text:list-level-style-number
Atext:level 1
Astyle:num-format 1
Astyle:num-suffix .
Atext:style-name Numbering_20_Symbols
(style:list-level-properties
Atext:list-level-position-and-space-mode label-alignment
(style:list-level-label-alignment
Atext:label-followed-by listtab
Atext:list-tab-stop-position 0.5in
Afo:margin-left 0.5in
Afo:text-indent -0.25in
)style:list-level-label-alignment
)style:list-level-properties
)text:list-level-style-number
(text:list-level-style-number
Atext:level 2
Astyle:num-format 1
Astyle:num-suffix .
Atext:style-name Numbering_20_Symbols
(style:list-level-properties
Atext:list-level-position-and-space-mode label-alignment
(style:list-level-label-alignment
Atext:label-followed-by listtab
Atext:list-tab-stop-position 0.75in
Afo:margin-left 0.75in
Afo:text-indent -0.25in
)style:list-level-label-alignment
)style:list-level-properties
)text:list-level-style-number
(text:list-level-style-number
Atext:level 3
Astyle:num-format 1
Astyle:num-suffix .
Atext:style-name Numbering_20_Symbols
(style:list-level-properties
Atext:list-level-position-and-space-mode label-alignment
(style:list-level-label-alignment
Atext:label-followed-by listtab
Atext:list-tab-stop-position 1in
Afo:margin-left 1in
Afo:text-indent -0.25in
)style:list-level-label-alignment
)style:list-level-properties
)text:list-level-style-number
(text:list-level-style-number
Atext:level 4
Astyle:num-format 1
Astyle:num-suffix .
Atext:style-name Numbering_20_Symbols
(style:list-level-properties
Atext:list-level-position-and-space-mode label-alignment
(style:list-level-label-alignment
Atext:label-followed-by listtab
Atext:list-tab-stop-position 1.25in
Afo:margin-left 1.25in
Afo:text-indent -0.25in
)style:list-level-label-alignment
)style:list-level-properties
)text:list-level-style-number
(text:list-level-style-number
Atext:level 5
Astyle:num-format 1
Astyle:num-suffix .
Atext:style-name Numbering_20_Symbols
(style:list-level-properties
Atext:list-level-position-and-space-mode label-alignment
(style:list-level-label-alignment
Atext:label-followed-by listtab
Atext:list-tab-stop-position 1.5in
Afo:margin-left 1.5in
Afo:text-indent -0.25in
)style:list-level-label-alignment
)style:list-level-properties
)text:list-level-style-number
(text:list-level-style-number
Atext:level 6
Astyle:num-format 1
Astyle:num-suffix .
Atext:style-name Numbering_20_Symbols
(style:list-level-properties
Atext:list-level-position-and-space-mode label-alignment
(style:list-level-label-alignment
Atext:label-followed-by listtab
Atext:list-tab-stop-position 1.75in
Afo:margin-left 1.75in
Afo:text-indent -0.25in
)style:list-level-label-alignment
)style:list-level-properties
)text:list-level-style-number
(text:list-level-style-number
Atext:level 7
Astyle:num-format 1
Astyle:num-suffix .
Atext:style-name Numbering_20_Symbols
(style:list-level-properties
Atext:list-level-position-and-space-mode label-alignment
(style:list-level-label-alignment
Atext:label-followed-by listtab
Atext:list-tab-stop-position 2in
Afo:margin-left 2in
Afo:text-indent -0.25in
)style:list-level-label-alignment
)style:list-level-properties
)text:list-level-style-number
(text:list-level-style-number
Atext:level 8
Astyle:num-format 1
Astyle:num-suffix .
Atext:style-name Numbering_20_Symbols
(style:list-level-properties
Atext:list-level-position-and-space-mode label-alignment
(style:list-level-label-alignment
Atext:label-followed-by listtab
Atext:list-tab-stop-position 2.25in
Afo:margin-left 2.25in
Afo:text-indent -0.25in
)style:list-level-label-alignment
)style:list-level-properties
)text:list-level-style-number
(text:list-level-style-number
Atext:level 9
Astyle:num-format 1
Astyle:num-suffix .
Atext:style-name Numbering_20_Symbols
(style:list-level-properties
Atext:list-level-position-and-space-mode label-alignment
(style:list-level-label-alignment
Atext:label-followed-by listtab
Atext:list-tab-stop-position 2.5in
Afo:margin-left 2.5in
Afo:text-indent -0.25in
)style:list-level-label-alignment
)style:list-level-properties
)text:list-level-style-number
(text:list-level-style-number
Atext:level 10
Astyle:num-format 1
Astyle:num-suffix .
Atext:style-name Numbering_20_Symbols
(style:list-level-properties
Atext:list-level-position-and-space-mode label-alignment
(style:list-level-label-alignment
Atext:label-followed-by listtab
Atext:list-tab-stop-position 2.75in
Afo:margin-left 2.75in
Afo:text-indent -0.25in
)style:list-level-label-alignment
)style:list-level-properties
)text:list-level-style-number
)text:list-style
(text:list-style
Astyle:name L3
(text:list-level-style-number
Atext:level 1
Astyle:num-format 1
Astyle:num-prefix  
Astyle:num-suffix  
(style:list-level-properties
Atext:list-level-position-and-space-mode label-alignment
(style:list-level-label-alignment
Atext:label-followed-by listtab
Atext:list-tab-stop-position 0.5in
Afo:margin-left 0.5in
Afo:text-indent -0.25in
)style:list-level-label-alignment
)style:list-level-properties
)text:list-level-style-number
(text:list-level-style-number
Atext:display-levels 2
Atext:level 2
Astyle:num-format 1
Astyle:num-prefix  
Astyle:num-suffix  
(style:list-level-properties
Atext:list-level-position-and-space-mode label-alignment
(style:list-level-label-alignment
Atext:label-followed-by listtab
Atext:list-tab-stop-position 0.75in
Afo:margin-left 0.75in
Afo:text-indent -0.25in
)style:list-level-label-alignment
)style:list-level-properties
)text:list-level-style-number
(text:list-level-style-number
Atext:display-levels 3
Atext:level 3
Astyle:num-format 1
Astyle:num-prefix  
Astyle:num-suffix  
(style:list-level-properties
Atext:list-level-position-and-space-mode label-alignment
(style:list-level-label-alignment
Atext:label-followed-by listtab
Atext:list-tab-stop-position 1in
Afo:margin-left 1in
Afo:text-indent -0.25in
)style:list-level-label-alignment
)style:list-level-properties
)text:list-level-style-number
(text:list-level-style-number
Atext:display-levels 4
Atext:level 4
Astyle:num-format 1
Astyle:num-prefix  
Astyle:num-suffix  
(style:list-level-properties
Atext:list-level-position-and-space-mode label-alignment
(style:list-level-label-alignment
Atext:label-followed-by listtab
Atext:list-tab-stop-position 1.25in
Afo:margin-left 1.25in
Afo:text-indent -0.25in
)style:list-level-label-alignment
)style:list-level-properties
)text:list-level-style-number
(text:list-level-style-number
Atext:display-levels 5
Atext:level 5
Astyle:num-format 1
Astyle:num-prefix  
Astyle:num-suffix  
(style:list-level-properties
Atext:list-level-position-and-space-mode label-alignment
(style:list-level-label-alignment
Atext:label-followed-by listtab
Atext:list-tab-stop-position 1.5in
Afo:margin-left 1.5in
Afo:text-indent -0.25in
)style:list-level-label-alignment
)style:list-level-properties
)text:list-level-style-number
(text:list-level-style-number
Atext:display-levels 6
Atext:level 6
Astyle:num-format 1
Astyle:num-prefix  
Astyle:num-suffix  
(style:list-level-properties
Atext:list-level-position-and-space-mode label-alignment
(style:list-level-label-alignment
Atext:label-followed-by listtab
Atext:list-tab-stop-position 1.75in
Afo:margin-left 1.75in
Afo:text-indent -0.25in
)style:list-level-label-alignment
)style:list-level-properties
)text:list-level-style-number
(text:list-level-style-number
Atext:display-levels 7
Atext:level 7
Astyle:num-format 1
Astyle:num-prefix  
Astyle:num-suffix  
(style:list-level-properties
Atext:list-level-position-and-space-mode label-alignment
(style:list-level-label-alignment
Atext:label-followed-by listtab
Atext:list-tab-stop-position 2in
Afo:margin-left 2in
Afo:text-indent -0.25in
)style:list-level-label-alignment
)style:list-level-properties
)text:list-level-style-number
(text:list-level-style-number
Atext:display-levels 8
Atext:level 8
Astyle:num-format 1
Astyle:num-prefix  
Astyle:num-suffix  
(style:list-level-properties
Atext:list-level-position-and-space-mode label-alignment
(style:list-level-label-alignment
Atext:label-followed-by listtab
Atext:list-tab-stop-position 2.25in
Afo:margin-left 2.25in
Afo:text-indent -0.25in
)style:list-level-label-alignment
)style:list-level-properties
)text:list-level-style-number
(text:list-level-style-number
Atext:display-levels 9
Atext:level 9
Astyle:num-format 1
Astyle:num-prefix  
Astyle:num-suffix  
(style:list-level-properties
Atext:list-level-position-and-space-mode label-alignment
(style:list-level-label-alignment
Atext:label-followed-by listtab
Atext:list-tab-stop-position 2.5in
Afo:margin-left 2.5in
Afo:text-indent -0.25in
)style:list-level-label-alignment
)style:list-level-properties
)text:list-level-style-number
(text:list-level-style-number
Atext:display-levels 10
Atext:level 10
Astyle:num-format 1
Astyle:num-prefix  
Astyle:num-suffix  
(style:list-level-properties
Atext:list-level-position-and-space-mode label-alignment
(style:list-level-label-alignment
Atext:label-followed-by listtab
Atext:list-tab-stop-position 2.75in
Afo:margin-left 2.75in
Afo:text-indent -0.25in
)style:list-level-label-alignment
)style:list-level-properties
)text:list-level-style-number
)text:list-style
(text:list-style
Astyle:name L4
(text:list-level-style-number
Atext:level 1
Astyle:num-format 1
Astyle:num-prefix  
Astyle:num-suffix .
(style:list-level-properties
Atext:list-level-position-and-space-mode label-alignment
(style:list-level-label-alignment
Atext:label-followed-by listtab
Afo:margin-left -0.25in
Afo:text-indent -0.25in
)style:list-level-label-alignment
)style:list-level-properties
)text:list-level-style-number
(text:list-level-style-number
Atext:level 2
Astyle:num-format 1
Astyle:num-prefix  
Astyle:num-suffix .
(style:list-level-properties
Atext:list-level-position-and-space-mode label-alignment
(style:list-level-label-alignment
Atext:label-followed-by listtab
Afo:text-indent -0.25in
)style:list-level-label-alignment
)style:list-level-properties
)text:list-level-style-number
(text:list-level-style-number
Atext:level 3
Astyle:num-format 1
Astyle:num-prefix  
Astyle:num-suffix .
(style:list-level-properties
Atext:list-level-position-and-space-mode label-alignment
(style:list-level-label-alignment
Atext:label-followed-by listtab
Atext:list-tab-stop-position 0.25in
Afo:margin-left 0.25in
Afo:text-indent -0.25in
)style:list-level-label-alignment
)style:list-level-properties
)text:list-level-style-number
(text:list-level-style-number
Atext:level 4
Astyle:num-format 1
Astyle:num-prefix  
Astyle:num-suffix .
(style:list-level-properties
Atext:list-level-position-and-space-mode label-alignment
(style:list-level-label-alignment
Atext:label-followed-by listtab
Atext:list-tab-stop-position 0.5in
Afo:margin-left 0.5in
Afo:text-indent -0.25in
)style:list-level-label-alignment
)style:list-level-properties
)text:list-level-style-number
(text:list-level-style-number
Atext:level 5
Astyle:num-format 1
Astyle:num-prefix  
Astyle:num-suffix .
(style:list-level-properties
Atext:list-level-position-and-space-mode label-alignment
(style:list-level-label-alignment
Atext:label-followed-by listtab
Atext:list-tab-stop-position 0.75in
Afo:margin-left 0.75in
Afo:text-indent -0.25in
)style:list-level-label-alignment
)style:list-level-properties
)text:list-level-style-number
(text:list-level-style-number
Atext:level 6
Astyle:num-format 1
Astyle:num-prefix  
Astyle:num-suffix .
(style:list-level-properties
Atext:list-level-position-and-space-mode label-alignment
(style:list-level-label-alignment
Atext:label-followed-by listtab
Atext:list-tab-stop-position 1in
Afo:margin-left 1in
Afo:text-indent -0.25in
)style:list-level-label-alignment
)style:list-level-properties
)text:list-level-style-number
(text:list-level-style-number
Atext:level 7
Astyle:num-format 1
Astyle:num-prefix  
Astyle:num-suffix .
(style:list-level-properties
Atext:list-level-position-and-space-mode label-alignment
(style:list-level-label-alignment
Atext:label-followed-by listtab
Atext:list-tab-stop-position 1.25in
Afo:margin-left 1.25in
Afo:text-indent -0.25in
)style:list-level-label-alignment
)style:list-level-properties
)text:list-level-style-number
(text:list-level-style-number
Atext:level 8
Astyle:num-format 1
Astyle:num-prefix  
Astyle:num-suffix .
(style:list-level-properties
Atext:list-level-position-and-space-mode label-alignment
(style:list-level-label-alignment
Atext:label-followed-by listtab
Atext:list-tab-stop-position 1.5in
Afo:margin-left 1.5in
Afo:text-indent -0.25in
)style:list-level-label-alignment
)style:list-level-properties
)text:list-level-style-number
(text:list-level-style-number
Atext:level 9
Astyle:num-format 1
Astyle:num-prefix  
Astyle:num-suffix .
(style:list-level-properties
Atext:list-level-position-and-space-mode label-alignment
(style:list-level-label-alignment
Atext:label-followed-by listtab
Atext:list-tab-stop-position 1.75in
Afo:margin-left 1.75in
Afo:text-indent -0.25in
)style:list-level-label-alignment
)style:list-level-properties
)text:list-level-style-number
(text:list-level-style-number
Atext:level 10
Astyle:num-format 1
Astyle:num-prefix  
Astyle:num-suffix .
(style:list-level-properties
Atext:list-level-position-and-space-mode label-alignment
(style:list-level-label-alignment
Atext:label-followed-by listtab
Atext:list-tab-stop-position 2in
Afo:margin-left 2in
Afo:text-indent -0.25in
)style:list-level-label-alignment
)style:list-level-properties
)text:list-level-style-number
)text:list-style
)office:automatic-styles
(office:body
(office:text
C End header
EOF
#
#
#	Output body
read -d '' body <<"EOF"
(office:body    
(office:text
Atext:use-soft-page-breaks true      
(office:forms
Aform:apply-design-mode false
Aform:automatic-focus false
)office:forms      
(text:sequence-decls        
(text:sequence-decl
Atext:display-outline-level 0
Atext:name Illustration
)text:sequence-decl        
(text:sequence-decl
Atext:display-outline-level 0
Atext:name Table
)text:sequence-decl        
(text:sequence-decl
Atext:display-outline-level 0
Atext:name Text
)text:sequence-decl          
)text:sequence-decls
C Begin Interest 

C Begin Major Heading
(text:p
Atext:style-name P1
-PROGRAM PLANNING AND PROPOSAL WRITING 
)text:p
C Skip Line Major Heading
(text:p
Atext:style-name P1      
)text:p
C Next Line Major Heading
(text:p
Atext:style-name P1
-(Major Heading)
)text:p


(text:list
Axml:id list8613520842505776682
Atext:style-name WW8Num3
C Title Header         
-\n
C Begins the Text

(text:list-item          
(text:h
Atext:outline-level 1
Atext:style-name P2
-PROGRAM PLANNING AND PROPOSAL WRIRING
)text:h

C Begin Insert numsub.pyx

-\n              
(text:h
Atext:outline-level 2
Atext:style-name Heading_20_2
-Heading 2
)text:h
-\n     -\n              
(text:h
Atext:outline-level 2
Atext:style-name Heading_20_2
-Heading 2
)text:h
-\n     -\n              
(text:h
Atext:outline-level 2
Atext:style-name Heading_20_2
-Heading 2
)text:h
-\n     -\n              
(text:h
Atext:outline-level 2
Atext:style-name Heading_20_2
-Heading 2
)text:h
-\n     -\n              
(text:h
Atext:outline-level 2$(date +%F" "%T)
Atext:style-name Heading_20_2
-Heading 2
)text:h
-\n     -\n              
(text:h
Atext:outline-level 2
Atext:style-name Heading_20_2
-Heading 2
)text:h
-\n     
C End Insert numsub.pyx

)text:list-item
(text:list-item          
(text:h
Atext:outline-level 1
Atext:style-name P2
-PROGRAM PLANNING AND PROPOSAL WRIRING
)text:h

C Begin Insert numsub.pyx

-\n              
(text:h
Atext:outline-level 2
Atext:style-name Heading_20_2
-Heading 2
)text:h
-\n     -\n              
(text:h
Atext:outline-level 2
Atext:style-name Heading_20_2
-Heading 2
)text:h
-\n     -\n              
(text:h
Atext:outline-level 2
Atext:style-name Heading_20_2
-Heading 2
)text:h
-\n     -\n              
(text:h
Atext:outline-level 2
Atext:style-name Heading_20_2
-Heading 2
)text:h
-\n     -\n              
(text:h
Atext:outline-level 2
Atext:style-name Heading_20_2
-Heading 2
)text:h
-\n     -\n              
(text:h
Atext:outline-level 2
Atext:style-name Heading_20_2
-Heading 2
)text:h
-\n     
C End Insert numsub.pyx

)text:list-item

C Numbered Element         
(text:list-item 
C numbered heading here         

)text:list-item      
)text:list
C Normal Text 
- \n     
C Text item goes here

(text:list

    
(text:list-item          
C Text item goes here$(date +%F" "%T)
)text:list-item      
)text:list      

(text:list

(text:list-item
C Begin Numbered Headings 

(text:list

C Start List
C One heading element

C End of list-item
(text:list-item

C Closing time everything below must stay
)text:list-item          
)text:list
)text:list-item      
)text:list    
)office:text  
)office:body
EOF
#
# 	Output Text
read -d '' text <<"EOF"
 STUFF
EOF
#
#	Output Header 2
read -d '' section2 <<"EOF"
 STUFF
EOF
#
#	Output Footer
read -d '' footer <<"EOF"
C Added Tue 10 Feb 2015 07:12:16 AM EST 
C Closing time everything below must stay
)office:text  
)office:body
C end add
)office:document-content
C Document END 
EOF
#
#debug cat header1.pyx
# do not forget the quotes!
# echo "$header"
# cat body.pyx
#debug  echo "$body"
# echo "$footer"
#debug cat header1.pyx
# do not forget the quotes!
echo "C Date/time Created:"$(date +%F" "%T)
#debug 
echo "$header"
#debug cat gtheader.pyx
#debug echo "$body"
#debug 
cat gbody.pyx
#debug 
echo "$footer"
#debug echo "$header"; echo "$body"; echo "$footer"
#debug cat header.pyx; echo "C body"; cat body.pyx; echo "footer"; cat footer.pyx
#debug cat header.pyx
#debug cat body.pyx
#debug cat footer.pyx

