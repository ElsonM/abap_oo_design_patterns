INTERFACE zif_tab_data_provider PUBLIC.
  METHODS get_tab_data
    IMPORTING
      !is_param     TYPE zst_param
    RETURNING
      VALUE(result) TYPE ztt_tab.
ENDINTERFACE.
