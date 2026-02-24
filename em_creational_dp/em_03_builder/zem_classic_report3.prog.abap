*&---------------------------------------------------------------------*
*& Report ZEM_CLASSIC_REPORT3
*&---------------------------------------------------------------------*
*& Report for Job 3 in Procedural ABAP
*&---------------------------------------------------------------------*
REPORT zem_classic_report3.

"Some data definitions
"Maybe a selection screen

FORM read_sales.
  "Code to read data
ENDFORM.

FORM prepare_csv_txt.
  "Code to prepare file
ENDFORM.

FORM download_file.
  "Code to save data
ENDFORM.

START-OF-SELECTION.
  PERFORM read_sales.
  PERFORM prepare_csv_txt.
  PERFORM download_file.
