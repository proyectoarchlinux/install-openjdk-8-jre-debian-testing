#!/bin/bash

WGET="wget http://ftp.debian.org/debian/pool/main/o/openjdk-8/openjdk-8-jre-headless_8u222-b10-1~deb9u1_i386.deb"

WGETJAVA="wget http://ftp.debian.org/debian/pool/main/o/openjdk-8/openjdk-8-jre_8u222-b10-1~deb9u1_i386.deb"

INSTALL="sudo dpkg -i openjdk-8-jre-headless_8u212-b01-1~deb9u1_i386.deb"

INSTALLJAVA="sudo dpkg -i openjdk-8-jre_8u212-b01-1~deb9u1_i386.deb"

echo instalacion...

sleep 1 && echo 3
sleep 1 && echo 2
sleep 1 && echo 1
sleep 1

echo Obteniendo paquetes...
sleep 1

$WGET && $WGETJAVA

sleep 1
echo Instalando paquetes...
sleep 1

$INSTALL && $INSTALLJAVA

sleep 2 && java -version
