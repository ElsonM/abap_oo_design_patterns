class ZCL_EMAIL definition
  public
  final
  create public .

public section.

  interfaces ZIF_FLUSHER .
protected section.
private section.

  methods SEND_MAIL
    importing
      !IR_FILE_ITAB type ref to DATA .
ENDCLASS.



CLASS ZCL_EMAIL IMPLEMENTATION.


  METHOD send_mail.

    WRITE: / 'Sending file by e-mail...'.

  ENDMETHOD.


  METHOD zif_flusher~flush.

    send_mail( ir_file_itab ). "Uses fld. symbols & sends E-Mail

  ENDMETHOD.
ENDCLASS.
