# Tema 12: Redes de ordenadores

## 1. Introducción a Redes de Ordenadores

- **Definición**: Una red de ordenadores es un conjunto de computadoras que están conectadas entre sí y pueden comunicarse y transmitir información, formando una red.

## 2. Clasificación de Redes

- **Cliente-servidor**: Los servidores ofrecen servicios a los clientes, que los solicitan. Los servidores suelen tener mejores prestaciones dependiendo del servicio que proporcionan.
- **Peer-to-peer (P2P)**: En estas redes, todos los nodos pueden actuar tanto de clientes como de servidores, ofertando y demandando información y recursos simultáneamente.

## 3. Elementos de una Red

- **Hosts**: Son computadoras que actúan como emisores o receptores en la red.
- **Medio**: Es el canal por donde se transmiten las señales (eléctricas, luminosas, acústicas, etc.) entre emisor y receptor.
- **Transductor**: Dispositivo que convierte la naturaleza de la señal para su transmisión adecuada por el medio físico.

## 4. Tipos de Comunicaciones

- **Simplex**: Solo hay un emisor y un receptor, y la comunicación es unidireccional.
- **Half-duplex**: Permite comunicación bidireccional, pero no al mismo tiempo. Cada extremo espera a que el otro termine de enviar o recibir la información.
- **Duplex (Full-duplex)**: Permite comunicación bidireccional simultánea, donde ambos extremos pueden enviar y recibir información al mismo tiempo.

## 5. **Topologías de Red**

- **Bus**: Todos los ordenadores están conectados a un mismo medio físico lineal, típicamente utilizando cable coaxial.
- **Anillo**: Los ordenadores están dispuestos en un circuito cerrado o anillo, y la información se transmite en una dirección de nodo a nodo.
- **Estrella**: Todos los nodos están conectados a un nodo central, que gestiona la comunicación entre ellos.
- **Malla**: Cada nodo está conectado directamente a cada otro nodo, proporcionando múltiples rutas para la transmisión de la información.
- **Árbol**: Variante de la topología en estrella, donde los nodos centrales también están conectados entre sí, formando una jerarquía.
- **Mixtas**: Combinaciones de dos o más de las topologías anteriores.

## 6. Modelo de referencia OSI

- **Descripción**: Propuesto por la ISO, divide las funciones de la red en siete capas que van desde el nivel físico hasta la aplicación, facilitando la estandarización e interoperabilidad entre sistemas diferentes.
- **Capas**:
  - **Física**: Maneja la transmisión y recepción de datos crudos a través de un medio físico.
  - **Enlace de datos**: Proporciona transmisión de datos sin errores entre dos nodos conectados directamente.
  - **Red**: Determina cómo se envían los datos a través de la red desde el origen hasta el destino.
  - **Transporte**: Proporciona la transferencia de datos confiable y eficiente entre puntos finales.
  - **Sesión**: Gestiona las sesiones de comunicación entre aplicaciones.
  - **Presentación**: Traduce los datos entre el formato que utiliza la red y el formato que la aplicación puede manejar.
  - **Aplicación**: Proporciona servicios de red a las aplicaciones del usuario.

## 7. Arquitectura TCP/IP

- **Descripción**: Es el conjunto estándar de protocolos usado en Internet e incluye capas de aplicación, transporte, internet y acceso a red.
- **Funciones**:
  - **Acceso a red**: Incluye las funciones de las capas física y de enlace de datos en OSI.
  - **Internet**: Responsable de la dirección IP y el enrutamiento de paquetes.
  - **Transporte**: Maneja la comunicación entre los sistemas finales, como el protocolo TCP para conexiones confiables y UDP para conexiones sin conexión.
  - **Aplicación**: Incluye procesos para aplicaciones específicas de red.

## 8. Protocolo IP

- **Direccionamiento IP***: Incluye unicast, multicast y broadcast, que determinan cómo se direccionan y distribuyen los paquetes de datos.
- **Subnetting y Máscaras de Red**: Permiten la subdivisión de redes IP grandes en subredes más pequeñas para mejorar la gestión y la seguridad.
