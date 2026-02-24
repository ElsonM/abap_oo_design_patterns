INTERFACE zif_material
  PUBLIC .

  METHODS set_code IMPORTING !iv_matnr TYPE matnr.
  METHODS set_text IMPORTING !iv_maktx TYPE maktx.
  METHODS set_uom IMPORTING !iv_meins TYPE meins.
  METHODS get_code RETURNING VALUE(result) TYPE matnr.
  METHODS get_text RETURNING VALUE(result) TYPE maktx.
  METHODS get_uom RETURNING VALUE(result) TYPE meins.

ENDINTERFACE.
