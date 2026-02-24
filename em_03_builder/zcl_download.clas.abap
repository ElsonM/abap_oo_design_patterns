class ZCL_DOWNLOAD definition
  public
  final
  create public .

public section.

  interfaces ZIF_FLUSHER .
protected section.
private section.

  methods DOWNLOAD_FILE
    importing
      !IR_FILE_ITAB type ref to DATA .
ENDCLASS.



CLASS ZCL_DOWNLOAD IMPLEMENTATION.


  METHOD download_file.

    WRITE: / 'Downloading file...'.

  ENDMETHOD.


  METHOD zif_flusher~flush.

    download_file( ir_file_itab ). "Uses fld. symbols, writes file

  ENDMETHOD.
ENDCLASS.
