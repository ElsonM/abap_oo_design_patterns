class ZCL_MESSAGE definition
  public
  abstract
  create public .

public section.
  METHODS constructor
IMPORTING
!ir_contact_type TYPE REF TO zif_contact.

  METHODS send_msg ABSTRACT
IMPORTING
!iv_recipient TYPE char10
!iv_message TYPE string.
protected section.
  DATA mr_contact_type TYPE REF TO zif_contact.
private section.
ENDCLASS.



CLASS ZCL_MESSAGE IMPLEMENTATION.


  METHOD constructor.
mr_contact_type = ir_contact_type.
ENDMETHOD.
ENDCLASS.
