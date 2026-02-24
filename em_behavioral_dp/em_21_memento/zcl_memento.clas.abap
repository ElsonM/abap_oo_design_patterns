class ZCL_MEMENTO definition
  public
  final
  create public .

public section.

  methods CONSTRUCTOR
    importing
      !IT_DATA type ZTT_DATA .
  methods GET_STATE
    returning
      value(RESULT) type ZTT_DATA .
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA mt_data TYPE ztt_data.
ENDCLASS.



CLASS ZCL_MEMENTO IMPLEMENTATION.


  METHOD constructor.

    mt_data = it_data.

  ENDMETHOD.


  METHOD get_state.
    result = mt_data.
  ENDMETHOD.
ENDCLASS.
