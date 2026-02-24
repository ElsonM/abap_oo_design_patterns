*&---------------------------------------------------------------------*
*& Report ZEM_06_MULTITON
*&---------------------------------------------------------------------*
*& Client program for the Multiton Design Pattern
*&---------------------------------------------------------------------*
REPORT zem_06_multiton.

PARAMETERS p_lifnr TYPE lifnr OBLIGATORY.

START-OF-SELECTION.
    DATA(vendor) = zcl_vendor_multiton=>get_instance( p_lifnr ).
    DATA(balance) = vendor->get_balance( ).

    "Some code to display the result to the user
