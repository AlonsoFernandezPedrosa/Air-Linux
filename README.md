# Air Linux.md

## Conceptos clave

### Que es Air Linux

Air Linux es una distribución basada en Fedora orientada al ámbito educativo. Busca ser simple y dar acercamiento al software libre en las escuelas, cuenta con todos los programas necesarios, con el escritorio KDE para mejor usabilidad y cuenta con una version en XFCE para ordenadores modestos.

### Por que se llama Air Linux

Este proyecto nace de una idea de ser minimalista pero lo suficientemente completo para un uso diario. Air Linux es un nombre que transmite simplicidad, pero con un significado profundo por detrás. Me transmite relajación, siento que todo va a funcionar...

### Para quien es Air Linux

Todas las escuelas, padres o academias que necesiten una distribucion de Linux en la que sus hijos/alumnos/niños esten seguros y controlados. Cuenta con todo el material educativo necesario y todas las herramientas de aprendizaje en el estudio moderno.

### Por qué KDE y XFCE

Estos han sido los escritorios elegidos por una razón. KDE es una combinacion de minimalista + rico en funciones. Tiene todo lo que puedas necesitar, y en equipos con unas caracteristicas decentes rinde genial. XFCE fue elegido para ser ejecutado en ordenadores modestos o microordenadores como RaspberryPi, no es lo mejor esteticamente pero no es el objetivo.

### Que hace a Air Linux diferente a Fedora KDE normal

Air Linux busca ser una distribucion diferente pero teniendo una base solida. El hecho de acercarse a los entornos educativos le refuerza debido a que cuenta con todas las herramientas y programas necesarios para ello.

### Conjunto de apps y programas con el que cuenta

- Veyon: Para controlar a los alumnos y facilitar el compartir archivos/enlaces...
- LibreOffice: Suite ofimatica mas que suficiente para el uso que se le dá
- Helium: Navegador principal, viene con uBlock Origin preinstalado.
- Flameshot: Herramienta de capturas de pantalla
- OpenShot: Pequeños proyectos de edición de vídeo
- GIMP: Editor de imagenes
- Krita: Para dibujar
- LMStudio: Modelos de IA locales y de código abierto
- VSCodium: Proyectos de programación sin telemetria
- Geogebra: Software matemático y geometrico potente
- Stellarium: Planetario
- Pidgin: Chat entre profesores y alumnos
- Nextcloud: Si el centro cuenta con un servidor hay documentos colaborativos en la nube 

Todo esto se instalaría en el script del que se habla a continuación

### post-install.sh

Este script cuenta con la actualización total del sistema, instalación de los programas anteriormente mencionados, y se procederia a la creacion de los usuarios y restriccion de los comandos/aplicaciones y el resto de funciones necesarias para una escuela. Incluye tambien el cambio de logotipo, animaciones y fondo de pantalla.

Este script debería ejecutarse nada mas acabar la instalacion de Fedora KDE/XFCE y despues debera eliminarse del ordenador correspondiente. El script estará siempre disponible en el repositorio de GitHub.


### Gestor de arranque

Se usara rEFInd como gestor de arranque alternativo al tradicional GRUB, con un tema personalizado y ocultando las opciones no necesarias, dejando solo 3: Inciar sistema, apagar y reiniciar.

### Usuarios

Habrá 2 usuarios: "*admin*" (es admin y no root porque el nombre root puede dar problemas) y "*user*". El primero tendrá una contraseña puesta por el centro la cual el alumno no debe saber. El segundo será el usuario del alumno/a, el que usará. No deberá tener permisos de ningun tipo y no se pedirá la contraseña al encender el ordenador (salvo que el centro así prefiera) y la contraseña en caso de que haga falta deberá ser igual al nombre de usuario.


### Tareas
- [x] Tener v0.0.1 (Arranque y script básico)
- [ ] Logo
- [x] Texto Ascii (Neofetch personalizado)
- [ ] Añadir más programas
- [ ] Tener versión XFCE

