dotNet = C:\Windows\Microsoft.NET\Framework64\v4.0.30319
vc_base = C:\Program Files (x86)\Microsoft Visual Studio 10.0\VC
vc = $(vc_base)\bin\amd64
inc = $(vc_base)\include
lib = $(vc_base)\lib\amd64
sdk_base = C:\Program Files (x86)\Microsoft SDKs\Windows\v7.0A
sdklib = $(sdk_base)\Lib\x64
sdkinc = $(sdk_base)\Include

def = /D_WIN32_WINNT=0x0600
lnk =  /link /LIBPATH:"$(lib)" /LIBPATH:"$(sdklib)" httpapi.lib
cl_params = /EHsc /MT $(def) /I "$(inc)" /I "$(sdkinc)"
cl = $(vc)\cl.exe

main.exe : *.cpp
	"$(cl)" $(cl_params) main.cpp $(lnk) 
clear:
	del *.exe *.pdb *.obj TestResult.xml
