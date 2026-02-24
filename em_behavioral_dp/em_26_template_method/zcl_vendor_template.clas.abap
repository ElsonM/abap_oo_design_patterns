class ZCL_VENDOR_TEMPLATE definition
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



CLASS ZCL_VENDOR_TEMPLATE IMPLEMENTATION.


  METHOD GET_QUANTITY_LIST.

    SELECT ekpo~ebeln AS doc_key ekpo~menge ekpo~meins
      INTO TABLE result
      FROM ekpo
      INNER JOIN ekko ON ekko~ebeln = ekpo~ebeln
      WHERE ekko~lifnr = iv_key.

  ENDMETHOD.


  method IS_ENTITY_AVAILABLE.

    SELECT SINGLE mandt INTO sy-mandt ##WRITE_OK
      FROM lfa1
      WHERE kunnr = iv_key AND sperr = abap_false.
    CHECK sy-subrc = 0.
    result = abap_true.

  endmethod.
ENDCLASS.
