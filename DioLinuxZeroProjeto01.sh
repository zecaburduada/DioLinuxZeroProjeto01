#!/bin/bash

echo "Diretírios"

mkdir/ publica
mkdir/ adm
mkdir/ ven
mkdir/ sec

echo "Grupos de Usuários"

groupadd GRP_ADM
grouapp GRP_VEN
groupadd GRP_SEC

echo "Criação de usuários e Adicionando eles aos Grupos"

useradd Userario01 -m -s /bin/bash -p $(openss1 passwd -crypt Senha1234) -G GRP_ADM
useradd Userario02 -m -s /bin/bash -p $(openss1 passwd -crypt Senha1234) -G GRP_ADM
useradd Userario03 -m -s /bin/bash -p $(openss1 passwd -crypt Senha1234) -G GRP_ADM

useradd Userario04 -m -s /bin/bash -p $(openss1 passwd -crypt Senha1234) -G GRP_VEN
useradd Userario05 -m -s /bin/bash -p $(openss1 passwd -crypt Senha1234) -G GRP_VEN
useradd Userario06 -m -s /bin/bash -p $(openss1 passwd -crypt Senha1234) -G GRP_VEN

useradd Userario07 -m -s /bin/bash -p $(openss1 passwd -crypt Senha1234) -G GRP_SEC
useradd Userario08 -m -s /bin/bash -p $(openss1 passwd -crypt Senha1234) -G GRP_SEC
useradd Userario09 -m -s /bin/bash -p $(openss1 passwd -crypt Senha1234) -G GRP_SEC

echo "Permissões"

chown root:GRP_ADM /adm
chown root:GRP_SALES /ven
chown root:GRP_CYSEC /sec

chmod 777/publica
chmod 770/adm
chmod 770/ven
chmod 770/sec

echo "Feito"
