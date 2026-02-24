CLASS zcl_receiver DEFINITION
  PUBLIC FINAL CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS post_order IMPORTING !is_info TYPE zst_info.
    METHODS post_delivery IMPORTING !is_info TYPE zst_info.
    METHODS post_invoice IMPORTING !is_info TYPE zst_info.

  PROTECTED SECTION.

  PRIVATE SECTION.
    "Some type & data definitions + methods

ENDCLASS.



CLASS ZCL_RECEIVER IMPLEMENTATION.


  METHOD post_delivery.
    "Call BAPI to create delivery
  ENDMETHOD.


  METHOD post_invoice.
    "Call BAPI to create invoice
  ENDMETHOD.


  METHOD post_order.
    "Call BAPI to create order
  ENDMETHOD.
ENDCLASS.
