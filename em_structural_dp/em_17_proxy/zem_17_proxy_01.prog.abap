*&---------------------------------------------------------------------*
*& Report ZEM_17_PROXY_01
*&---------------------------------------------------------------------*
*& Risky variant for Proxy Design Pattern
*&---------------------------------------------------------------------*
REPORT zem_17_proxy_01.

DATA gv_pernr TYPE persno.

DATA(gr_emp) = NEW zcl_employee_proxy( ).

gr_emp->zif_employee_proxy~get_salary(
  EXPORTING
    iv_pernr = gv_pernr
  IMPORTING
    e_data   = DATA(st_salary) ).

PERFORM display_salary USING st_salary.

*&---------------------------------------------------------------------*
*& Form display_salary
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& --> P_ST_SALARY
*&---------------------------------------------------------------------*
FORM display_salary  USING p_st_salary.

ENDFORM.
