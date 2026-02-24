CLASS zcl_agent_rule DEFINITION
  PUBLIC
  ABSTRACT
  CREATE PUBLIC.

  PUBLIC SECTION.
    TYPES:
      tt_agent TYPE STANDARD TABLE OF swhactor WITH DEFAULT KEY,
      tt_ekpo  TYPE STANDARD TABLE OF ekpo WITH DEFAULT KEY.

    METHODS set_next_rule FINAL
      IMPORTING
        !ir_rule TYPE REF TO zcl_agent_rule.

    METHODS get_agents ABSTRACT
      IMPORTING
        !is_ekko      TYPE ekko
        !it_ekpo      TYPE tt_ekpo
      RETURNING
        VALUE(result) TYPE tt_agent.

  PROTECTED SECTION.
    DATA mr_next_rule TYPE REF TO zcl_agent_rule.

  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_AGENT_RULE IMPLEMENTATION.


  METHOD set_next_rule.
    mr_next_rule = ir_rule.
  ENDMETHOD.
ENDCLASS.
