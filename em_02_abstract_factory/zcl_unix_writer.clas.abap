class ZCL_UNIX_WRITER definition
  public
  final
  create public .

public section.

  interfaces ZIF_WRITER .

  methods UNIX_SPECIFIC_STUFF .
  methods UNIX_SPECIFIC_FURTHER_STUFF .
protected section.
private section.
ENDCLASS.



CLASS ZCL_UNIX_WRITER IMPLEMENTATION.


  METHOD unix_specific_further_stuff.

    "Here is some further stuff regarding Unix

  ENDMETHOD.


  METHOD unix_specific_stuff.

    "Here is some stuff regarding Unix

  ENDMETHOD.


  METHOD zif_writer~write_file.

    "Some code to open dataset, write file, close dataset
    "Some code to do CHMOD stuff

    WRITE: / 'Downloading file in Unix system...'.

  ENDMETHOD.
ENDCLASS.
