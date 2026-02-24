*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZCHAIN..........................................*
DATA:  BEGIN OF STATUS_ZCHAIN                        .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZCHAIN                        .
CONTROLS: TCTRL_ZCHAIN
            TYPE TABLEVIEW USING SCREEN '0001'.
*.........table declarations:.................................*
TABLES: *ZCHAIN                        .
TABLES: ZCHAIN                         .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
