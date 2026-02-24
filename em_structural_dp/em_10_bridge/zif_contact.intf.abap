INTERFACE zif_contact
  PUBLIC .

  TYPES:
    BEGIN OF t_info,
      phone TYPE char30,
      email TYPE string,
    END OF t_info.
  METHODS get_contact_info
    IMPORTING
      !iv_recipient TYPE char10
    RETURNING
      VALUE(result) TYPE t_info.

ENDINTERFACE.
