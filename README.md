# Some scripts for Merlin C2 server
(see https://github.com/Ne0nd0g/merlin to download C2 server)

Some quick and dirty scripts to use on Windows machines in conjuction with Merlin C2 server

Note: These scripts in their unmodified form require that the ```merlin.dll``` file is hardcoded with the the C2 server's URL.

(see https://github.com/Ne0nd0g/merlin/wiki/Agent-Execution-Quick-Start-Guide#recompile-dll for more information)

They also require a remote webserver and webdav server to host the scripts and ```merlin.dll```, respectively.

(see https://www.digitalocean.com/community/tutorials/how-to-configure-webdav-access-with-apache-on-ubuntu-14-04 to learn how to setup a webdav server with Apache HTTP Server)

# svhstp.bat
```svhstp.bat``` runs the ```merlin.dll``` on the Windows machine and sets up persistence so that every time the user logs in, the machine connects to the C2 server.  This is done by creating a ```.lnk``` in the ```startup``` directory that links to ```svchost.vbs``` that in turn silently runs ```svchost.bat```.

Set ```<ip_address>``` to the IP address of the webserver/webdav server hosting the scripts and ```merlin.dll```

# svchost.bat
```svchost.bat``` runs ```merlin.dll``` in memory.  Before running ```merlin.dll```, it first checks that the webdav server can be located by the machine.

Set ```<ip_address>``` to the IP address of the webdav server.

# svchost.vbs
```svchost.vbs``` silently runs ```svchost.bat``` when the user logs in.

# cleanup.bat
```cleanup.bat``` removes any of the aforementioned scripts from the machine and deletes persistence.
