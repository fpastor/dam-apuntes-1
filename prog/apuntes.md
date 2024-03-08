# Programación

## Introducción

### Tipos de datos

> 14/09/2023

| Tipo de datos | Nombre                     |
|---------------|----------------------------|
| enteros       | ``integer``  ``int``       |
| real          | ``double`` / ~~``float``~~ |
| booleanos     | ``bool``                   |
| cadenas       | ``string``                 |
| carácteres    | ``char``                   |
|               | ``enum``                   |

```csharp
class Person
{
    ...
}
```

|        |           |         |
|--------|-----------|---------|
| ``if`` | ``while`` | ``for`` |

> 15/09/2023

app / lib / fw / "lo-que-sea"

classes (...normalmente...):

* Objetos ?
* Funciones ?

---

* Atributos
* Propiedades
* __Funciones__

### Funciones

| Instrucciones            |                                     |
|--------------------------|-------------------------------------|
| Declaración de variables | ``int a;``<br>``string b;``         |
| Asignaciones             | ``a = 7;``<br>``a = 5 + 3;``        |
| Condicionales            | ``if (condición) { } [else { } ]``  |
| Bucles                   | ``while ... for``                   |
| Rupturas                 | ``break ... continue``              |
| Retornos                 | ``return``                          |
| Invocaciones             | ``clase.funcion(p1, p2,...);``      |

---

Función que revibe 2 enteros y que devuelve la suma:

```csharp
public class Functions
{
    {
        public static int SumarNumeros (int n1, int n2)
        {
            return n1 + n2;
        }
    }
}
```

La misma función que suma dos enteros, pero con mas lineas: declara una variable, hace la suma de los dos valores y lo asigna a la variable y después devuelve el valor de la variable. Funciona igual, pero es menos eficiente.

```csharp
public class Functions
{
    {
        public static int SumarNumeros (int n1, int n2)
        {
            int result;
            result n1 + n2;
            return result;
        }
    }
}
```

#### Ejemplos de instrucciones en una función

```csharp
public class Functions
{
    public static int Main (string arg[])
    {
        int a, b;
        a = 1;
        b = 2;
        int r1, r2;
        r1 = Functions.SumarNumeros (a, b);
        Console.WriteLine(r1); // POR PANTALLA: 3
        r2 = Functions.SumarNumeros (a+1, b*2);
        Console.WriteLine(r2); // POR PANTALLA: 6
        r1 = 5 - Functions.SumarNumeros (-a, 7+b);
        Console.WriteLine(r1); // POR PANTALLA: -3
        int r3;
        r3 = Functions.SumarNumeros (a -3, Functions.SumarNumeros (-1.b)) - Functions.SumarNumeros(2, Functions.SumarNumeros(a*a, b*8));
        Console.WriteLine(r4); // POR PANTALLA: -8
    }
}
```

#### Función que recibe dos enteros y devuelve el mayor de los dos

```csharp
public class Functions
{
    public static int ObtenerMayor (int value1, int value2)
    {
        if (value1 > value 2)
        {
            return value1;
        }
        else
        {
            return value2;
        }
    }
}
```

Un cuerpo es el fragmento de código contenido entre dos llaves. __Si un cuerpo solamente tiene una instrucción no se ponen las llaves:__

```csharp
public class Functions
{
    public static int ObtenerMayor (int value1, int value2)
    {
        if (value1 > value 2)
            return value1;
        else
            return value2;
    }
}
```

Opción de la misma función con un solo return (para los muy puristas).

```csharp
public class Functions
{
    public static int ObtenerMayor (int value1, int value2)
    {
        int result;
        if (value1 > value 2)
            result = value1;
        else
            result = value2;
        return result;
    }
}
```
