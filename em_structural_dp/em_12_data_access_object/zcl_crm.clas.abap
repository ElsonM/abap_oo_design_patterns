CLASS zcl_crm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_dao .

    TYPES:
      BEGIN OF t_crm,
        cuscode TYPE kunnr,
        cusname TYPE name1_gp,
      END OF t_crm,
      tt_crm TYPE STANDARD TABLE OF t_crm WITH DEFAULT KEY.
protected section.
private section.
ENDCLASS.



CLASS ZCL_CRM IMPLEMENTATION.


  METHOD zif_dao~get_cust_list.

    DATA lt_crm TYPE tt_crm.

    "Call Web service and put returned data into lt_crm
    LOOP AT lt_crm ASSIGNING FIELD-SYMBOL(<fs_crm>).
      APPEND VALUE #( code = <fs_crm>-cuscode ) TO result
        ASSIGNING FIELD-SYMBOL(<fs_customer>).
      <fs_customer>-obj = NEW #( ).
      <fs_customer>-obj->mv_potential = abap_true.
      <fs_customer>-obj->mv_code      = <fs_crm>-cuscode.
      <fs_customer>-obj->mv_name      = <fs_crm>-cusname.
    ENDLOOP.

  ENDMETHOD.
ENDCLASS.
