/* T e m p l a t e  F o r  S y m b o l  T a b l e  M a n a g e r */
#ifndef __SYM_H
#define __SYM_H


/* define some hash function */
#ifndef HASH
#define HASH(p, h) while ( *p != '\0' ) h = (h<<1) + *p++;
#endif

#define MAX_VALUES      20

/* minimum symbol table record */
typedef struct _sym {
	char *symbol;
	struct _sym 
		*next, 
		*prev, 
		**head, 
		*scope;
	unsigned int hash;
    long counter;
	int def;
	char *Args;
} Sym; //, *SymPtr;

//--- Field Type (FieldType)

#define TYP_CHAR		1
#define TYP_UCHAR		2
#define TYP_CHAR_NT		3
#define TYP_SHORT		4
#define TYP_USHORT		5
#define TYP_LONG		6
#define TYP_ULONG		7
#define TYP_FLOAT		8
#define TYP_DOUBLE		9
#define TYP_DATE		10
#define	TYP_TIME		11
#define TYP_VIEW_WARN	12
#define TYP_LISTBOX		13
#define TYP_LONG_DOUBLE	14


//--- Prototypes

void zzs_init(int, int);
void zzs_done(void);
void zzs_add(char *, Sym *);
Sym *zzs_get(char *);
void zzs_del(Sym *);
void zzs_keydel(char *);
Sym **zzs_scope(Sym **);
Sym *zzs_rmscope(Sym **);
void zzs_stat(void);
Sym *zzs_new(char *);
Sym *zzs_newadd(char *);
char *zzs_strdup(char *);



//void IncrementCounter(char *tx);
void PrintNum(char *tx, int Par, int InProc);


#endif
