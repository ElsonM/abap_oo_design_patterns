CLASS zcl_model_mvc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    TYPES:
      BEGIN OF ty_blocked_clients,
        kunnr TYPE kna1-kunnr,
        aufsd TYPE kna1-aufsd,
      END OF ty_blocked_clients .
    TYPES:
      tt_blocked_clients TYPE SORTED TABLE OF ty_blocked_clients WITH UNIQUE KEY kunnr.

    METHODS read_orders
      IMPORTING
        !it_vbeln_rng TYPE ztt_vbeln_rng.

    METHODS eliminate_blocked.

    METHODS get_order_list
      RETURNING
        VALUE(result) TYPE ztt_orders.

    METHODS create_dlv.
protected section.
private section.

  data ORDERS type ZTT_ORDERS .
ENDCLASS.



CLASS ZCL_MODEL_MVC IMPLEMENTATION.


  METHOD create_dlv.

    DATA: lt_deliveries TYPE TABLE OF bapidlvreftosalesorder,
          ls_delivery   TYPE bapidlvreftosalesorder,
          lt_created    TYPE TABLE OF bapidlvitemcreated,
          lt_return     TYPE TABLE OF bapiret2,
          lv_vbeln_vl   TYPE vbeln_vl.

*    SELECT * FROM vbap
*      INTO TABLE @DATA(item_orders)
*      FOR ALL ENTRIES IN @mt_orders
*      WHERE vbeln = @mt_orders-vbeln.
*
*    "Some code to loop through selected rows of MT_ORDERS & create deliveries
*    LOOP AT item_orders INTO DATA(ls_order).
*
*      " filling of lt_deliveries
*
*      CALL FUNCTION 'BAPI_OUTB_DELIVERY_CREATE_SLS'
*        TABLES
*          sales_order_items = lt_deliveries
*          created_items     = lt_created
*          return            = lt_return.
*
*      READ TABLE lt_created INTO DATA(ls_created) INDEX 1.
*      IF sy-subrc = 0 AND ls_created-deliv_numb IS NOT INITIAL.
*        lv_vbeln_vl = ls_created-deliv_numb.
*        WRITE: / 'Delivery created:', lv_vbeln_vl.
*
*        " Commit the changes
*        CALL FUNCTION 'BAPI_TRANSACTION_COMMIT'
*          EXPORTING
*            wait = 'X'.
*      ELSE.
*        LOOP AT lt_return INTO DATA(ls_ret).
*          WRITE: / 'Error:', ls_ret-message.
*        ENDLOOP.
*      ENDIF.
*
*    ENDLOOP.

*   CALL FUNCTION 'BAPI_DELIVERYPROCESSING_EXEC'

  ENDMETHOD.


  METHOD eliminate_blocked.

    DATA blocked_clients TYPE tt_blocked_clients.

    SELECT kunnr, aufsd
      FROM kna1
      FOR ALL ENTRIES IN @orders
      WHERE kunnr = @orders-kunnr
        AND aufsd IS NOT INITIAL
        INTO TABLE @blocked_clients.

    orders = FILTER #( orders
               EXCEPT IN blocked_clients WHERE kunnr = kunnr ).

  ENDMETHOD.


  METHOD get_order_list.

    result = orders.

  ENDMETHOD.


  METHOD read_orders.

    SELECT FROM vbak
      FIELDS vbeln, erdat, erzet, ernam, angdt,
             bnddt, audat, vbtyp, trvog, auart, kunnr
      WHERE vbeln IN @it_vbeln_rng
      INTO TABLE @orders.

  ENDMETHOD.
ENDCLASS.
