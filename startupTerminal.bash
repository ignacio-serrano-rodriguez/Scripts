#!/bin/bash
gnome-terminal --command="bash -i -c 'cd ~; neofetch; echo Display server: $XDG_SESSION_TYPE; echo; upd; exec bash'"