class ZCL_RULE1 definition
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



CLASS ZCL_RULE1 IMPLEMENTATION.


  METHOD get_agents.

    IF is_ekko-ekorg = 'ORG1'.
      result = VALUE #(
        ( otype = 'US' objid = 'GEORGE')
        ( otype = 'US' objid = 'MARY' ) ).
    ELSE.
      CHECK mr_next_rule IS NOT INITIAL.
      result = mr_next_rule->get_agents(
        is_ekko = is_ekko
        it_ekpo = it_ekpo ).
    ENDIF.

  ENDMETHOD.
ENDCLASS.
