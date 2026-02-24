CLASS zcl_caretaker DEFINITION
PUBLIC FINAL CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS add IMPORTING !io_memento TYPE REF TO zcl_memento.
    METHODS get
      IMPORTING
        !iv_index     TYPE i
      RETURNING
        VALUE(result) TYPE REF TO zcl_memento.
  PROTECTED SECTION.
  PRIVATE SECTION.
    TYPES:
      BEGIN OF t_memento_list,
        index   TYPE i,
        memento TYPE REF TO zcl_memento,
      END OF t_memento_list,
      tt_memento_list TYPE STANDARD TABLE OF t_memento_list.
    DATA mt_memento TYPE tt_memento_list.

ENDCLASS.



CLASS ZCL_CARETAKER IMPLEMENTATION.


  METHOD add.
    APPEND value #(
      index   = lines( mt_memento ) + 1
      memento = io_memento ) TO mt_memento.
  ENDMETHOD.


  METHOD get.
    result = mt_memento[ index = iv_index ]-memento.
  ENDMETHOD.
ENDCLASS.
