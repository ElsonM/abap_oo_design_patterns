*&---------------------------------------------------------------------*
*& Include ZSAMPLE_USER_EXIT_INCL1
*&---------------------------------------------------------------------*
DATA:
  object TYPE REF TO object,
  decorator TYPE REF TO zif_decorator1,
  class_names TYPE STANDARD TABLE OF seometarel-clsname.

* Detect classes implementing our interface
  SELECT clsname INTO TABLE class_names
    FROM seometarel
    WHERE refclsname = 'ZIF_DECORATOR1'. "Test

* Loop through classes, letting each class modify the data
  LOOP AT class_names ASSIGNING FIELD-SYMBOL(<class_name>).
    CREATE OBJECT object TYPE (<class_name>).
    decorator ?= object.
    decorator->decorate( CHANGING cs_data = cs_data ).
  ENDLOOP.
