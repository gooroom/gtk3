#ifndef __RESOURCE__gtk_H__
#define __RESOURCE__gtk_H__

#include <gio/gio.h>

G_GNUC_INTERNAL GResource *_gtk_get_resource (void);

G_GNUC_INTERNAL void _gtk_register_resource (void);
G_GNUC_INTERNAL void _gtk_unregister_resource (void);

#endif
