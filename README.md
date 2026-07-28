
<img width="1856" height="619" alt="Eduacation made easy" src="https://github.com/user-attachments/assets/fe18ff1c-ce8a-4119-9a1a-57f2aa97a794" />


# Air Linux.md

## Conceptos clave

### Que es Air Linux

Air Linux es un script hecho en bash para Fedora con el objetivo de convertirla en una distribución educativa. El script cuenta con todas las herramientas y todo automatizado para poder hacerlo en múltiples ordenadores sin dificultad ninguna.

### Por que se llama Air Linux

Este proyecto nace de una idea de ser minimalista pero lo suficientemente completo para un uso diario. Air Linux es un nombre que transmite simplicidad, pero con un significado profundo por detrás. Me transmite relajación, siento que todo va a funcionar...

### Para quien es Air Linux

Todas las escuelas o academias que necesiten una distribucion de Linux en la que sus alumnos/niños esten seguros y controlados. Cuenta con todo el material educativo necesario y todas las herramientas de aprendizaje en el estudio moderno.

### Por qué KDE y XFCE

Estos han sido los escritorios elegidos por una razón. KDE es una combinacion de minimalista + rico en funciones. Tiene todo lo que puedas necesitar, y en equipos con unas caracteristicas decentes rinde genial. XFCE fue elegido para ser ejecutado en ordenadores modestos o microordenadores como RaspberryPi, no es lo mejor estéticamente pero no es el objetivo.

### Que hace a Air Linux diferente a Fedora KDE normal

Air Linux busca ser una distribucion diferente pero teniendo una base solida. El hecho de acercarse a los entornos educativos le refuerza debido a que cuenta con todas las herramientas y programas necesarios para ello.

<img width="1856" height="629" alt="a complete open source suite" src="https://github.com/user-attachments/assets/af733b74-f9ee-4ec9-8909-5be4cee05d24" />


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
- Fastfetch personalizado en el arranque de la termianl

Todo esto se instalaría en el script del que se habla a continuación

### post-install.sh

El script cuenta con la actualización del sistema y la instalación de los programas. Despues personaliza el sistema con un tema propio basado en Breeze (tanto Dark como White) y otros detalles. Crea los usuarios y restringe las funciones necesarias.

El script debe ser ejecutado al terminar la instalación de Fedora KDE/XFCE y despues deberá ser eliminado del sistema.


### Gestor de arranque

Se usara rEFInd como gestor de arranque alternativo al tradicional GRUB, con un tema personalizado y ocultando las opciones no necesarias, dejando solo 3: Inciar sistema, apagar y reiniciar.

### Usuarios

Habrá 2 usuarios: "*admin*" (es admin y no root porque el nombre root puede dar problemas) y "*user*". El primero tendrá una contraseña puesta por el centro la cual el alumno no debe saber. El segundo será el usuario del alumno/a, el que usará. No deberá tener permisos de ningun tipo y no se pedirá la contraseña al encender el ordenador (salvo que el centro así prefiera) y la contraseña en caso de que haga falta deberá ser igual al nombre de usuario.

v1.1.0
