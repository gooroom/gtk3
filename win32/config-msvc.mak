# NMake Makefile portion for enabling features for Windows builds

!include detectenv-msvc.mak

# Default prefix if not defined
!ifndef PREFIX
PREFIX=..\..\vs$(VSVER)\$(PLAT)
!endif

# Configurable paths to the various interpreters we need
!ifndef PERL
PERL = perl
!endif

!ifndef PYTHON
PYTHON=python
!endif

# Path to the pkg-config tool, if not already in the PATH
!if "$(PKG_CONFIG)" == ""
PKG_CONFIG=pkg-config
!endif

# Configurable paths to the various scripts and tools that we are using
!ifndef GLIB_MKENUMS
GLIB_MKENUMS = $(PREFIX)\bin\glib-mkenums
!endif

!ifndef GLIB_GENMARSHAL
GLIB_GENMARSHAL = $(PREFIX)\bin\glib-genmarshal
!endif

!ifndef GLIB_COMPILE_RESOURCES
GLIB_COMPILE_RESOURCES = $(PREFIX)\bin\glib-compile-resources.exe
!endif

!ifndef GDBUS_CODEGEN
GDBUS_CODEGEN = $(PREFIX)\bin\gdbus-codegen
!endif

# Please do not change anything beneath this line unless maintaining the NMake Makefiles
GTK_VERSION = 3.24.24

GDK_PREPROCESSOR_FLAGS =	\
	/DG_LOG_USE_STRUCTURED=1	\
	/DGDK_COMPILATION	\
	/I..	\
	/I..\gdk	\
	/I..\gdk\win32

GTK_PREPROCESSOR_FLAGS =	\
	 /I..\gtk	\
	 /I..\gdk	\
	 /I..\gdk\win32	\
	 /I..	\
	 /I$(PREFIX)\include\gdk-pixbuf-2.0	\
	 /I$(PREFIX)\include\pango-1.0	\
	 /I$(PREFIX)\include\atk-1.0	\
	 /I$(PREFIX)\include\cairo	\
	 /I$(PREFIX)\include\gio-win32-2.0	\
	 /I$(PREFIX)\include\glib-2.0	\
	 /I$(PREFIX)\lib\glib-2.0\include	\
	 /I$(PREFIX)\include	\
	 /DHAVE_CONFIG_H	\
	 /DG_DISABLE_SINGLE_INCLUDES	\
	 /DATK_DISABLE_SINGLE_INCLUDES	\
	 /DGDK_PIXBUF_DISABLE_SINGLE_INCLUDES	\
	 /DGTK_DISABLE_SINGLE_INCLUDES	\
	 /D_USE_MATH_DEFINES	\
	 /DGTK_COMPILATION	\
	 /DG_LOG_DOMAIN=\"Gtk\"	\
	 /DGTK_HOST=\"i686-pc-vs$(VSVER)\"	\
	 /DGTK_PRINT_BACKENDS=\"file\"	\
	 /DGTK_PRINT_BACKEND_ENABLE_UNSUPPORTED	\
	 /DINCLUDE_IM_am_et	\
	 /DINCLUDE_IM_cedilla	\
	 /DINCLUDE_IM_cyrillic_translit	\
	 /DINCLUDE_IM_ime	\
	 /DINCLUDE_IM_inuktitut	\
	 /DINCLUDE_IM_ipa	\
	 /DINCLUDE_IM_multipress	\
	 /DINCLUDE_IM_thai	\
	 /DINCLUDE_IM_ti_er	\
	 /DINCLUDE_IM_ti_et	\
	 /DINCLUDE_IM_viqr	\
	 /DGTK_LIBDIR=\"$(PREFIX:\=/)/lib\"	\
	 /DGTK_DATADIR=\"$(PREFIX:\=/)/share\"	\
	 /DGTK_DATA_PREFIX=\"$(PREFIX:\=/)\"	\
	 /DGTK_SYSCONFDIR=\"$(PREFIX:\=/)/etc\"	\
	 /DMULTIPRESS_CONFDIR=\"$(PREFIX:\=/)/etc/gtk-3.0\"	\
	 /DMULTIPRESS_LOCALEDIR=\"$(PREFIX:\=/)/share/locale\"	\
	 /DGTK_VERSION=\"$(GTK_VERSION)\"	\
	 /DGTK_BINARY_VERSION=\"3.0.0\"	\
	 /DGDK_DISABLE_DEPRECATED	\
	 /DISOLATION_AWARE_ENABLED
