INTERFACE zif_dao PUBLIC.
  TYPES:
    BEGIN OF t_customer,
      code TYPE kunnr,
      obj  TYPE REF TO zcl_customer_dao,
    END OF t_customer,
    tt_customer TYPE STANDARD TABLE OF t_customer
                  WITH DEFAULT KEY.
  METHODS get_cust_list
    RETURNING
      VALUE(result) TYPE tt_customer.
ENDINTERFACE.
