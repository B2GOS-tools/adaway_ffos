#!/bin/bash
echo -e "\n----------------------------------------------"
echo -e "----       AdAway para Firefox OS         ----"
echo -e "----    Script creado por @amirtorrez     ----"
echo -e "----     para la comunidad Vegnuxmod      ----"
echo -e "----------------------------------------------"
echo -e " "
echo -e "  Acciones:"
echo -e "   i = Instalar archivo hosts AdAway"
echo -e "   r = Restaurar archivo hosts por defecto"
echo -e "   s = Salir"
echo -e " "
read -p "?: " ACC;
echo -e " "
if [ "$ACC" = "i" ]; then
	echo -e "Instalando archivo hosts de AdAway..."
	echo -e " "
	./lib/adb.mac remount
	./lib/adb.mac push file/adaway/hosts /system/etc/
	echo -e " "
	echo  Reiniciando dispositivo!!
	./lib/adb.mac reboot
	echo -e " "
fi
if [ "$ACC" = "r" ]; then
	echo -e "Instalando archivo hosts predeterminado..."
	echo -e " "
	./lib/adb.mac remount
	./lib/adb.mac push file/default/hosts /system/etc/
	echo -e " "
	echo  Reiniciando dispositivo!!
	./lib/adb.mac reboot
	echo -e " "
fi
if [ "$ACC" = "s" ]; then
	exit
fi
