*
* $Id: eisch2.F,v 1.1.1.1 1996/04/01 15:02:39 mclareni Exp $
*
* $Log: eisch2.F,v $
* Revision 1.1.1.1  1996/04/01 15:02:39  mclareni
* Mathlib gen
*
*
#include "gen/pilot.h"
      SUBROUTINE EISCH2(NM,N,AR,AI,WR,IERR,WORK)
C     ALL EIGENVALUES OF A COMPLEX HERMITIAN MATRIX
C
      DIMENSION AR(NM,NM),AI(NM,NM),WR(N),WORK(1)
      CALL HTRIDI(NM,N,AR,AI,WR,WORK,WORK,WORK(N+1))
      CALL TQL1(N,WR,WORK,IERR)
      RETURN
      END
