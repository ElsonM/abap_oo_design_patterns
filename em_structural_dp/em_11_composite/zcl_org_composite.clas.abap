CLASS zcl_org_composite DEFINITION
  PUBLIC
  INHERITING FROM zcl_org_abs
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS add_suborg REDEFINITION.
    METHODS remove_suborg REDEFINITION.
    METHODS get_suborg REDEFINITION.

  PRIVATE SECTION.
    TYPES: BEGIN OF t_suborg,
             objid TYPE hrp1000-objid,
             org   TYPE REF TO zcl_org_abs,
           END OF t_suborg,
           tt_suborg TYPE STANDARD TABLE OF t_suborg WITH DEFAULT KEY.

    DATA mt_suborg TYPE tt_suborg.
ENDCLASS.



CLASS ZCL_ORG_COMPOSITE IMPLEMENTATION.


  METHOD add_suborg.
    "We extract the ID from the object being passed in
    APPEND VALUE #(
        objid = io_element->get_hr_data( )-objid
        org   = io_element
    ) TO mt_suborg.
  ENDMETHOD.


  METHOD get_suborg.
    "Using the new table structure for retrieval
    READ TABLE mt_suborg INTO DATA(ls_sub) WITH KEY objid = iv_objid.
    IF sy-subrc = 0.
      result = ls_sub-org.
    ENDIF.
  ENDMETHOD.


  METHOD remove_suborg.
    DELETE mt_suborg WHERE objid = iv_objid.
  ENDMETHOD.
ENDCLASS.
