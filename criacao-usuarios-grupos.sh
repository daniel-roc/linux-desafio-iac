#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
echo "Diretório 'publico' criado."
mkdir /adm
echo "Diretório 'adm' criado." 
mkdir /ven
echo "Diretório 'ven' criado."
mkdir /sec
echo "Diretório 'sec' criado."

echo "Diretórios criados!"

echo "Criando grupos de usuários..."

groupadd GRP_ADM
echo "Grupo 'GRP_ADM' criado."
groupadd GRP_VEN
echo "Grupo 'GRP_VEN' criado."
groupadd GRP_SEC
echo "Grupo 'GRP_SEC' criado."

echo "Criando usuários e adicionando aos grupos"

useradd carlos -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Script finalizado com sucesso!"
