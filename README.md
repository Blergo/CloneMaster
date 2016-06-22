# CloneMaster
 
This is a continuation of Redo Backup and is based on their 1.0.2-3 codebase. It is a work in progress.

To build livecd:

1/ Minimal install of ubuntu server (working with 16.04, can be on physical hardware or VM). 

2/ Enable root account "sudo psswd" and then login as root.

3/ Install git, build-essential, autoconf, autogen, xorg, openbox, partclone, parted. 

4/ Clone this git repository. 

5/ Run make to create .deb file. 

6/ Install .deb file. (dpkg -i [filename].deb && apt-get -f install)

7/ Install and run "PinguyBuilder" with the "dist" option, or use one of the other remastersys continuations in order to create a livecd of your current system.
