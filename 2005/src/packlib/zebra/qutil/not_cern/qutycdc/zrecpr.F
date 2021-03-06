      SUBROUTINE ZRECPR

C-    PRINT  DUMP + TRACE-BACK

#include "zebra/zunit.inc"
#include "zebra/quest.inc"
      COMMON /EXCHPAK/JCONDT,JCODE,LREP,AB(8),X(8),PARITY,JCDID

      IF (JCODE.EQ.0)              GO TO 31

C--                REPRIEVE CONDITION

      WRITE (IQLOG,9000) JCONDT,JCODE
      IF (IQUEST(5).LT.0)          GO TO 32
      NTOT = 2*IQUEST(5)
      CALL REPDUMP (IQLOG,IQUEST(5),NTOT)
      GO TO 32

C--                FORTRAN LIBRARY CONDITION

   31 WRITE (IQLOG,9000) JCONDT,(AB(J),J=1,6)
   32 CALL TRACEQR (IQLOG,7)
      RETURN

 9000 FORMAT (10H0ZRECOV.  ,20(1H-),21H  SYSTEM ERROR NUMBER,I4,3X,6A10)
      END
