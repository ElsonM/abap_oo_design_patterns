class ZCL_CRITICAL definition
  public
  final
  create public .

public section.

  methods CONSTRUCTOR .
  methods DO_CRITICAL_STUFF .
  methods GET_ERROR_OBJ
    returning
      value(RESULT) type ref to ZCL_ERROR .
  methods HAS_ERROR
    returning
      value(RESULT) type ABAP_BOOL .
protected section.
private section.

  data MR_ERROR type ref to ZCL_ERROR .
ENDCLASS.



CLASS ZCL_CRITICAL IMPLEMENTATION.


  METHOD constructor.

    "We are NOT creating MR_ERROR here!

  ENDMETHOD.


  METHOD do_critical_stuff.

    DATA: tab_bapiret2 TYPE bapiret2_tab,
          error_occurred TYPE abap_bool.

    "Some complex code

    IF error_occurred = abap_true.
      get_error_obj( ).  "We don’t need to receive
      mr_error->add_messages( tab_bapiret2 ).
    ENDIF.

ENDMETHOD.


  METHOD get_error_obj.

    IF mr_error IS INITIAL.
      mr_error = NEW #( ). "Object is created on first access
    ENDIF.

    result = mr_error.

  ENDMETHOD.


  METHOD has_error.

    IF mr_error IS BOUND.
       result = abap_true.
    ENDIF.

  ENDMETHOD.
ENDCLASS.
