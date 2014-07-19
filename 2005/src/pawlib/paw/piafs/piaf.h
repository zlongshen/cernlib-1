/*
 * $Id: piaf.h,v 1.1 1996/04/02 21:48:27 thakulin Exp $
 *
 * $Log: piaf.h,v $
 * Revision 1.1  1996/04/02 21:48:27  thakulin
 * Renamed from piaf.inc.
 *
 * Revision 1.1.1.1  1996/03/01 11:39:26  mclareni
 * Paw
 *
 *
 *
 * piaf.h
 */
/*CMZ :  2.05/14 06/07/94  17.21.50  by  Fons Rademakers*/
/*-- Author :    Fons Rademakers   16/02/94*/


#ifndef MIN
#define MIN(a,b) ( (a<b) ? (a) : (b) )
#endif

#ifndef MAX
#define MAX(a,b) ( (a>b) ? (a) : (b) )
#endif


/* Types used for Fortran interface */

typedef int   INTEGER;
typedef float REAL;
typedef void  SUBROUTINE;


/* Piaf logging type definitions */

enum mess_t { BEGIN, EXEC_BEGIN, EXEC_END, SUMMARY, END, PUTA, GETA };

typedef struct {
   char        user[32];               /* local user name */
   char        group[16];              /* local group name */
   char        remote_user[32];        /* remote user name */
   char        remote_host[64];        /* remote host name */
   char        master_node[64];        /* host on which master runs */
   char        version[16];            /* piafserv version */
   int         protocol;               /* piafserv protocol level */
   int         no_slaves;              /* number of slaves running */
   int         no_slaves_active;       /* number of slaves used in query */
   int         workstation_type;       /* remote workstation type */
   int         cache_size;             /* size of Ntuple col. cache per slave */
   int         seq;                    /* status message sequence number */
   char        nt_cmd[256];            /* Ntuple query */
   int         nt_tot;                 /* total number of executed queries */
   int         nt_type;                /* type of ntuple accessed in query */
   int         nt_id;                  /* Ntuple id */
   int         nt_chain;               /* Ntuple chain? */
   int         sel_func;               /* Type of selection function */
   int         nt_columns;             /* number of columns in Ntuple */
   int         no_columns;             /* number of columns accessed in query */
   int         tot_no_columns;         /* total number of columns accessed */
   int         no_rows;                /* number of rows accessed in query */
   int         tot_no_rows;            /* total number of rows accessed */
   int         hits;                   /* number of columns in cache */
   float       tot_hits;               /* total cache hit rate */
   float       rio;                    /* amount of real (disk) I/O */
   float       tot_rio;                /* total amount of real I/O */
   float       vio;                    /* amount of virtual (cache) I/O */
   float       tot_vio;                /* total amount of virtual I/O */
   float       cp_time;                /* cp used by query */
   float       tot_cp_time;            /* total cp time */
   float       real_time;              /* real time used by query */
   float       tot_real_time;          /* total real time */
   float       put_io;                 /* I/O generated by PUTA */
   float       tot_put_io;             /* Total I/O generated by PUTA */
   float       get_io;                 /* I/O generated by GETA */
   float       tot_get_io;             /* Total I/O generated by GETA */
} LogStruct;


/* Logging function prototypes */

extern void piafl_open(int);
extern void piafl_begin(void);
extern void piafl_info(char *);
extern void piafl_error(char *);
extern void piafl_summary(void);
extern void piafl_end(int);
extern void piafl_puta(int, float, float);
extern void piafl_geta(int, float, float);

/* Global variables */

extern int         *active_slaves;
extern int         *running_slaves;
extern int          errno;
extern LogStruct    ulog;
