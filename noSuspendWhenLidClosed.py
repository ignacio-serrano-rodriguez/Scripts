#!/usr/bin/python3
# SPDX-License-Identifier: GPL-3.0+
# License-Filename: LICENSES/GPL-3.0

import gi
gi.require_version("GLib", "2.0")

from gi.repository import Gio, GLib

def on_activate(app):
    if app._inhibitor:
        return

    app.hold()

    bus = Gio.bus_get_sync(Gio.BusType.SYSTEM, None)
    var, fdlist = bus.call_with_unix_fd_list_sync('org.freedesktop.login1',
                                                  '/org/freedesktop/login1',
                                                  'org.freedesktop.login1.Manager',
                                                  'Inhibit',
                                                  GLib.Variant('(ssss)',
                                                               ('handle-lid-switch',
                                                                'gnome-tweak-tool-lid-inhibitor',
                                                                'user preference',
                                                                'block')),
                                                  None, 0, -1, None, None)
    app._inhibitor = Gio.UnixInputStream(fd=fdlist.steal_fds()[var[0]])

def on_quit_action(action, param, app):
    app.quit()

if __name__ == '__main__':
    app = Gio.Application(application_id='org.gnome.tweak-tool.lid-inhibitor', flags=0)
    app.connect('activate', on_activate)
    app._inhibitor = None

    action = Gio.SimpleAction(name='quit')
    app.add_action(action)
    action.connect('activate', on_quit_action, app)

    app.run([])