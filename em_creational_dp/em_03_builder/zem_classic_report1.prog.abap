*&---------------------------------------------------------------------*
*& Report ZEM_CLASSIC_REPORT1
*&---------------------------------------------------------------------*
*& Report for Job 1 in Procedural ABAP
*&---------------------------------------------------------------------*
REPORT zem_classic_report1.

"Some data definitions
"Maybe a selection screen

FORM read_stock.
  "Code to read data
ENDFORM.

FORM prepare_tabbed_txt.
  "Code to prepare file
ENDFORM.

FORM download_file.
  "Code to save data
ENDFORM.

START-OF-SELECTION.
  PERFORM read_stock.
  PERFORM prepare_tabbed_txt.
  PERFORM download_file.
