# Entornos de desarrollo EV3

## TEMA 6: Diseño y realización de pruebas

### 1. Introducción a las pruebas

- **Importancia:** Las pruebas son cruciales y pueden representar hasta el 50% del esfuerzo en el desarrollo de software. Para programas críticos, este porcentaje puede ser incluso mayor.
- **Objetivos:** Prevenir plazos y presupuestos incumplidos, mejorar la calidad del software, y evitar la pérdida de clientes.

### 2. Conceptos y Tipos de Pruebas

- **Pruebas de caja negra y blanca:** Según si se conoce el código fuente o no.
- **Automatización de pruebas:** Esencial para reducir costos y mejorar la eficacia del proceso de pruebas.
- **Fases del ciclo de vida en pruebas:**
  - **Pruebas Unitarias**
    - **Definición:** Se aplican a un componente del software, como una función, una clase o una librería. En general, se habla de una clase como componente de software.
    - **Objetivo:** Verificar el correcto funcionamiento de cada componente individualmente antes de integrarlo con otros.
  - **Pruebas de Integración**
    - **Definición:** Consiste en construir el sistema a partir de los distintos componentes y probarlo con todos integrados. Estas pruebas se realizan progresivamente y se centran en la coherencia semántica entre los diferentes módulos.
    - **Objetivo:** Asegurar que los módulos interactúan correctamente entre sí y funcionan como un sistema integrado.
  - **Pruebas de Sistema**
    - **Definición:** Una vez que el software ha sido validado, se prueba en conjunto con el resto del sistema, incluyendo elementos mecánicos y interfaces electrónicas, si los hubiera.
    - **Objetivo:** Verificar que el software integrado funciona adecuadamente dentro del sistema completo, incluyendo la gestión de la seguridad, el rendimiento bajo cargas de trabajo significativas y la recuperación del sistema ante fallos .
  - **Pruebas de Aceptación**
    - **Definición:** Son pruebas finales realizadas por los usuarios o clientes para verificar si el sistema cumple con los requisitos y si es aceptable para su entrega. Se distinguen entre pruebas alfa, realizadas con personal de desarrollo, y pruebas beta, llevadas a cabo por usuarios después de recibir una versión casi final del producto.
    - **Objetivo:** Confirmar que el sistema cumple con las expectativas del cliente y está listo para su implementación y uso en producción .

Estas descripciones están extraídas directamente del documento y reflejan con precisión el contenido específico sobre las diferentes fases de prueba mencionadas en el PDF.

### 3. Procedimientos y casos de prueba

- **Definición de caso de prueba:** Conjunto de entradas, condiciones de ejecución y resultados esperados.
- **Cobertura:** Se refiere al grado en que los componentes del software son evaluados por las pruebas.
- **Clases de equivalencia y valores límite:** Técnicas para definir y optimizar casos de prueba.

## 4. Planificación y Estrategias de Pruebas

- **Plan de pruebas:** Documento que detalla el enfoque, los recursos, y las actividades de prueba.
- **Estrategias de prueba:** Incluye la realización de pruebas de caja negra y caja blanca, con una cobertura adecuada y atención a errores potenciales.

## 5. Automatización de Pruebas

- **Beneficios:** Reduce la carga de trabajo manual y mejora la consistencia de las pruebas.
- **Herramientas de pruebas unitarias y de interfaz de usuario:** Como JUnit y NUnit para pruebas de código, y herramientas de UI para pruebas de interfaz.

>Es muy importante una planificación meticulosa y el uso de técnicas avanzadas en el diseño y ejecución de pruebas en el desarrollo para garantizar la calidad y funcionalidad del software.

## TEMA 7: Documentación

### 1. Introducción

- **Importancia de la documentación:** La documentación del código es fundamental para entender el funcionamiento del código, facilitar la detección de errores y su mantenimiento posterior, especialmente cuando el mantenimiento lo realizan personas distintas a las que escribieron el código original.

