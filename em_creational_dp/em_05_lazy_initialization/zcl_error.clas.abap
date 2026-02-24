class ZCL_ERROR definition
  public
  final
  create public .

public section.

  methods WRITE_TO_APPLICATION_LOG .
  methods SEND_EMAILS .
  methods CREATE_TICKET .
  methods ADD_MESSAGES
    importing
      !IT_BAPIRET2 type BAPIRET2_TAB .
protected section.
private section.
ENDCLASS.



CLASS ZCL_ERROR IMPLEMENTATION.


  method ADD_MESSAGES.
  endmethod.


  method CREATE_TICKET.
  endmethod.


  method SEND_EMAILS.
  endmethod.


  method WRITE_TO_APPLICATION_LOG.
  endmethod.
ENDCLASS.
