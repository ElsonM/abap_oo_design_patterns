CLASS zcl_proxy DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_employee_proxy .
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA mr_emp TYPE REF TO zcl_employee_proxy.
    "Some type & data definitions + methods
ENDCLASS.



CLASS ZCL_PROXY IMPLEMENTATION.


  METHOD zif_employee_proxy~get_address.
    "Some code to ensure that MR_EMP is created
    mr_emp->zif_employee_proxy~get_address(
      EXPORTING
        iv_pernr = iv_pernr
      IMPORTING
        e_data   = e_data ).
  ENDMETHOD.


  METHOD zif_employee_proxy~get_employment_date.
    "Some code to ensure that MR_EMP is created
    mr_emp->zif_employee_proxy~get_employment_date(
      EXPORTING
        iv_pernr = iv_pernr
      IMPORTING
        e_data   = e_data ).
  ENDMETHOD.


  METHOD zif_employee_proxy~get_salary.
    RETURN.
  ENDMETHOD.
ENDCLASS.
