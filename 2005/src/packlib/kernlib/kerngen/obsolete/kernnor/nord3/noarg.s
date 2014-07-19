*
* $Id: noarg.s,v 1.1.1.1 1996/02/15 17:54:49 mclareni Exp $
*
* $Log: noarg.s,v $
* Revision 1.1.1.1  1996/02/15 17:54:49  mclareni
* Kernlib
*
*
       MODULE M_NOARG
%
% CERN PROGLIB# Z029    NOARG           .VERSION KERNNOR  1.11  811124
% ORIG.  H.OVERAS, CERN, 810803
%
% RETURNS NUMBER OF ARGUMENTS IN A SUBPROGRAM CALL
% BOTH AS FUNCTION VALUE AND IN ARGUMENT
%
       EXPORT NOARG
       ROUTINE NOARG
       LIB NOARG
VBAS:  STACK FIXED
PAR:   W BLOCK 1
       ENDSTACK
NOARG: ENTF VBAS
       W2:=4
       W1:=IND(B.0)(R2)
       W1=:IND(B.PAR)
       RET
       ENDROUTINE
       ENDMODULE
#ifdef CERNLIB_TCGEN_NOARG
#undef CERNLIB_TCGEN_NOARG
#endif