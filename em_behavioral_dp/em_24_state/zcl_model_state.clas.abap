CLASS zcl_model_state DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    "Some constants, etc.

    DATA go_state TYPE REF TO zif_state.

    METHODS set_state
      IMPORTING
        !iv_auth_level TYPE zauth_level.

  PROTECTED SECTION.

private section.

  constants C_AUTH_NONE type CHAR10 value 'None' ##NO_TEXT.
  constants C_AUTH_LOW type CHAR10 value 'Low' ##NO_TEXT.
  constants C_AUTH_HIGH type CHAR10 value 'High' ##NO_TEXT.
ENDCLASS.



CLASS ZCL_MODEL_STATE IMPLEMENTATION.


  METHOD set_state.

    DATA: class_name TYPE seoclsname,
          object     TYPE REF TO object.

    CASE iv_auth_level.
      WHEN c_auth_none. class_name = 'ZCL_NO_AUTH'.
      WHEN c_auth_low. class_name = 'ZCL_LOW_AUTH'.
      WHEN c_auth_high. class_name = 'ZCL_HIGH_AUTH'.
    ENDCASE.

    CREATE OBJECT object TYPE (class_name).
    go_state ?= object.

  ENDMETHOD.
ENDCLASS.
