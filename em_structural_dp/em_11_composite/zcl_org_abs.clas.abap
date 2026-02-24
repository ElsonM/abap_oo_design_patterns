CLASS zcl_org_abs DEFINITION PUBLIC ABSTRACT CREATE PUBLIC.
  PUBLIC SECTION.
    "Some constants, etc.
    "Some data definitions
    METHODS add_suborg ABSTRACT
      IMPORTING !io_element TYPE REF TO zcl_org_abs.
    METHODS remove_suborg ABSTRACT
      IMPORTING !iv_objid TYPE hrp1000-objid.
    METHODS get_suborg ABSTRACT
      IMPORTING
        !iv_objid     TYPE hrp1000-objid
      RETURNING
        VALUE(result) TYPE REF TO zcl_org_abs.
    METHODS get_hr_data FINAL
      RETURNING
        VALUE(result) TYPE hrp1000.
    METHODS set_hr_data FINAL
      IMPORTING !is_hrp1000 TYPE hrp1000.

  PROTECTED SECTION.
    DATA ms_hrp1000 TYPE hrp1000.
ENDCLASS.



CLASS ZCL_ORG_ABS IMPLEMENTATION.


METHOD get_hr_data.
  result = ms_hrp1000.
ENDMETHOD.


METHOD set_hr_data.
  ms_hrp1000 = is_hrp1000.
ENDMETHOD.
ENDCLASS.
