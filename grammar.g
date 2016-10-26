 
<<
	typedef ANTLRCommonToken ANTLRToken;
	#include "AuxA.h"
	#include "sym.h"            

>>


#lexaction	
<<
	#include "AuxA.h"
>>



//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ START
#lexclass START

#token	COMMENT_LINE		"[\ 0-9][\ 0-9][\ 0-9][\ 0-9][\ 0-9][\ 0-9] [\* \/ \-] ~[\n]* \n" <<newline();>>
#token	BEGLINE				"[\ 0-9][\ 0-9][\ 0-9][\ 0-9][\ 0-9][\ 0-9][\ \t]" <<mode(IN_LINE); printf( "       " ); skip();>>
#token	BLANK_LINE			"\n" <<skip(); newline(); printf( "\n" );>>
#token	BLANK_LINE1			"\ \n" <<skip(); newline(); printf( "\n" );>>
#token	BLANK_LINE2			"\ \ \n" <<skip(); newline(); printf( "\n" );>>
#token	BLANK_LINE3			"\ \ \ \n" <<skip(); newline(); printf( "\n" );>>
#token	BLANK_LINE4			"\ \ \ \ \n" <<skip(); newline(); printf( "\n" );>>
#token	BLANK_LINE5			"\ \ \ \ \ \n" <<skip(); newline(); printf( "\n" );>>
#token	BLANK_LINE6			"\ \ \ \ \ \ \n" <<skip(); newline(); printf( "\n" );>>




//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ IN_LINE
#lexclass IN_LINE


#token	STR					"\' ~[\' \n]+"
#token	PROCEDURE			"PROCEDURE"		<<mode(IN_PCD);>>

#token	WORKING_STORAGE		"WORKING\-STORAGE {\ }+ SECTION {\ }* \."

#token	STOP_RUN			"STOP {\ }+ RUN{\.}"
#token	GOBACK				"GOBACK {\.}"

#token	SPC					"[\ ]" <<skip(); printf( " " );>>
#token	TAB					"[\t]" <<skip(); printf( "\t" );>>

#token	ID					"[A-Z a-z \_ \- 0-9 \: \. ]+"
#token	NL					"\n"	<<skip(); newline(); printf( "\n" ); mode(START);>>
#token	ANY					"~[ ]"


#tokclass AnyTok			{ ID ANY STR }
#tokclass STOP_TOKEN		{ STOP_RUN GOBACK }




//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ IN_PCD
#lexclass IN_PCD

#token	PCD_DIVISION		"DIVISION"		<<mode(IN_PCD_DIV);>>

#token						"\ " <<skip(); printf( " " );>>
#token						"\t" <<skip(); printf( "\t" );>>
#token						"\n" <<skip(); newline(); printf( "\n" ); mode(START);>>

#token	PCD_ID				"[A-Z a-z \_ \- 0-9 \: ]+"
#token	PCD_ANY				"~[ ]"


#tokclass PCD_ANY_TOK		{ PCD_ID PCD_ANY }



//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ IN_PCD_DIV
#lexclass IN_PCD_DIV


#token	IN_COMMENT			"[\ 0-9][\ 0-9][\ 0-9][\ 09][\ 0-9][\ 0-9] [\* \/] ~[\n]* \n" <<skip(); newline();>>
#token	IN_BEGLINE			"[\ 0-9][\ 0-9][\ 0-9][\ 0-9][\ 0-9][\ 0-9][\ \t]" <<printf( "       " ); skip();>>
#token						"\ "			<<skip(); printf( " " );>>
#token						"\ \ "			<<skip(); printf( "  " );>>
#token						"\ \ \ "		<<skip(); printf( "   " );>>
#token						"\ \ \ \ "		<<skip(); printf( "    " );>>
#token						"\ \ \ \ \ "	<<skip(); printf( "     " );>>
#token						"\ \ \ \ \ \ "	<<skip(); printf( "      " );>>



#token	IN_TAB				"\t" <<skip(); printf( "\t" );>>
#token	IN_NL				"\n" <<skip(); newline(); printf( "\n" );>>



#token	IN_USING			"USING"
#token	IN_ID				"[A-Z a-z \_ \- 0-9]+"
#token	IN_DOT				"\."	<<mode(START);>>




class A {


e		:	cobol_src_file
			"@"
		;
		


cobol_src_file
		:
			
			(
				cobol_line
			)*
		;



cobol_line	
		:
		
			comment_line
		|	procedure
		|	stop_run
		|	working_storage
		|	code_line

		;



comment_line	
		:
		
			commentLine:COMMENT_LINE 
			<<printf( "      %s", ($commentLine->getText())+6  );>>
		;




procedure
		:

			p:PROCEDURE				<<printf( "%s", $p->getText() );>>
			procedure_rule
		;



			
procedure_rule
		:
			d:division_rule
		|	(
				a:PCD_ANY_TOK			<<printf( "%s", $a->getText() );>>
			)*
						
		;


division_rule
		:

			d:PCD_DIVISION			<<printf( "%s", $d->getText() );>>
			{
				us:IN_USING			<<printf( "%s", $us->getText() );>>
				(
					id:IN_ID		<<printf( "%s", $id->getText() );>>
				)+
			}
			dt:IN_DOT	

				<<
					printf( "%s", $dt->getText() );
					DumpConnAttribCall();				
				>>
		;



stop_run
		:
			ts:STOP_TOKEN
				<<
					DumpStopRunBlock();
					printf("           %s",$ts->getText());
				>>
		;



working_storage
		:
			ws:WORKING_STORAGE 
				<< 
					printf( "%s", $ws->getText() );
					DumpConnAttribVars();
				>>
		;

code_line	
		:

			part:AnyTok		<<printf( "%s", $part->getText() );>>	
		;




} // class A


