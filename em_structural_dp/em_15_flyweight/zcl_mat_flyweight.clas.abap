CLASS zcl_mat_flyweight DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_material .
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA:
      matnr TYPE matnr,
      maktx TYPE maktx,
      meins TYPE meins.
ENDCLASS.



CLASS ZCL_MAT_FLYWEIGHT IMPLEMENTATION.


  METHOD zif_material~get_code.
    result = matnr.
  ENDMETHOD.


  METHOD zif_material~get_text.
    result = maktx.
  ENDMETHOD.


  METHOD zif_material~get_uom.
    result = meins.
  ENDMETHOD.


  METHOD zif_material~set_code.
    matnr = iv_matnr.
  ENDMETHOD.


  METHOD zif_material~set_text.
    maktx = iv_maktx.
  ENDMETHOD.


  METHOD zif_material~set_uom.
    meins = iv_meins.
  ENDMETHOD.
ENDCLASS.
