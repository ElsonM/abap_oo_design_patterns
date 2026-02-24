CLASS zcl_bonus_fac DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  types:
    BEGIN OF TY_bonus,
      client TYPE kunnr,
      bonus_value TYPE char10,
    END OF ty_bonus,
    tt_bonus TYPE STANDARD TABLE OF ty_bonus WITH DEFAULT KEY.

    METHODS calc_annual_bonus
      IMPORTING
        !it_sales     TYPE zcl_sales_fac=>tt_sales
      RETURNING
        VALUE(result) TYPE tt_bonus .
  PROTECTED SECTION.
  PRIVATE SECTION.


ENDCLASS.



CLASS ZCL_BONUS_FAC IMPLEMENTATION.


METHOD calc_annual_bonus.

  "Code to fill RESULT

ENDMETHOD.
ENDCLASS.
