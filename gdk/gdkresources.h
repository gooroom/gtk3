#ifndef __RESOURCE__gdk_H__
#define __RESOURCE__gdk_H__

#include <gio/gio.h>

G_GNUC_INTERNAL GResource *_gdk_get_resource (void);

G_GNUC_INTERNAL void _gdk_register_resource (void);
G_GNUC_INTERNAL void _gdk_unregister_resource (void);

#endif
