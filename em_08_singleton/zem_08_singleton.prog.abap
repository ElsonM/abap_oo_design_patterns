*&---------------------------------------------------------------------*
*& Report ZEM_08_SINGLETON
*&---------------------------------------------------------------------*
*& Client program for the Singleton Design Pattern
*&---------------------------------------------------------------------*
REPORT zem_08_singleton.

* Get data from reader
DATA(lo_read) = NEW zcl_read_singleton( ).
lo_read->read_data( ).
DATA(lt_raw) = lo_read->get_data( ).

* Do calculations
DATA(lo_calc) = NEW zcl_calculate_singleton( ).
lo_calc->calculate( lt_raw ).
DATA(lt_final) = lo_calc->get_calculated_data( ).

* Create documents
DATA(lo_post) = NEW zcl_post_singleton( ).
lo_post->create_documents( lt_final ).
