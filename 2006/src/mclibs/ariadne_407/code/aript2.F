*
* $Id: aript2.F,v 1.1.1.1 1996/03/08 16:51:02 mclareni Exp $
*
* $Log: aript2.F,v $
* Revision 1.1.1.1  1996/03/08 16:51:02  mclareni
* Ariadne
*
*
#include "ariadne/pilot.h"
C***********************************************************************
C $Id: aript2.F,v 1.1.1.1 1996/03/08 16:51:02 mclareni Exp $
 
      REAL FUNCTION ARIPT2(I1,I2,I3)
 
C...ARiadne function Invariant PT2
 
C...Returns the invariant p_t^2 of three partons
 
      PARAMETER(MAXDIP=500,MAXPAR=500,MAXSTR=100)
 
      IMPLICIT DOUBLE PRECISION (D)
      IMPLICIT DOUBLE PRECISION (B)
      IMPLICIT LOGICAL (Q)
      COMMON /ARPART/ BP(MAXPAR,5),IFL(MAXPAR),QEX(MAXPAR),QQ(MAXPAR),
     $                IDI(MAXPAR),IDO(MAXPAR),INO(MAXPAR),INQ(MAXPAR),
     $                XPMU(MAXPAR),XPA(MAXPAR),PT2GG(MAXPAR),IPART
      SAVE /ARPART/
 
 
      ARIPT2=(ARMAS2(I1,I2)-(BP(I1,5)+BP(I2,5))**2)*
     $       (ARMAS2(I2,I3)-(BP(I2,5)+BP(I3,5))**2)/
     $        ARMAS3(I1,I2,I3)
 
      RETURN
 
C**** END OF ARIPT2 ****************************************************
      END
