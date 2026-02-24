CLASS zcl_read_singleton DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    TYPES:
      BEGIN OF t_raw,
        col1 TYPE char10,
        col2 TYPE char10,
        col3 TYPE char10,
        col4 TYPE char10,
        col5 TYPE char10,
      END OF t_raw,
      tt_raw TYPE TABLE OF t_raw WITH DEFAULT KEY.

    METHODS:
      read_data,
      get_data
        RETURNING
          VALUE(result) TYPE tt_raw.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA mt_data TYPE tt_raw.
ENDCLASS.



CLASS ZCL_READ_SINGLETON IMPLEMENTATION.


  METHOD get_data.
    result = mt_data.
  ENDMETHOD.


  METHOD read_data.
    "Code to fill internal table mt_data
  ENDMETHOD.
ENDCLASS.
