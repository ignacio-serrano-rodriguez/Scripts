#!/bin/bash
gnome-terminal -- bash -i -c 'cd ~; neofetch; echo -e "Display Server: $XDG_SESSION_TYPE\n"; upd; exec bash'