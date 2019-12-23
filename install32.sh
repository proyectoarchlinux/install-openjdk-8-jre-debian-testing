#!/bin/bash

DEPEND="sudo apt-get install ca-certificates-java java-common libpcsclite1"

DEPEND2="sudo apt install libatk-wrapper-java-jni"

DEPEND3="sudo apt --fix-broken install"

WGET="sudo wget http://ftp.debian.org/debian/pool/main/o/openjdk-8/openjdk-8-jre-headless_8u222-b10-1~deb9u1_i386.deb"

WGETJAVA="sudo wget http://ftp.debian.org/debian/pool/main/o/openjdk-8/openjdk-8-jre_8u222-b10-1~deb9u1_i386.deb"

INSTALL="sudo dpkg -i openjdk-8-jre-headless_8u222-b10-1~deb9u1_i386.deb"

INSTALLJAVA="sudo dpkg -i openjdk-8-jre_8u222-b10-1~deb9u1_i386.deb"

QUIT="sudo rm openjdk-8-jre-headless_8u222-b10-1~deb9u1_i386.deb openjdk-8-jre_8u222-b10-1~deb9u1_i386.deb"

echo instalacion...

sleep 1 && echo 3
sleep 1 && echo 2
sleep 1 && echo 1
sleep 1

echo Obteniendo paquetes...
sleep 1

$DEPEND && $DEPEND2 && $DEPEND3

sleep 1
$WGET && $WGETJAVA

sleep 1
echo Instalando paquetes...
sleep 1

$INSTALL && $INSTALLJAVA

ssleep 1
echo Quitando paquetes descargados...
sleep 1
$QUIT
echo
echo

sleep 2 && java -version
