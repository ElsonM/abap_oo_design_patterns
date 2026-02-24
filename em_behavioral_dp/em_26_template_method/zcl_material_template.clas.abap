class ZCL_MATERIAL_TEMPLATE definition
  public
  inheriting from ZCL_ABSTRACT_TEMPLATE
  final
  create public .

public section.
protected section.

  methods IS_ENTITY_AVAILABLE
    redefinition .
  methods GET_QUANTITY_LIST
    redefinition .
private section.
ENDCLASS.



CLASS ZCL_MATERIAL_TEMPLATE IMPLEMENTATION.


  METHOD get_quantity_list.

    SELECT banfn AS doc_key menge meins
      INTO TABLE result
      FROM eban
      WHERE matnr = iv_key.

  ENDMETHOD.


  METHOD is_entity_available.

    SELECT SINGLE mandt INTO sy-mandt ##WRITE_OK
      FROM mara
      WHERE matnr = iv_key AND lvorm = abap_false.

    CHECK sy-subrc = 0.

    result = abap_true.

  ENDMETHOD.
ENDCLASS.
