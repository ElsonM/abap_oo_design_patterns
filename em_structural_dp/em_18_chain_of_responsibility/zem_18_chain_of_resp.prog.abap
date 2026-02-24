*&---------------------------------------------------------------------*
*& Report ZEM_18_CHAIN_OF_RESP
*&---------------------------------------------------------------------*
*& Client program for Chain of Responsibility Design Pattern
*&---------------------------------------------------------------------*
REPORT zem_18_chain_of_resp.

PARAMETERS: p_ebeln TYPE ekko-ebeln,
            p_ekorg TYPE ekko-ekorg.

TYPES:
  BEGIN OF t_chain,
    priority TYPE zchain-priority,
    clsname  TYPE zchain-clsname,
    obj      TYPE REF TO zcl_agent_rule,
  END OF t_chain,
  tt_chain TYPE STANDARD TABLE OF t_chain WITH DEFAULT KEY.

DATA:
  gt_chain TYPE tt_chain,
  gt_ekpo  TYPE zcl_agent_rule=>tt_ekpo,
  gs_ekko  TYPE ekko,
  obj      TYPE REF TO object.

FIELD-SYMBOLS <fs_chain> TYPE t_chain.

* Read EKKO + EKPO to build our decision base
SELECT SINGLE * INTO gs_ekko FROM ekko WHERE ebeln = p_ebeln.
SELECT * INTO TABLE gt_ekpo FROM ekpo WHERE ebeln = p_ebeln.

* Read ZCHAIN to build the list of rules
SELECT * INTO CORRESPONDING FIELDS OF TABLE gt_chain FROM zchain.

LOOP AT gt_chain ASSIGNING <fs_chain>.
  CREATE OBJECT obj TYPE (<fs_chain>-clsname).
  <fs_chain>-obj ?= obj.
ENDLOOP.

* Link the rules like a chain
LOOP AT gt_chain ASSIGNING <fs_chain>.
  ASSIGN gt_chain[ sy-tabix + 1 ] TO FIELD-SYMBOL(<fs_next>).
  CHECK sy-subrc = 0.
  <fs_chain>-obj->set_next_rule( <fs_next>-obj ).
ENDLOOP.

* Start agent determination process by calling the first rule
ASSIGN gt_chain[ 1 ] TO <fs_chain>.
DATA(gt_agents) = <fs_chain>-obj->get_agents(
  is_ekko = gs_ekko
  it_ekpo = gt_ekpo ).

* Return agents

* Some magic workflow code
