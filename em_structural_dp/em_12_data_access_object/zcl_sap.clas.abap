class ZCL_SAP definition
  public
  final
  create public .

public section.

  interfaces ZIF_DAO .
protected section.
private section.
ENDCLASS.



CLASS ZCL_SAP IMPLEMENTATION.


  METHOD zif_dao~get_cust_list.

    SELECT kunnr, name1 INTO TABLE @DATA(lt_kna1) FROM kna1.

    LOOP AT lt_kna1 ASSIGNING FIELD-SYMBOL(<fs_kna1>).
      APPEND VALUE #( code = <fs_kna1>-kunnr ) TO result
        ASSIGNING FIELD-SYMBOL(<fs_customer>).
      <fs_customer>-obj = NEW #( ).
      <fs_customer>-obj->mv_potential = abap_false.
      <fs_customer>-obj->mv_code = <fs_kna1>-kunnr.
      <fs_customer>-obj->mv_name = <fs_kna1>-name1.
    ENDLOOP.

  ENDMETHOD.
ENDCLASS.
