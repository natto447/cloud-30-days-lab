# Comandos utilizados – Day 01

## Navegação
```bash
pwd
ls -la
cd /etc

 ## Usuários e permissões
 sudo useradd -m -s /bin/bash servidorlocal
 sudo passwd servidorlocal
sudo usermod -aG sudo servidorlocal
groups servidorlocal
##RESULTADO
servidorlocal@local:~$ groups
servidorlocal

##RESULTADO DE PERMISSÕES
#Permissão 600
servidorlocal@local:~$ ls -l teste.txt
-rw------- 1 servidorlocal servidorlocal 0 jan  2 02:35 teste.txt
servidorlocal@local:~$ ./teste.txt
-bash: ./teste.txt: Permission denied

#Permissão 644
servidorlocal@local:~$ chmod 644 teste.txt
servidorlocal@local:~$ ls -l teste.txt
-rw-r--r-- 1 servidorlocal servidorlocal 0 jan  2 02:35 teste.txt
servidorlocal@local:~$ 
servidorlocal@local:~$ ./teste.txt
-bash: ./teste.txt: Permission denied

#Permissão 755
servidorlocal@local:~$ chmod 755 teste.txt
servidorlocal@local:~$ ls -l teste.txt
-rwxr-xr-x 1 servidorlocal servidorlocal 0 jan  2 02:35 teste.txt
servidorlocal@local:~$ ./teste.txt
servidorlocal@local:~$ ls -l teste.txt
-rwxr-xr-x 1 servidorlocal servidorlocal 0 jan  2 02:35 teste.txt

## SSH 
sudo systemctl status ssh
ip a
ssh local@IP_DO_SERVIDOR

## RESULTADO
PS C:\Users\Natto\OneDrive\Área de Trabalho\cloud-30-days-lab> ssh local@192.168.*.*** 
local@192.168.*.***'s password: 
Welcome to Ubuntu 24.04.3 LTS (GNU/Linux 6.8.0-87-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/pro

 System information as of sex 14 nov 2025 05:48:55 UTC

  System load:    1.95               Temperature:             57.0 C
  Usage of /home: 0.2% of 355.95GB   Processes:               201
  Memory usage:   29%                Users logged in:         0
  Swap usage:     0%                 IPv4 address for enp3s0: 192.168.*.***
 
 
 