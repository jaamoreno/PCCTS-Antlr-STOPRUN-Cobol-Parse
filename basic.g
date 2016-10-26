//---------------------------------------------------------
//
// TestA.g - Grammar corresponding to the file TTTT.C
//
// (c) 1998 Andersen Consulting
// All rigths reserved
//---------------------------------------------------------
 
<<
	typedef ANTLRCommonToken ANTLRToken;
	#include "AuxA.h"
	#include "sym.h"            
>>


#lexaction	
<<
	#include "AuxA.h"
>>



#lexclass START
#token  ID				"[A-Z a-z 0-9]+"
#token  NL				"\n"				<<skip(); newline();>>
#token  ANY             "~[ ]"            


class A {

e		: (line)* "@"
		;

line	: t:ID <<IncremetCounter($t->getText());>>
		| ANY
		;

}
