### In order to use the PSEXEC for execution of commands on remote machine we need to do following setup:

```sh
ssh <user>@<hostname>

# add pemissions
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\system /v LocalAccountTokenFilterP
olicy /t REG_DWORD /d 1 /f

# add firewall rule for the psexec port
netsh advfirewall firewall add rule dir=in action=allow protocol=TCP localport=445 name="Allow_TCP
-445-For-PSEXEC"
```

More info:
1. https://stackoverflow.com/questions/828432/psexec-access-denied-errors
2. https://stackoverflow.com/questions/18388381/make-sure-that-the-default-admin-share-is-enable-on-servername
