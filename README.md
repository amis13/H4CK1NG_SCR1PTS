# H4CK1NG_SCR1PTS
Conjunto de scripts y herramientas útiles para hacking.

Clona el repositorio:

``bash
git clone https://github.com/amis13/H4CK1NG_SCR1PTS.git
``
## Find OS
Herramienta para identificar sistemas operativos.

Dale permisos de ejecución y linkealo para poder llamarlo desde cualquier lugar:
<!-- Pon tu ruta absoluta en RUTA_ABSOLUTA (ej. /home/amis13/H4CK1NG_SCR1PTS/Find OS/find_os.sh) -->

``bash
chmod +x "Find_OS/find_os.sh" && \
ln -s "/RUTA_ABSOLUTA/find_os.sh /usr/local/bin/find_os"
``
Ejecutar:

``bash
find_os
``

### Grepea para simplificar
Por ejemplo para buscar maquinas Windows:
``bash
findo_os | grep "Windows"
``