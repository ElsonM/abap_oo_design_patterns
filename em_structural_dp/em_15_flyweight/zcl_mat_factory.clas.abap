CLASS zcl_mat_factory DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    CLASS-METHODS get_material
      IMPORTING
        iv_matnr      TYPE matnr
      RETURNING
        VALUE(result) TYPE REF TO zif_material.

  PROTECTED SECTION.

  PRIVATE SECTION.
    TYPES:
      BEGIN OF t_material,
        matnr TYPE matnr,
        obj   TYPE REF TO zif_material,
      END OF t_material,
      tt_materials TYPE HASHED TABLE OF t_material
                     WITH UNIQUE KEY primary_key COMPONENTS matnr.
    CLASS-DATA materials TYPE tt_materials.
ENDCLASS.



CLASS ZCL_MAT_FACTORY IMPLEMENTATION.


  METHOD get_material.

    ASSIGN materials[ KEY primary_key COMPONENTS matnr = iv_matnr ]
      TO FIELD-SYMBOL(<ls_mat>).

    IF sy-subrc <> 0.

      SELECT SINGLE mara~matnr, mara~meins, makt~maktx
        INTO @DATA(ls_db)
        FROM mara
        LEFT JOIN makt ON makt~matnr = mara~matnr
          AND makt~spras = @sy-langu
        WHERE mara~matnr = @iv_matnr.

      DATA(ls_mat) = VALUE t_material( matnr = iv_matnr ).

      DATA(lo_mat) = NEW zcl_mat_flyweight( ).
      ls_mat-obj ?= lo_mat.
      ls_mat-obj->set_code( ls_db-matnr ).
      ls_mat-obj->set_text( ls_db-maktx ).
      ls_mat-obj->set_uom( ls_db-meins ).
      INSERT ls_mat INTO TABLE materials ASSIGNING <ls_mat>.

    ENDIF.

    result = <ls_mat>-obj.

  ENDMETHOD.
ENDCLASS.
