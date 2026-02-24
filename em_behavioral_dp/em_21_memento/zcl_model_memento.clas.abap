class ZCL_MODEL_MEMENTO definition
  public
  final
  create public .

public section.

  methods CONSTRUCTOR .
  methods SET_STATE
    importing
      !IT_DATA type ZTT_DATA .
  methods GET_STATE
    returning
      value(RESULT) type ZTT_DATA .
  methods SAVE_STATE_TO_MEMENTO
    returning
      value(RESULT) type ref to ZCL_MEMENTO .
  methods GET_STATE_FROM_MEMENTO
    importing
      !IO_MEMENTO type ref to ZCL_MEMENTO .
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA mt_data TYPE ztt_data.
    "Some data definitions
    "Some method definitions

ENDCLASS.



CLASS ZCL_MODEL_MEMENTO IMPLEMENTATION.


  METHOD constructor.
    "Initialization
  ENDMETHOD.


  METHOD get_state.
    result = mt_data.
  ENDMETHOD.


  method GET_STATE_FROM_MEMENTO.
  endmethod.


  method SAVE_STATE_TO_MEMENTO.
  endmethod.


  METHOD set_state.
    "Validate incoming data
    mt_data = it_data.
  ENDMETHOD.
ENDCLASS.
