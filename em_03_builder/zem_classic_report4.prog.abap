*&---------------------------------------------------------------------*
*& Report ZEM_CLASSIC_REPORT4
*&---------------------------------------------------------------------*
*& Report for Job 4 in Procedural ABAP
*&---------------------------------------------------------------------*
REPORT zem_classic_report4.

"Some data definitions
"Maybe a selection screen

FORM read_sales.
  "Code to read data
ENDFORM.

FORM prepare_tabbed_txt.
  "Code to prepare file
ENDFORM.

FORM send_email.
  "Code to save data
ENDFORM.

START-OF-SELECTION.
  PERFORM read_sales.
  PERFORM prepare_tabbed_txt.
  PERFORM send_email.
