class ZCL_RULE3 definition
  public
  inheriting from ZCL_AGENT_RULE
  final
  create public .

public section.

  methods GET_AGENTS
    redefinition .
protected section.
private section.
ENDCLASS.



CLASS ZCL_RULE3 IMPLEMENTATION.


  METHOD get_agents.

    IF is_ekko-ekorg = 'ORG4'.
      "Determine the plant
      "Determine agents based on the plant and put into RESULT
    ELSE.
      CHECK mr_next_rule IS NOT INITIAL.
        result = mr_next_rule->get_agents(
          is_ekko = is_ekko
          it_ekpo = it_ekpo ).
    ENDIF.

  ENDMETHOD.
ENDCLASS.
