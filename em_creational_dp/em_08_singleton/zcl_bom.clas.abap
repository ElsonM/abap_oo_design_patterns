CLASS zcl_bom DEFINITION
  PUBLIC FINAL CREATE PRIVATE.

  PUBLIC SECTION.
    TYPES:
      BEGIN OF t_bom,
        comp  TYPE char10,
        char1 TYPE char10,
        char2 TYPE char10,
        char3 TYPE char10,
        char4 TYPE char10,
      END OF t_bom,
      tt_bom TYPE TABLE OF t_bom WITH DEFAULT KEY.


    CLASS-METHODS get_instance
      RETURNING
        VALUE(result) TYPE REF TO zcl_bom.

    METHODS get_bom
      IMPORTING
        !iv_matnr     TYPE matnr
      RETURNING
        VALUE(result) TYPE tt_bom.

  PROTECTED SECTION.

  PRIVATE SECTION.
    "Same definitions as before; plus...
    CLASS-DATA mr_bom TYPE REF TO zcl_bom.

    METHODS constructor.

ENDCLASS.



CLASS ZCL_BOM IMPLEMENTATION.


  METHOD constructor.
    "Some initialization
  ENDMETHOD.


  METHOD get_bom.
   "Some calculation code
  ENDMETHOD.


  METHOD get_instance.

    IF mr_bom IS INITIAL.
      mr_bom = NEW #( ).
    ENDIF.

    result = mr_bom.

  ENDMETHOD.
ENDCLASS.
