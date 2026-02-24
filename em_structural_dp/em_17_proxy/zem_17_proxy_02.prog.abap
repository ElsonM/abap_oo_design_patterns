*&---------------------------------------------------------------------*
*& Report ZEM_17_PROXY_02
*&---------------------------------------------------------------------*
*& Safe variant for Proxy Design Pattern
*&---------------------------------------------------------------------*
REPORT zem_17_proxy_02.

DATA gv_pernr TYPE persno.

DATA(gr_emp) = NEW zcl_proxy( ).

gr_emp->zif_employee_proxy~get_address(
  EXPORTING
    iv_pernr = gv_pernr
  IMPORTING
    e_data   = DATA(st_adr) ).

gr_emp->zif_employee_proxy~get_employment_date(
  EXPORTING
    iv_pernr = gv_pernr
  IMPORTING
    e_data   = DATA(gv_begda) ).

PERFORM display_employee USING st_adr gv_begda.

*&---------------------------------------------------------------------*
*& Form display_employee
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& --> P_ST_ADR
*& --> P_BEGDA
*&---------------------------------------------------------------------*
FORM display_employee USING p_st_adr
                            p_begda.

ENDFORM.
