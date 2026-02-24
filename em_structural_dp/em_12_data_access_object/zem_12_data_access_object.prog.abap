*&---------------------------------------------------------------------*
*& Report ZEM_12_DATA_ACCESS_OBJECT
*&---------------------------------------------------------------------*
*& Client program for the Data Access Object Design Pattern
*&---------------------------------------------------------------------*
REPORT zem_12_data_access_object.

DATA:
  lo_dao TYPE REF TO zif_dao,
  lo_obj TYPE REF TO object,
  lt_customers TYPE zif_dao=>tt_customer.

* Build list of DAO classes
  SELECT clsname INTO TABLE @DATA(lt_cls)
    FROM seometarel
    WHERE refclsname = 'ZIF_DAO'.

* Read customer data from each DAO class
  LOOP AT lt_cls ASSIGNING FIELD-SYMBOL(<fs_cls>).
    CREATE OBJECT lo_obj TYPE (<fs_cls>-clsname).
    lo_dao ?= lo_obj.
    APPEND LINES OF lo_dao->get_cust_list( ) to lt_customers.
  ENDLOOP.

* Display list of customers
  LOOP AT lt_customers ASSIGNING FIELD-SYMBOL(<fs_cust>).
    NEW-LINE.
    WRITE:
      <fs_cust>-obj->mv_code,
      <fs_cust>-obj->mv_name,
      <fs_cust>-obj->mv_potential.
  ENDLOOP.
