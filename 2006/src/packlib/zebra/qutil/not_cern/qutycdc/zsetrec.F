      SUBROUTINE ZSETREC (IPARAM)

C-    INITIALISE RECOVERY TO ZRECOV

      COMMON /EXCHPAK/JCONDT,JCODE,LREP,AB(8),X(8),PARITY,JCDID
      EXTERNAL     ZRECOV, REPFL
      DIMENSION    LIST(6)
      DATA  LIST   /1,0,0,0,2H**,-1/

      CALL REPINIT (ZRECOV)

      LIST(5) = LOCF (REPFL)
      DO 9 J=1,49
      CALL SYSTEMC (J,LIST)
    9 CONTINUE
      RETURN
      END
