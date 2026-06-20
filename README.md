# Air Linux.md

## Conceptos clave

### Que es Air Linux

Air Linux es una distribucion basada en Fedora orientada al ambito educativo. Busca ser simple y dar acercamiento al software libre en las escuelas, cuenta con todos los programas necesarios, con el escritorio KDE para mejor usabilidad y cuenta con una version en XFCE para ordenadores modestos.

### Por que se llama Air Linux

Este proyecto nace de una idea de ser minimalista pero lo suficientemente completo para un uso diario. Air Linux es un nombre que transmite simplicidad, pero con un significado profundo por detras. Me transmite relajacion, siento que todo va a funcionar...

### Para quien es Air Linux

Todas las escuelas, padres o academias que necesiten una distribucion de Linux en la que sus hijos/alumnos/niños esten seguros y controlados. Cuenta con todo el material educativo necesario y todas las herramientas de control parental o por parte del tutor.

### Por que KDE y XFCE

Estos han sido los escritorios elegidos por una razon. KDE es una combinacion de minimalista + rico en funciones. Tiene todo lo que puedas necesitar, y en equipos con unas caracteristicas decentes rinde genial. XFCE fue elegido para ser ejecutado en ordenadores modestos o microordenadores como RaspberryPi, no es lo mejor esteticamente pero no es el objetivo.

### Que hace a Air Linux diferente a Fedora KDE normal

Air Linux busca ser una distribucion diferente pero teniendo una base solida. El hecho de acercarse a los entornos educativos le refuerza debido a que cuenta con todas las herramientas y programas necesarios para ello.

### Conjunto de apps y programas con el que cuenta

- Veyon: Para controlar a los alumnos y facilitar el compartir archivos/enlaces...
- LibreOffice: Suite ofimatica mas que suficiente para el uso que se le da
- Helium: Navegador principal, viene con uBlock Origin preinstalado.
- Flameshot: Herramienta de capturas de pantalla
- OpenShot: Pequeños proyectos de edicion de video
- GIMP: Editor de imagenes
- Krita: Para dibujar
- LMStudio: Modelos de IA locales y de codigo abierto
- VSCodium: Proyectos de programacion sin telemetria
- Geogebra: Software matematico y geometrico potente
- Stellarium: Planetario
- Pidgin: Chat entre profesores y alumnos
- Nextcloud: Si el centro cuenta con un servidor hay documentos colaborativos en la nube 

Todo esto se instalaria en el script del que se habla a continuacion

### post-install.sh

Este script cuenta con la actualizacion total del sistema, instalacion de los programas anteriormente mencionados, y se procederia a la creacion de los usuarios y restriccion de los comandos/aplicaciones y el resto de funciones necesarias para una escuela. Incluye tambien el cambio de logotipo, animaciones y fondo de pantalla.

Este script deberia ejecutarse nada mas acabar la instalacion de Fedora KDE/XFCE y despues debera eliminarse del ordenador correspondiente. El script estara siempre disponible en el repositorio de GitHub.



### Gestor de arranque

Se usara rEFInd como gestor de arranque alternativo al tradicional GRUB, con un tema personalizado y ocultando las opciones no necesarias, dejando solo 3: Inciar sistema, apagar y reiniciar.

### Usuarios

Habra 2 usuarios: "*root*" y "*user*". El primero tendra una contraseña puesta por el centro la cual el alumno no debe saber. El segundo sera el usuario del alumno/a, el que usara. No debera tener permisos de ningun tipo y no se pedira la contraseña al encender el ordenador (salvo que el centro asi prefiera) y la contraseña en caso de que haga falta debera ser igual al nombre de usuario.


### Tareas
- [] Hola
- [x] Hola

