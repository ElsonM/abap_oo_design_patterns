class ZCL_CUSTOMER_TEMPLATE definition
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



CLASS ZCL_CUSTOMER_TEMPLATE IMPLEMENTATION.


  METHOD get_quantity_list.

    SELECT vbap~vbeln AS doc_key vbap~kwmeng AS menge vbap~meins
      INTO TABLE result
      FROM vbap
      INNER JOIN vbak ON vbak~vbeln = vbap~vbeln
      WHERE vbak~kunnr = iv_key.

  ENDMETHOD.


  method IS_ENTITY_AVAILABLE.

    SELECT SINGLE mandt INTO sy-mandt ##WRITE_OK
      FROM kna1
      WHERE kunnr = iv_key AND sperr = abap_false.
    CHECK sy-subrc = 0.
    result = abap_true.

  endmethod.
ENDCLASS.
