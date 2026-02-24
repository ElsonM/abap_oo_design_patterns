*&---------------------------------------------------------------------*
*& Report ZEM_05_LAZY_INITIALIZATION
*&---------------------------------------------------------------------*
*& Client program for the Lazy Initialization Design Pattern
*&---------------------------------------------------------------------*
REPORT zem_05_lazy_initialization.

"Some data definitions
"Maybe a selection screen

DATA(critcal) = NEW zcl_critical( ).

critcal->do_critical_stuff( ).

IF NOT critcal->has_error( ).
  RETURN.
ENDIF.

DATA(error) = critcal->get_error_obj( ).
error->write_to_application_log( ).
error->send_emails( ).
error->create_ticket( ).

"Some code to display results to user
