*&---------------------------------------------------------------------*
*& Report ZEM_26_TEMPLATE_METHOD
*&---------------------------------------------------------------------*
*& Client program for Template Method Design Pattern
*&---------------------------------------------------------------------*
REPORT zem_26_template_method.

DATA:
  lo_obj TYPE REF TO object,
  lo_abs TYPE REF TO zcl_abstract_template.

DATA:
  gv_class_name TYPE seoclsname,
  gv_key TYPE string.


* Assuming that we store the class name in GV_CLASS_NAME,
* which could be 'ZCL_MATERIAL_TEMPLATE', 'ZCL_CUSTOMER_TEMPALTE' or 'ZCL_VENDOR_TEMPLATE';
* create the object
  CREATE OBJECT lo_obj TYPE (gv_class_name).
  lo_abs ?= lo_obj.

* Assuming that we store the entity key in GV_KEY,
* which could be a MATNR, KUNNR or LIFNR;
* calculate the average quantity
  DATA(lt_avg_quan) = lo_abs->get_avg_quan( gv_key ).
