*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZTAB_LABEL......................................*
DATA:  BEGIN OF STATUS_ZTAB_LABEL                    .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZTAB_LABEL                    .
CONTROLS: TCTRL_ZTAB_LABEL
            TYPE TABLEVIEW USING SCREEN '0001'.
*.........table declarations:.................................*
TABLES: *ZTAB_LABEL                    .
TABLES: ZTAB_LABEL                     .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
