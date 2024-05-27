# Repaso EV3

## XML

### ¿Que es XML?

No es un lenguaje. Es un meta-lenguaje con el que podemos definir lenguajes de marcas.

### ¿Qué es un elemento?

Un elemento es el componente semático básico de un documento XML.

Cada elemento esta formado por:

* Etiqueta de inicio: ``<NombreElemento>``
* Contenido
* Etiqueta final: ``</NombreElemento>``

Un documento XMl tendrá un jerarquí de elementos a partir de un **elemento raiz único.**

### ¿Qué es un atributo?

Un atributo es una información complementária asociada a un elemento. Cada elemento puede, no es obligatorio, tener una lista de atributos asociada.

```xml
<NombreElemento atributo1="valor1" atributo2="valor2">Contenido</NombreElemento>
<peso unidad="gramos">5,73</peso>
```

### Tipos de elementos en un XML

#### Vacios

```xml
<beca />
```

#### Solo texto

```xml
<nombre>Chechu</nombre>
```

#### Contienen otros elementos

```xml
<persona>
    <nombre>...
    <apellido>...
    ...
</persona>
```

### ¿Qué es un documento XML "standalone"?

```xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
```

Indica si el documento es **autocontenido.** Es decir, **si funciona por si mismo,** sin depender de otro documento externo.

### ¿Cómo se ponen los comentarios en XML?

```xml
<!-- Esto es un comentario en un documento XML -->
```

### ¿Qué se considera un XML bien formado?

* Los elementos han de estar **adecuadamente anidados.**
* Los **valores de los atributos** tienen que poner **entre comas** simples o dobles
* Todos los elementos tienen que tener una **etiqueta de final o** utilizar la etiqueta de **elemento vacío.**
* El documento tinen que tener un **único elemento raiz.**

## DTD

### ¿Qué es un DTD?

El DTD es un documento que **define formalmente el lenguaje de un XML.** El DTD garantiza que los documentos **sigan una serie de reglas.**

El el primer paso **antes de escribir el documento XML.**

### ¿Es lo mismo que un documento XML este bien formado y que sea válido?

Un documento XML, cuando esta solo (sin DTD) siempre será valido, porque no desobedece las reglas de ningún DTD (Otra cosa será si esta bien formado o no)

Cuando un documento XML esta enlazado a un DTD podrá ser válido si cumple con las reglas del DTD o no. Además podrá estar bien formado o no, ya que esto no depende del DTD.

### Declarar instrucciones DTD

```xml
<!DOCTYPE elemento_raiz [Aquí todo el contenido del DTD]>
```

### Tipos de elementos en un DTD

#### Vacío (Empty)

```xml
<!ELEMENT nombre_elemento EMPTY>
<oferta/> <!-- Válido -->
<oferta>Si</oferta> <!-- NO válido -->
```

#### Texto (#PCDATA)

```xml
<!ELEMENT nombre_elemento (#PCDATA)>
<ciudad>Alicante</ciudad> <!-- Válido -->
```

#### Que contienen otros elementos

##### Secuenciales

```xml
<!ELEMENT mensaje (destinatario, asunto, cuerpo)> <!-- ** VAN EN ESE ORDEN ** -->

<mensaje>
    <destinatario>...</destinatario>
    <asunto>...</asunto>
    <cuerpo>...</cuerpo>
</mensaje>
```

##### Alternativos

```xml
<!ELEMENT mensaje (destinatario | asunto | cuerpo)>

<!-- Opcion 1 -->
<mensaje>
    <destinatario>...</destinatario>
</mensaje>

<!-- Opcion 2 -->
<mensaje>
    <asunto>...</asunto>
</mensaje>

<!-- Opcion 3 -->
<mensaje>
    <cuerpo>...</cuerpo>
</mensaje>
```

>[!IMPORTANT]
>Además se puede añadir **un carácter a la derecha** de cada hijo para saber **cuantas veces tiene que aparecer** dentro de cada padre.

| Carácter     | Nº de veces   |
|--------------|---------------|
| (Ninguno)    | 1 vez         |
| ``*``        | 0 ó mas       |
| ``?``        | 0 ó 1 veces   |
| ``+``        | 1 ó mas veces |

**Por ejemplo...**

| ``<!ELEMENT jugador (`` | ``nombre,`` | ``ap+,`` | ``pos,`` | ``edad?)>`` |
|-------------------------|:-----------:|:--------:|:--------:|:-----------:|
|                         | 1           | 1 o más  | 1        | 0 o más     |

>[!IMPORTANT]
>Hay que fijarse bien dónde se pone el carácter, dentro o fuera del paréntesis, etc...

```xml
<!ELEMENT a (b|c)*>
<!ELEMENT a (b*|c*)>
```

### Declarar atributos en un DTD

```xml
<!ATTLIST nom_elemento nom_atributo [Primer parámetro] [Segundo parámetro]>
```

#### Primer parámetro

##### CDATA

Cualquier cadena de carácteres, sin restricciones.

```xml
<!ELEMENT autor (#PCDATA)>
<!ATTLIST autor pais CDATA>
...

<autor pais="Estados Unidos">Henrry James</autor>
```

##### Enumerados

El contenido queda restringido a una seríe de opciones. Otro valor no será válido.

```xml
<!ELEMENT persona (#PCDATA)>
<!ATTLIST persona sexo (hombre | mujer)>
...

<persona sexo="hombre">Guillermo</persona>
<persona sexo="poco">Bartolo</persona> <!-- NO valido -->
```

#### Segúndo parámetro

##### Required

El atributo es obligatorio.

```xml
<!ATTLIST nom_elemento nom_atributo CDATA (opc1|opc2) #REQUIRED>
```

##### Implied

El atributo es opcional.

```xml
<!ATTLIST nom_elemento nom_atributo CDATA (opc1|opc2) #IMPLIED>
```

##### Valor por defecto

Si no se pone, se entenderá que el atributo tiene este valor.

```xml
<!ATTLIST nom_elemento nom_atributo CDATA (opc1|opc2) "por_defecto">
```

##### Fixed

El atributo siempre tendra ese valor, tanto si se pone como si no. No se le puede dar otro valor.

```xml
<!ATTLIST nom_elemento nom_atributo CDATA (opc1|opc2) #FIXED "valor_fijo">
```

