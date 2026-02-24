class ZCX_BC_CONTAINER_VAR definition
  public
  inheriting from CX_STATIC_CHECK
  create public .

public section.

  constants VAR_MISSING type SOTR_CONC value '6732E63A96131FE180A0C5548DAFD1F1' ##NO_TEXT.
  data NAME type STRING .

  methods CONSTRUCTOR
    importing
      !TEXTID like TEXTID optional
      !PREVIOUS like PREVIOUS optional
      !NAME type STRING optional .
protected section.
private section.
ENDCLASS.



CLASS ZCX_BC_CONTAINER_VAR IMPLEMENTATION.


  method CONSTRUCTOR.
CALL METHOD SUPER->CONSTRUCTOR
EXPORTING
TEXTID = TEXTID
PREVIOUS = PREVIOUS
.
me->NAME = NAME .
  endmethod.
ENDCLASS.
