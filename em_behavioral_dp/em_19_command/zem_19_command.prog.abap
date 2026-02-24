*&---------------------------------------------------------------------*
*& Report ZEM_19_COMMAND
*&---------------------------------------------------------------------*
*& Client program for Command Design Pattern
*&---------------------------------------------------------------------*
REPORT zem_19_command.

PARAMETERS p_ktokd TYPE t077d-ktokd.

DATA:
  command TYPE REF TO zcl_command,
  obj     TYPE REF TO object.

DATA gs_info TYPE zst_info.

* Get the name of the corresponding command class
SELECT SINGLE clsname INTO @DATA(class_name)
  FROM zsd_command
  WHERE ktokd = @p_ktokd.

* Create objects
DATA(receiver) = NEW zcl_receiver( ).

CREATE OBJECT obj TYPE (class_name).
command ?= obj.
command->set_receiver( receiver ).

DATA(invoker) = NEW zcl_invoker( gs_info ).
invoker->set_command( command ).

* Create documents
invoker->execute_command( ).
