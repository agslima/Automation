echo

set DATA=%date:~0,2%%date:~3,2%%date:~6,4%

robocopy H: \\10.11.22.174\f$\SHAREDISK\Diario /COPYALL /ZB /e /r:0 /w:0 /NP /log:C:\Users\name.user\Desktop\Relatorio\Backup-Diario-%DATA%.txt


Exit