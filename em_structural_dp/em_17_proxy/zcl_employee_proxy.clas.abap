CLASS zcl_employee_proxy DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_employee_proxy .
  PROTECTED SECTION.
  PRIVATE SECTION.
    "Some type & data definitions + methods
ENDCLASS.



CLASS ZCL_EMPLOYEE_PROXY IMPLEMENTATION.


  METHOD zif_employee_proxy~get_address.
    "Some code to get address data & put into e_data
  ENDMETHOD.


  METHOD zif_employee_proxy~get_employment_date.
    "Some code to get employment data & put into e_data
  ENDMETHOD.


  METHOD zif_employee_proxy~get_salary.
    "Some code to read salary & put into e_data
  ENDMETHOD.
ENDCLASS.
