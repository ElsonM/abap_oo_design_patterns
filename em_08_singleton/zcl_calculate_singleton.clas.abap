CLASS zcl_calculate_singleton DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    TYPES:
      BEGIN OF t_final,
        col1 TYPE char10,
        col2 TYPE char10,
        col3 TYPE char10,
        col4 TYPE char10,
        col5 TYPE char10,
      END OF t_final,
      tt_final TYPE TABLE OF t_final WITH DEFAULT KEY.

    METHODS:
      calculate
        IMPORTING
          it_raw_data TYPE zcl_read_singleton=>tt_raw,
      get_calculated_data
        RETURNING
          VALUE(result) TYPE tt_final.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA mt_data TYPE tt_final.
ENDCLASS.



CLASS ZCL_CALCULATE_SINGLETON IMPLEMENTATION.


  METHOD calculate.
    "Code to fill internal table mt_data
  ENDMETHOD.


  METHOD get_calculated_data.
    result = mt_data.
  ENDMETHOD.
ENDCLASS.
