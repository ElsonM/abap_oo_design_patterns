class ZCL_PURCHASE definition
  public
  final
  create public .

public section.

  types:
    BEGIN OF t_price,
        preis TYPE eban-preis,
        waers TYPE eban-waers,
      END OF t_price .
  types:
    BEGIN OF t_quant,
        menge TYPE eban-menge,
        meins TYPE eban-meins,
      END OF t_quant .
  types:
    BEGIN OF t_line,
        obj_material TYPE REF TO zcl_material_prototype,
        matnr        TYPE eban-matnr,
        lifnr        TYPE eban-lifnr,
        price        TYPE t_price,
        quant        TYPE t_quant,
      END OF t_line .
  types:
    tt_line TYPE TABLE OF t_line .

  methods ADD_LINE
    importing
      !IS_LINE type T_LINE .
  methods LOAD_FROM_DB
    importing
      !IV_DOCNO type ZDOCNO .
  methods SAVE_TO_DB .
  PROTECTED SECTION.

  PRIVATE SECTION.
    DATA mt_line TYPE tt_line.

ENDCLASS.



CLASS ZCL_PURCHASE IMPLEMENTATION.


  METHOD add_line.
    DATA lo_material TYPE REF TO zcl_material_prototype.

    ASSIGN mt_line[ matnr = is_line-matnr ]
      TO FIELD-SYMBOL(<fs_line>).
    IF sy-subrc = 0.
      lo_material = <fs_line>-obj_material->clone( ).
    ELSE.
      lo_material = NEW zcl_material_prototype( is_line-matnr ).
    ENDIF.

    APPEND VALUE #(
      obj_material = NEW zcl_material_prototype( is_line-matnr )
      lifnr        = is_line-lifnr
      matnr        = is_line-matnr
      price = VALUE #(
                preis = is_line-price-preis
                waers = is_line-price-waers )
      quant = VALUE #(
                menge = is_line-quant-menge
                meins = is_line-quant-meins )
    ) TO mt_line.

  ENDMETHOD.


  METHOD load_from_db.
    "Some boring code containing SELECT, etc.
  ENDMETHOD.


  METHOD save_to_db.
    " Some boring code containing MODIFY, etc.
  ENDMETHOD.
ENDCLASS.
