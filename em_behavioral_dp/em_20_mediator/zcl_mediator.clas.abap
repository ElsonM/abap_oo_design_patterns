CLASS zcl_mediator DEFINITION
  PUBLIC FINAL CREATE PUBLIC.

  PUBLIC SECTION.
    CLASS-METHODS get_instance_singleton
      RETURNING
        VALUE(result) TYPE REF TO zcl_mediator.

    METHODS register_lgort
      IMPORTING
        !iv_lgort  TYPE lgort_d
        !ir_objref TYPE REF TO data.

    METHODS send_stock
      IMPORTING
        !iv_target TYPE lgort_d
        !is_stock  TYPE zif_lgort=>t_stock.

  PRIVATE SECTION.
    TYPES: BEGIN OF t_stloc,
             lgort  TYPE lgort_d,
             objref TYPE REF TO data,
           END OF t_stloc,

           tt_stloc TYPE HASHED TABLE OF t_stloc
                      WITH UNIQUE KEY primary_key COMPONENTS lgort.

    DATA mt_stloc TYPE tt_stloc.

    CLASS-DATA mr_mediator TYPE REF TO zcl_mediator.

ENDCLASS.



CLASS ZCL_MEDIATOR IMPLEMENTATION.


  METHOD get_instance_singleton.
    IF mr_mediator IS INITIAL.
      mr_mediator = NEW #( ).
    ENDIF.

    result = mr_mediator.
  ENDMETHOD.


  METHOD register_lgort.
    INSERT VALUE #( lgort = iv_lgort objref = ir_objref )
    INTO TABLE mt_stloc.
  ENDMETHOD.


  METHOD send_stock.
    FIELD-SYMBOLS <lo_lgort> TYPE REF TO zif_lgort.
    ASSIGN mt_stloc[
      KEY primary_key
      COMPONENTS lgort = iv_target
    ] TO FIELD-SYMBOL(<ls_stloc>).
    CHECK sy-subrc = 0.
    ASSIGN <ls_stloc>-objref->* TO <lo_lgort>.
    <lo_lgort>->add_to_stock( is_stock ).
  ENDMETHOD.
ENDCLASS.
