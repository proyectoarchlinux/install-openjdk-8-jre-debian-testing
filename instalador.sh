#!/bin/
# Muestra el menu general
_menu()
{
  echo
  echo "Selecciona una opcion"
  echo
  echo "1) Instalar Java 8 X64"
  echo "2) Instalar Java 8 X32"
  echo "3) Desinstalar Java 8"
  echo "4) Version de Java actual"
  echo
  echo "9) Salir"
  echo
  echo -n "Indica una opcion:"
}

# Muestra la opción seleccionada del menu
_mostrarResultado()
{
  clear
  echo ""
  echo "Instalando Java..." & echo & sh install64.sh
  echo ""
}
_mostrarResultado2()
{
  clear
  echo ""
  echo "Instalando Java..." & echo & sh install32.sh
  echo ""
}
_mostrarResultado3()
{
  clear
  echo ""
  echo "Desinstalando Java..." & echo & sudo apt purge openjdk-8-jre openjdk-8-jre-headless && sudo apt autoremove
  echo ""
}
_mostrarResultado4()
{
  clear
  echo ""
  echo "Tu version de Java es: " & echo & java -version
  echo ""
}
# Opción por defecto
opc="0"

# Bucle mientras la opción indicada sea diferente de 9 (salir)
until [ "$opc" -eq "9" ];
do
    case $opc in
      1)
        _mostrarResultado $opc
        _menu
        ;;
      2)
        _mostrarResultado2 $opc
        _menu
        ;;
      3)
        _mostrarResultado3 $opc
        _menu
        ;;
	4)
        _mostrarResultado4 $opc
        _menu
        ;;
      *)
        # Esta opcion se ejecuta si no es inguna de las anteriores
        clear
        _menu
        ;;
      esac
      read opc
  done
