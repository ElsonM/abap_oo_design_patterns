CLASS zcl_abstract_template DEFINITION
  PUBLIC
  ABSTRACT
  CREATE PUBLIC.

  PUBLIC SECTION.
    TYPES:
      BEGIN OF t_quan,
        doc_key TYPE string,
        menge   TYPE menge_d,
        meins   TYPE meins,
      END OF t_quan,
      tt_quan TYPE STANDARD TABLE OF t_quan WITH DEFAULT KEY.

    METHODS get_avg_quan FINAL
      IMPORTING
        !iv_key       TYPE clike
      RETURNING
        VALUE(result) TYPE menge_d.

  PROTECTED SECTION.
    METHODS is_entity_available ABSTRACT
      IMPORTING
        !iv_key       TYPE clike
      RETURNING
        VALUE(result) TYPE abap_bool.

    METHODS get_quantity_list ABSTRACT
      IMPORTING
        !iv_key       TYPE clike
      RETURNING
        VALUE(result) TYPE tt_quan.

  PRIVATE SECTION.

ENDCLASS.



CLASS ZCL_ABSTRACT_TEMPLATE IMPLEMENTATION.


  METHOD get_avg_quan.

    CHECK is_entity_available( iv_key ) = abap_true.
    DATA(lt_quan) = get_quantity_list( iv_key ).

    CHECK lt_quan IS NOT INITIAL.
    LOOP AT lt_quan ASSIGNING FIELD-SYMBOL(<ls_quan>).
      result += <ls_quan>-menge.
    ENDLOOP.
    result /= lines( lt_quan ).

  ENDMETHOD.
ENDCLASS.
