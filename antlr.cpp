// antlr.cpp : Defines the entry point for the console application.
//


//-- Original Headers
#include "stdafx.h"
#include <stdio.h>
#include <stdlib.h>
#include "debug/tokens.h"
#include "debug/A.h"
#include "debug/ALexer.h"
#include "Sym.h"
#include "PBlackBox.h"
#include "AUXA.H"




typedef ANTLRCommonToken ANTLRToken;




//////////////////
//
//	globals
//

char	*gProgramName;
char	*gFilename;


//////////////////
//
//	enums
//




//////////////////
//
//	Prototypes
//


void	CheckArgsOK( int argc, char *argv[] );
bool	FileExists( const char *fileName );
bool	AnyParsingError();
void	InsertMarkInSrcFile( bool errFound );
void	DoError( const char *errStr );



//////////////////
//
//	Functions
//


//---------------------------------------------------------------------------------------- main()
int main(int argc, char *argv[])
{		
	char	errStr[135];
	
	
	ANTLRToken		aToken;		/* create a token to fill in for DLG */
	DLGFileInput	in(stdin);
			
	
	gProgramName = argv[0];

	CheckArgsOK( argc-1, argv );
	

	if ( FileExists( gFilename ) )
	{
	
		ParserBlackBox<ALexer, A, ANTLRToken> p1(gFilename);
		p1.parser()->e();
		

	}
			 
	
	return 0;
}




//------------------------------------------------------------------------------- CheckArgsOK()
void	CheckArgsOK( int argc, char *argv[] )
{
	const	kNumArgs = 1;	// [listfile]
		
	
	if ( argc != kNumArgs )
		DoError( "Wrong number of parameters!!!" );

	
	gFilename = argv[1];

}




//------------------------------------------------------------------------------ CheckFileExists()
bool	FileExists( const char *fileName )
{
	FILE	*fd;
	bool	out;

	if ( !( fd = fopen( fileName, "r" ) ) )
	{
		fprintf( stderr,
				 "\nERROR: %s could not be opened!!!\n\n",
				 fileName );
		out = false;
	}
	else
	{
		out = true;
		fclose( fd );
	}
	

	return out;
}






//--------------------------------------------------------------------------------------- DoError()
void	DoError( const char *errStr )
{
	
	fprintf( stderr,
			 "\n\n-----------------------------------------------------------" );

	fprintf( stderr,		
			"\nERROR: %s\n"
			"\nUsage: %s [filename]"
			"\nwhere:"
			"\n\tfilename : cobol source file to be parsed\n"
			"\nNOTES:"
			"\n\tThe translation is written on the standard output"
			"\n\tThe log is written on stderr\n"
			"\n\tSo, to translate file.cob in file.cbl with log on log.txt"
			"\n\tyou should type in your command prompt:"
			"\n\t\t %s file.cob >file.cbl 2>log.txt\n",
			errStr, gProgramName, gProgramName );

	fflush( stdout );
	exit(1);
	
}





