<img width="1856" height="619" alt="Eduacation made easy" src="https://github.com/user-attachments/assets/e3c77a9c-7b8e-46cc-85cf-7d4123f9f52c" />

___

# Air Linux.md

## Conceptos clave

### Que es Air Linux

Air Linux es un script hecho en bash para Fedora con el objetivo de convertirla en una distribución educativa. El script cuenta con todas las herramientas y todo automatizado para poder hacerlo en múltiples ordenadores sin dificultad ninguna.

### Por que se llama Air Linux

Este proyecto nace de una idea de ser minimalista pero lo suficientemente completo para un uso diario. Air Linux es un nombre que transmite simplicidad, pero con un significado profundo por detrás. Me transmite relajación, siento que todo va a funcionar...

### Para quien es Air Linux

Todas las escuelas o academias que necesiten una distribucion de Linux en la que sus alumnos/niños esten seguros y controlados. Cuenta con todo el material educativo necesario y todas las herramientas de aprendizaje en el estudio moderno.

### Por qué KDE y XFCE

KDE es un escritorio muy bueno estéticamente y rico en funciones. Es el equilibrio ideal para un centro educativo. XFCE es debido a su ligereza, para ser ejecutados en ordenadores de bajos recursos como puede ser una Raspberry Pi.

### Que diferencia a Air Linux de Fedora 

Air Linux busca acercarse a un entorno educativo, que el centro pueda instalar fácilmente Fedora y que con ejecutar un script tenga cientos de ordenadores funcionando sin la necesidad de pasar trabajo uno a uno. Esa es la principal diferencia a Fedora, solo buscamos una base sólida y moderna.

### Qué NO es Air Linux

No es una distribución para el hogar, para empresas, para administración de instituciones. Es solo para entornos educativos y es por eso que no tiene otro propósito, no nos compremetemos a que si se saca de su objetivo no sea eficaz.

### ¿Por qué Fedora de base?

Fedora es una distribución moderna y lo más importante: rolling release. Actualizaciones cada 6 meses, un equilibrio entre estable y actualizado. Es una base muy sólida para Air Linux.

### ¿Por qué un script y no una distro completa?

Una distro completa es un trabajo que puede llevar años, sin hablar de que requiere mucho trabajo mantenerla, Air Linux tiene que ser una solución fácil de mantener con el tiempo (después de presentarlo pretendo seguir acutalizándolo y mejorándolo).

### ¿Cómo se usa la IA en este proyecto?

Se asegura que mínimo el 95% del código está escrito por un humano (yo, en este caso), lo que está escrito/muy asistido por IA está completamente señalado con un comentario en el script. La IA no ha hecho este trabajo, es una herramienta de colaboración menor.

Las ideas son originales y el código también. El README no está asistido por IA.

Lo único en lo que la IA ha colaborado profundamente es en el logo, no cuento con un buen nivel de diseño de logotipos, es por eso que Gemini con un prompt escrito por un humano hizo este logo:

<img width="1024" height="1024" alt="Gemini_Generated_Image_xt7l1yxt7l1yxt7l" src="https://github.com/user-attachments/assets/88f0e1cd-6462-472a-8088-1786c969298f" />


del que a posteriori se hizo una simplificación hecha por mí, en Inkscape tomando de base ese.






Por último, no soy hablante nativo de Inglés, soy español y mi nivel de inglés no es suficientemente alto como para escribir todo esto, la IA ha trabajado en la traducción de este README y en algunas partes más. El texto original en español está disponible en GitHub igualmente y se puede consultar.
___


<img width="1856" height="629" alt="a complete open source suite" src="https://github.com/user-attachments/assets/1e921988-1509-4827-bb8e-ab477b4aca2a" />


### Conjunto de apps y programas con el que cuenta

- Veyon: Para controlar a los alumnos y facilitar el compartir archivos/enlaces...
- LibreOffice: Suite ofimatica mas que suficiente para el uso que se le dá
- Helium: Navegador principal, viene con uBlock Origin preinstalado.
- Flameshot: Herramienta de capturas de pantalla
- OpenShot: Pequeños proyectos de edición de vídeo
- GIMP: Editor de imagenes
- Krita: Para dibujar
- LMStudio: Modelos de IA locales y de código abierto (pendiente de reemplazar por una alternativa open source)
- VSCodium: Proyectos de programación sin telemetria
- Geogebra: Software matemático y geometrico potente
- Stellarium: Planetario
- Pidgin: Chat entre profesores y alumnos
- Nextcloud: Si el centro cuenta con un servidor hay documentos colaborativos en la nube
- Fastfetch personalizado en el arranque de la termianl

Todo esto se instalaría en el script del que se habla a continuación
___ 
<img width="1856" height="619" alt="the script" src="https://github.com/user-attachments/assets/6c70e9e6-1f1e-4b47-85a8-2e2efe81bb14" />



### post-install.sh

El script es el corazón del proyecto, es lo que convierte Fedora en Air Linux. Está escrito sobre Bash y cuneta con distintas partes:

- Bienvenida
- Actualización sistema/paquetes
- Instalación programas/herramientas
- Personalización del sistema
    - Tema blanco/oscuro
    - Logo barra de tareas
    - Fondo de pantalla acorde al tema
    - Splash de inicio de KDE
- Configuración de usuarios
- Configuración de rEFInd
- Despedida

Cada parte en el script es señalada con su respectivo comentario.

Todos los fondos/iconos/assets del sistema personalizados son descargados directamente del repositorio de GitHub, sin estar subidos a ningún otro sitio.


### Gestor de arranque

Se usara rEFInd como gestor de arranque alternativo al tradicional GRUB, con un tema personalizado y ocultando las opciones no necesarias, dejando solo 3: Inciar sistema, apagar y reiniciar.

### Usuarios

Habrá 2 usuarios: "*admin*" (es admin y no root porque el nombre root puede dar problemas) y "*user*". El primero tendrá una contraseña puesta por el centro la cual el alumno no debe saber. El segundo será el usuario del alumno/a, el que usará. No deberá tener permisos de ningun tipo y no se pedirá la contraseña al encender el ordenador (salvo que el centro así prefiera) y la contraseña en caso de que haga falta deberá ser igual al nombre de usuario.

#### **admin**

- Todos los permisos
- Contraseña puesta por el centro
- El alumno no debe poder acceder fácilmente a este usuario

#### **user**

- Arranque automático sin contraseña
- Apps no necesarias bloqueadas (todas excepto instaladas, explorador de archivos...)



## Cosas a arreglar
[] Mover "Based on Fedora" en los fondos de pantalla porque la barra de tareas los tapa
[] 
v1.1.0
