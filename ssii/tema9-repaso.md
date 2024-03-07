# SSII - TEMA 9. Repaso 2024-02-13

## Introducción

### Ediciones de Windows 10

* **Usuario final y empresas:** Home, Pro, Enterprise, Education
* **Ediciones móviles:** Mobile, Mobile Enterpirse

### Instalación de Windows

> [!TIP]
> ¿Que pide? ¿Que no pide? Acordarse de la hecho en la prática. Búsqueda de actualizaciones. Cuenta sin conexión o cuenta Microsoft, Activación de Windows,...

* Recopilar informa
  * Idioma / Formato de hora y moneda / Idioma de teclado.
  * Activar Windows con nº de serie  (Opcional).
  * Seleccionar la variante del sistema operativo: Home, Pro, Education,...
  * Aceptar los términos de la licencia de uso.
  * Elegir tipo de instalación: Actualización / Personalizada ('limpia').
  * Elegir lugar de instalación: crear partición, formatear,...
* Instalar Windows.
* Conceptos básicos:
  * Elegir región.
  * Elegir distribución de teclado.
  * Añadir una 2ª distribución de teclado (Opcional).
* Cuenta:
  * Configurar para uso personal o de una organización.
  * Iniciar sesión con Microsoft / Experiencia Limitada.
  * Crear cuenta: Insertar nombre, Crear contraseña, Preguntas de seguridad.
* Servicios (Todo opcional):
  * Importar datos de otro explorador.
  * Permitir uso de la ubicación.
  * Encontrar mi dispositivo.
  * Enviar datos de diagnóstico a Microsoft.
  * Mejorar las entradas manuscritas y la escritura.
  * Obtener experiencias personalizadas gracias a los datos de diagnóstico.
  * Permitir que las aplicaciones usen el id. de publicidad.
  * Personalizar experiencia: Entretenimiento, Juegos, Escuela, Creatividad,...
  * Activar Cortana.

### Instalación de drivers

* Sobre todo, los controladores de la **tarjeta gráfica** son esenciales para conseguir el máximo rendimiento.
* **VirtualBox:** Instalar las **Guest Additions.**

### Actualizaciones de Windows

> [!TIP]
> ¿Es bueno?/¿No es bueno?

* Windows 7, Windows 8... era común el término **Service Pack**
* Windows 10 el sistema se actualiza de forma automática con **Windows Update.**
* La activación de actualizaciones automáticas hará a nuestro sistema más seguro.

### Windows Defender

Antivirus

* Software de protección contra **spyware** y **programas no deseados.**
* Observación del rendimiento.
* Protección de red.
* Control de aplicaciones y navegador.
* Control parental.

### Windows Firewall

Cortafuegos : Muro para bloquear conexiones no deseadas.

* **Redes privadas:** Conocemos los equipos conectados (casa).
* **Redes públcias:** No conocemos quien más está conectado (cafeteria).

## Sistema de archivos

### Sistemas de archivos

|                                         | FAT16 | FAT32 | NTFS                     | ExFAT             |
|-----------------------------------------|-------|-------|--------------------------|-------------------|
| Tamaño máximo de partición              | 4GB   | 2TB   | 2<sup>32</sup> clústeres | -                 |
| Número máximo de archivos por partición | -     | -     | 2<sup>32</sup> - 1       | -                 |
| Tamaño máximo de fichero                | 2GB   | 4GB   | 16TB                     | 16 EB<sup>*</sup> |
| Longitud másima del nombre del archivo  | -     | -     | 255 carácteres           | -                 |

<sup>*</sup> 1 EB = 1.000.000.000 GB

### Operaciones con unidades

* **A:** Primera unidad de diskette
* **B:** Segunda unidad de diskette
* **C:** Normalmente, la primera partición del disco. Instalación de Windows.
* **D:** hasta **Z:** Otras particiones de disco, otros discos, SSD, CD,...

### Formateo

Al formatear una unidad estamos restableciédola, asignando un sistema de archovos (FAT32, NTFS,...) al tiempo que **borramos todos los datos.**

El elegir la opción de **formateo rápido** NO escanea el disco en busca de errores.

### Escanear la unidad en busca de errores

Esta opción comprobará si hay errores del sistema de archo en la unidad.

### Liberador de espacio

> [!TIP]
> ¿Para que vale? ¿Vale para algo?

Esta utilidad nos permitirá eliminar archovos que están opupando espacio en nuestro disco y podrían ser eliminados:

* Temporales de Internet
* Papelera de reciclaje
* Temporales del sistema
* Miniaturas de imágenes
* Actializaciones, etc.

### Desfragmentador

