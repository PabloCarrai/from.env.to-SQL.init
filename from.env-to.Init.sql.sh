#!/bin/bash
source .env

D=$DB
U=$USER
C=$CLAVE
I=192.168.0.151
CD="CREATE DATABASE $D;"
CUS="CREATE USER $U@localhost IDENTIFIED BY $C;" 
GUP="GRANT ALL ON $D.* to $U@$I IDENTIFIED BY $C WITH GRANT OPTION;"
FI=init.sql

if test -f "$FI"; then
    rm $FI
fi

echo $CD >> init.sql
echo $CUS >> init.sql
echo $GUP >> init.sql
