# Microsoft Developer Studio Project File - Name="antlr" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

CFG=antlr - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "antlr.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "antlr.mak" CFG="antlr - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "antlr - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "antlr - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "antlr - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /Yu"stdafx.h" /FD /c
# ADD CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /Yu"stdafx.h" /FD /c
# ADD BASE RSC /l 0x40a /d "NDEBUG"
# ADD RSC /l 0x40a /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /machine:I386

!ELSEIF  "$(CFG)" == "antlr - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /Yu"stdafx.h" /FD /GZ /c
# ADD CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /Yu"stdafx.h" /FD /GZ /c
# ADD BASE RSC /l 0x40a /d "_DEBUG"
# ADD RSC /l 0x40a /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /debug /machine:I386 /pdbtype:sept
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib debug\aparser.obj debug\dlexerbase.obj debug\atokenbuffer.obj debug\sym.obj debug\grammar.obj debug\a.obj debug\alexer.obj /nologo /subsystem:console /debug /machine:I386 /out:"Debug/stoprun.exe" /pdbtype:sept /verbose:lib
# SUBTRACT LINK32 /pdb:none

!ENDIF 

# Begin Target

# Name "antlr - Win32 Release"
# Name "antlr - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\antlr.cpp

!IF  "$(CFG)" == "antlr - Win32 Release"

# PROP Ignore_Default_Tool 1

!ELSEIF  "$(CFG)" == "antlr - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputPath=.\antlr.cpp

"DEBUG/ANTLR.OBJ" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	cl /Zi /c /I. /IC:\todo.PCCTS\antlr_win32\pccts\h /IDEBUG /FoDEBUG\antlr.obj antlr.cpp

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\AuxA.cpp

!IF  "$(CFG)" == "antlr - Win32 Release"

# PROP Ignore_Default_Tool 1

!ELSEIF  "$(CFG)" == "antlr - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputPath=.\AuxA.cpp

"DEBUG\AUXA.OBJ" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	cl /c /Zi /I. /IC:\todo.PCCTS\antlr_win32\pccts\h /IDEBUG /FoDEBUG\AUXA.OBJ AUXA.CPP 
	cl /c /Zi /I. /IC:\todo.PCCTS\antlr_win32\pccts\h /IDEBUG /FoDEBUG\APARSER.OBJ C:\todo.PCCTS\antlr_win32\pccts\h\aparser.cpp 
	cl /c /Zi /I. /IC:\todo.PCCTS\antlr_win32\pccts\h /IDEBUG /FoDEBUG\DLEXERBASE.OBJ C:\todo.PCCTS\antlr_win32\pccts\h\dlexerbase.cpp 
	cl /c /Zi /I. /IC:\todo.PCCTS\antlr_win32\pccts\h /IDEBUG /FoDEBUG\ATOKENBUFFER.OBJ C:\todo.PCCTS\antlr_win32\pccts\h\atokenbuffer.cpp 
	cl /c /Zi /I. /IC:\todo.PCCTS\antlr_win32\pccts\h /IDEBUG /FoDEBUG\SYM.OBJ C:\todo.PCCTS\libros_etc_PCCTS\SUPPORT\SYM\sym.cpp 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\StdAfx.cpp
# ADD CPP /Yc"stdafx.h"
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=.\AuxA.h
# End Source File
# Begin Source File

SOURCE=.\StdAfx.h
# End Source File
# Begin Source File

SOURCE=.\SYM.H
# End Source File
# End Group
# Begin Source File

SOURCE=.\grammar.g

!IF  "$(CFG)" == "antlr - Win32 Release"

!ELSEIF  "$(CFG)" == "antlr - Win32 Debug"

# Begin Custom Build
InputPath=.\grammar.g

"debug\parser.dlg" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	C:\todo.PCCTS\antlr_win32\pccts\bin\antlr.exe -o DEBUG -CC grammar.g 
	C:\todo.PCCTS\antlr_win32\pccts\bin\dlg.exe -C2 -i -CC -cl ALexer -o DEBUG DEBUG\PARSER.DLG 
	cl /c /I. /IC:\todo.PCCTS\antlr_win32\pccts\h /IDEBUG /FoDEBUG\ALEXER.OBJ DEBUG\ALEXER.CPP 
	cl /c /I. /IC:\todo.PCCTS\antlr_win32\pccts\h /IDEBUG /FoDEBUG\A.obj DEBUG\A.CPP 
	cl /Zi /c /I. /IC:\todo.PCCTS\antlr_win32\pccts\h /IDEBUG /FoDEBUG\grammar.obj DEBUG\GRAMMAR.CPP 
	
# End Custom Build

!ENDIF 

# End Source File
# End Target
# End Project
