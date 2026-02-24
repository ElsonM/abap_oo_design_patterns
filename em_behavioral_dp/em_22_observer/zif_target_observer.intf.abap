INTERFACE zif_target_observer
  PUBLIC .

  CLASS-METHODS notify
    IMPORTING
      !iv_vkorg TYPE vkorg
      !it_data  TYPE zsdtt_target.

ENDINTERFACE.