### 2. Normas de Estilo

- **Organización del código fuente:** Incluye consejos sobre la organización de clases y archivos, uso de la indentación, manejo de espacios y líneas en blanco, y recomendaciones sobre el uso de comentarios y llaves.

- **Declaraciones y Convenciones de Nombres:** Directrices para la declaración de variables y el estilo de nombres en diferentes elementos del código, como clases, interfaces, campos, métodos y propiedades.

- **Buenas prácticas de programación:** Incluye consejos como declarar campos como privados, evitar el uso de `goto`, mantener un máximo de 4 niveles de anidamiento, y reutilizar bibliotecas existentes.

### 3. Uso de Comentarios

- **Propósitos de los comentarios:** Explicar el objetivo de las sentencias y proporcionar información sobre la función de métodos o clases, sin entrar en detalles de implementación.

### 4. Documentación Automatizada del Código

- **Herramientas de Documentación:** Introduce herramientas como JavaDoc para Java y técnicas para documentar código en .Net usando comentarios especiales que pueden ser procesados para generar documentación externa.

- **Etiquetas XML en .Net:** Descripción de cómo usar etiquetas XML en comentarios para generar documentación, con detalles sobre etiquetas específicas como `<summary>`, `<remarks>`, `<param>`, `<returns>`, y otras.

>Mejorar la legibilidad y el mantenimiento del código mediante una documentación adecuada y el uso de estándares de codificación coherentes ayuda a otros desarrolladores a comprender y trabajar con el código, y además facilita la gestión de futuras actualizaciones y correcciones.

## TEMA 8: Refactorización

### 1. Introducción a la Refactorización:

- **Concepto:** Refactorizar es modificar la estructura interna del código para mejorarlo, sin cambiar su comportamiento externo. Es fundamental en metodologías ágiles y se enfoca en mantener el código simple y bien estructurado.

### 2. Razones para Refactorizar

- **Calidad:** Mejora la legibilidad y estructura del código.
- **Eficiencia:** Simplifica el diseño y reduce la duplicación, facilitando futuras modificaciones.
- **Evitar reescritura:** A menudo es más eficiente mejorar el código existente que comenzar de cero.

### 3. Dificultades en la Refactorización

- **El Factor Humano:** La presión y las expectativas pueden afectar la calidad del trabajo. Se recomienda mantener refactorizaciones controladas y bien justificadas.
- **Trabajo en equipo:** Requiere buena comunicación para evitar conflictos y duplicación de esfuerzos.
- **Refactorización a posteriori:** Se refiere a las modificaciones estructurales hechas después de que el código ya está en uso, lo que puede complicar el proceso.

### 4. Implantación de la Refactorización

- **Pasos para la implementación:** Incluye escribir pruebas unitarias y funcionales, usar herramientas especializadas, y educar sobre patrones de refactorización.
- **Refactorización continua:** Integrar la refactorización como una práctica habitual tras añadir nuevas funcionalidades para mantener el diseño óptimo.

### 5. Refactorización y Pruebas Unitarias

- **Importancia de las pruebas:** Las pruebas automatizadas son cruciales para asegurar que las refactorizaciones no introduzcan errores.
- **Patrones de refactorización usuales:** Incluyen la eliminación de código duplicado, simplificación de métodos largos y clases grandes, y ajuste de listas de parámetros extensas.

### 6. Herramientas de Refactorización en IDEs como Visual Studio/IntelliJ IDEA

- **Funciones comunes:** Tabulación, renombrar, encapsular campo, extraer método, y reorganizar parámetros.
- **Uso de interfaces y extracción de interfaces:** Permiten una estructura más organizada y modular del código.

>La refactorización es una técnica esencial para mantener la calidad del código en proyectos de desarrollo, especialmente bajo metodologías ágiles, enfatizando la necesidad de una implementación cuidadosa para maximizar los beneficios mientras se minimizan los riesgos y las interrupciones del trabajo en equipo.
