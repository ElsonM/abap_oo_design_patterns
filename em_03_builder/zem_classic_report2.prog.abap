*&---------------------------------------------------------------------*
*& Report ZEM_CLASSIC_REPORT2
*&---------------------------------------------------------------------*
*& Report for Job 2 in Procedural ABAP
*&---------------------------------------------------------------------*
REPORT zem_classic_report2.

"Some data definitions
"Maybe a selection screen

FORM read_stock.
  "Code to read data
ENDFORM.

FORM prepare_csv_txt.
  "Code to prepare file
ENDFORM.

FORM send_email.
  "Code to save data
ENDFORM.

START-OF-SELECTION.
  PERFORM read_stock.
  PERFORM prepare_csv_txt.
  PERFORM send_email.
