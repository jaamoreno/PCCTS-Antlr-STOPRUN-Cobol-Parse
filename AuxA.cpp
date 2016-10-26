// auxa.cpp: funciones auxiliares

#include "STDAFX.H"
#include <sym.h>
#include <string.h>

char FileName[300];
Sym *DlgScope = NULL;
void zzs_print(Sym *s, char *FileName);



void InitAux(char *FN)
{
	// Create Symbol Table
//    zzs_init(1001, 10000);
//	zzs_scope(&DlgScope);
	strcpy(FileName, FN);
}

void EndAux(char *FileName)
{
	//zzs_print(DlgScope, FileName);
}



void zzs_print(Sym *s, char *FileName)
{
	char Name[]="";
	char Dir[]="";

	if (s == NULL)
		return;
    printf("%-40s|%4ld|%-40s\n", FileName, s->counter, s->symbol);
	zzs_print(s->scope, FileName);
	return;
}


////////////////////////
//
//	Recent additions
//

const char *gProgramName = "stoprun.exe";

void	DumpConnAttribCall()
{

	printf( "\n      ***** %s: including call to connection attributes routine"
			"\n      ***** begin\n", gProgramName );
	printf(	"           CALL C-QA9CCON.\n" );

	printf( "      ***** end\n\n" );	
}





void	DumpStopRunBlock()
{
	printf( "\n      ***** %s: including stop run/goback management block"
			"\n      ***** begin\n", gProgramName );

	printf(	"           EXEC SQL\n"
			"             COMMIT\n"
			"           END-EXEC\n" );
	printf( "      ***** end\n\n" );	

}




void	DumpConnAttribVars()
{
	printf( "\n      ***** %s: including connection attributes routine vars"
			"\n      ***** begin\n", gProgramName );
	printf(	"       01 C-QA9CCON PIC X(8) VALUE 'QA9CCON'.\n" );
			
	printf( "      ***** end\n\n" );
	
}