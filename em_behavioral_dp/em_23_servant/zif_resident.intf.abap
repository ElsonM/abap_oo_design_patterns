INTERFACE zif_resident
  PUBLIC.

  TYPES:
    BEGIN OF t_raw_address,
      name   TYPE string,
      phone  TYPE string,
      street TYPE string,
      "Some further fields
    END OF t_raw_address.

  METHODS
    get_raw_address_data
      RETURNING
        VALUE(result) TYPE t_raw_address.

ENDINTERFACE.
