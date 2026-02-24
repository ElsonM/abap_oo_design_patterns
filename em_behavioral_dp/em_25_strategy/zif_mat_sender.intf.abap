INTERFACE zif_mat_sender
  PUBLIC.

  TYPES:
    BEGIN OF t_mara,
      matnr TYPE mara-matnr,
      matkl TYPE mara-matkl,
      meins TYPE mara-meins,
    END OF t_mara,
    tt_mara TYPE STANDARD TABLE OF t_mara WITH DEFAULT KEY.

  METHODS send_material
    IMPORTING
      !it_mara TYPE tt_mara.

ENDINTERFACE.
