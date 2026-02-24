class ZCL_RULE2 definition
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



CLASS ZCL_RULE2 IMPLEMENTATION.


  METHOD GET_AGENTS.

    IF is_ekko-ekorg = 'ORG2' OR is_ekko-ekorg = 'ORG3'.
      "Calculate the amount sum in IT_EKPO
      "Determine agents based on sum and put into RESULT
    ELSE.
      CHECK mr_next_rule IS NOT INITIAL.
      result = mr_next_rule->get_agents(
        is_ekko = is_ekko
        it_ekpo = it_ekpo ).
    ENDIF.

  ENDMETHOD.
ENDCLASS.
