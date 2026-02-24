CLASS zcl_material_prototype DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS constructor
      IMPORTING
        !iv_matnr TYPE matnr .

    METHODS clone
      RETURNING
        VALUE(result) TYPE REF TO zcl_material_prototype.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_MATERIAL_PROTOTYPE IMPLEMENTATION.


  METHOD clone.
    SYSTEM-CALL OBJMGR CLONE me TO result.
  ENDMETHOD.


  METHOD constructor.
    "Some very slow but unavoidable code
  ENDMETHOD.
ENDCLASS.
