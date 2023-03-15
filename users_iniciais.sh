#!/bin/bash

echo "Criando diretorios..."

mkdir /public /adm /ven /sec

echo "Criando grupos de usuarios..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Atualizando permissoes..."

chown root:root /public
chown root:GRP_ADM /adm
chown root:GRP_VEN /adm
chown root:GRP_SEC /sec

chmod 777 /public
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Criando usuarios..."

useradd carlos -s /bin/bash -m -p $(openssl passwd -crypt senhapadrao) -G GRP_ADM
useradd maria -s /bin/bash -m $(openssl passwd -crypt senhapadrao)  -G GRP_ADM
useradd joao -s /bin/bash -m $(openssl passwd -crypt senhapadrao)  -G GRP_ADM

useradd debora -s /bin/bash -m $(openssl passwd -crypt senhapadrao)  -G GRP_VEN
useradd sebastiana -s /bin/bash -m $(openssl passwd -crypt senhapadrao)  -G GRP_VEN
useradd roberto -s /bin/bash -m $(openssl passwd -crypt senhapadrao)  -G GRP_VEN

useradd josefina -s /bin/bash -m $(openssl passwd -crypt senhapadrao)  -G GRP_SEC
useradd amanda -s /bin/bash -m $(openssl passwd -crypt senhapadrao)  -G GRP_SEC
useradd rogerio -s /bin/bash -m $(openssl passwd -crypt senhapadrao)  -G GRP_SEC

echo "Fim da execucao!"
