echo

set DATA=%date:~0,2%%date:~3,2%%date:~6,4%

robocopy H: \\10.11.22.174\Completo$\%DATA% /COPYALL /ZB /MIR /XA:SH /r:0 /w:0 /NP /log:C:\Users\name.user\Desktop\Relatorio\Backup-Completo-%DATA%.txt

Exit