Cuando comenzamos a **borrar archivos** del disco duro se crean **huecos** que se rellenan con otros ficheros.

![Esquema que muestra como se desfragmenta un disco](img/defrag.gif)

Después de mucho tiempo escribiendo y borrando, los archivos que se creen nuevos **no estárán colocados de forma secuencial**, sino que estarán repartidos por todo el disco duro.

Esto provoca una **perdida de rendimiento** ya que el cabezal tiene que estar moviéndose mucho para poder leer todos los **datos fragmentados.**

> [!IMPORTANT]
> Solo tiene sentido en DISCOS DURO, no en memoria electrónica como los SSD.

## Intérprete de commandos

* Directorio actual
* Rutas absolutas y rutas relativas
* Comodines
* Comandos.
* Ayuda en comandos.
* DIR - Listar un directorio.
* CD - Cambiar de directorio.
* MD - Crea un directorio.
* RD - Elimina un directorio.
* DEL - Elimina ficheros.
* TREE - Muestra los directorio como un árbol.
* COPY - Copia ficheros.
* MOVE - Mueve ficheros.
* XCOPY - Copia árboles de archivos y directorios.
* REN - Cambia el nombre de un fichero o directorio.
* TIME - Muestra y permite cambiar la hora.
* DATE - Muestre y permite cambiar la fecha.
* ATTRIB - Atributos de los ficheros.
* TYPE - Mostrar archivo en pantalla.
* MORE - Mostrar archivo en pantalla.
* FORMAT - Formatea una unidad eliminando todo su contenido.
* CHKDSK - Comprueba el disco y muestra un informe de estado.
* VOL - Muestra la etiqueta de un disco.
* VER - Muestra la versión del sistema operativo.
* CLS - Limpia la pantalla.

## Cuentas de usuario

Mantienen una colección de información relacionada con una **persona concreta** que accede al sistema operativo.

La cuenta de usuario **identifica:**

* Los ficheros y direcctorios que esa persona puede **leer o modificar.**
* Los **recursos** que puede utilizar.
* Los **cambios** que puede llevar a cabo.
* Sus **preferencias** (fondo de escritorio, aspecto de las ventanas, etc.)

### Tipos de cuentas de usuario

En función del **nivel de control:**

* Usuario Estándar
* Usuario Administrador

En función a la **afinidad:**

* Familia
* Otros usuarios

## Usuarios

* Creación de usuarios
* Ceación de grupos

### Seguridad local en los recursos

* Asignar permisos.
* Diferencias entre asignar permisos a ficheros o a carpetas.

| Permisos | Sobre fichero | Sobre directorio |
|---|---|---|
| Lectura | Ver el fichero y tener acceso al contenido | Entrar y listar el contenido de la carpeta |
| Escritura | Escribir en el fichero | Agregar nuevos ficheros y subcarpetas |
| Lectura y ejecución | Similar al de lectura, pero con el añadido de ejecución | Similar al de lectura, además de poder ejecutar ficheros |
| Modificar | Leer, escribir y eliminar el fichero | Leer y escribir sus ficheros y subcarpetas, así como eliminarla |
| Mostrar el contenido de la carpeta | - | Ver y listar ficheros y directorios, además de ejecutar ficheros |
| Control total | Leer, escribir, modificar y eliminar el fichero | Leer, escribir, modificar y eliminar ficheros y subcarpetas |

## Administración avanzada

### Perfiles

#### Local

Se crea cuando el usuario inicia por primera vez sesión en el equipo.

Se almacena en el equipo local

Se modifica en función de los cambios que el usuario realice en su sesión.

> [!IMPORTANT]
>Inconveniente: El usuario siempre tiene que usar el mismo equipo.

#### Móvil

Orientado al uso de redes y centralización en un equipo servidor.

Se almacena en una carpeta compartida en el ordenador cental de la red.

>[!IMPORTANT]
>Ventaja: Un usuario puede usar cualquier equipo de la red y en todos verá las mismas características o configuración

#### Obligatorio

Es similar al perfil móvil pero al cerrar la sesión las modificaciones no se enviar al servidor con lo que desaparecen. Cuando el usuario vuelve a iniciar sesión verá su entorno tal y como estaba el primer día que inició sesión.

## Administración de equipos

### Servicios y aplicaciones

Un servicio puede estar:

* Inciado
* Pausado
* Detenido

Tipo de inicio del servicio:

* Automático
* Manual
* Deshabilitado

Para cambiar el estado de un servicio solo tenemos que hacer clic sobre él con botón derecho del ratón y seleccionar el nuevo estado.

O usar los botones de parada, inicio y pausa que hay en la barra de herramientas de la consola.

## Software

### Instalación

### Gestión del software
