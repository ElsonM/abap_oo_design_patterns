*&---------------------------------------------------------------------*
*& Include ZSAMPLE_USER_EXIT_INCL2
*&---------------------------------------------------------------------*
DATA:
  object      TYPE REF TO object,
  decorator   TYPE REF TO zif_decorator2,
  class_names TYPE STANDARD TABLE OF seometarel-clsname.

* Detect classes implementing our interface
SELECT clsname INTO TABLE class_names
  FROM seometarel
  WHERE refclsname = 'ZIF_DECORATOR2'.

* Create property container instance
DATA(lo_prop_cont) = NEW zcl_property_container( ).

* Loop through classes, letting each class modify the data
LOOP AT class_names ASSIGNING FIELD-SYMBOL(<class_name>).
  CREATE OBJECT object TYPE (<class_name>).
  decorator ?= object.
  decorator->decorate(
    EXPORTING
      io_prop_cont = lo_prop_cont
    CHANGING
      ct_konp      = xkonp[] ).
ENDLOOP.
