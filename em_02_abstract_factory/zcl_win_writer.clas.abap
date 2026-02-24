class ZCL_WIN_WRITER definition
  public
  final
  create public .

public section.

  interfaces ZIF_WRITER .

  methods WINDOWS_SPECIFIC_STUFF .
protected section.
private section.
ENDCLASS.



CLASS ZCL_WIN_WRITER IMPLEMENTATION.


  METHOD windows_specific_stuff.

    "Here is some stuff regarding Windows OS

  ENDMETHOD.


  METHOD zif_writer~write_file.

    "Some code to validate folder
    "Some code to open dataset, write file, close dataset

    WRITE: / 'Downloading file in Windows system...'.

  ENDMETHOD.
ENDCLASS.
