How to remove Apple system apps
===============================

Helpful procedure if like me you don't want to have all those annoying
applications from Apple. Unfortunately you will have to redo the process
after every update since they will be installed again...

Beware though that the command line use here might be harmful or not secure
for your computer. I don't fully understand what every command
imply, it just do what I want. So use it at your own risks.

Procedure based upon this [thread](https://superuser.com/questions/1490326/how-to-delete-system-apps-in-macos-catalina).

Procedure
---------

Restart in recovery mode.\
Press `Cmd+R` on start until you see the Apple logo.

Disable `csrutil` integrity protection (prevent deletion of system files).
```
csrutil disable
```

Restart and login.\
Make the root file system writable.
```
sudo mount -uw /
```

Remove any unwanted applications, like Stocks.
```
sudo rm -rd /Sytems/Applications/Stocks.app
```

Restart in recovery and activate `csrutil` again.
```
csrutil enable
```

Reboot, login and you're done.\
You can verify that '/' is back to read-only mode.
```
mount | grep ' / '
```

