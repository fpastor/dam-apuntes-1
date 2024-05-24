-- -----------------------------------------------------------------------------
--  PLANTILLA CURSOR SQL SERVER
-- -----------------------------------------------------------------------------

DECLARE NOMBRE_CURSOR CURSOR FOR 

-- Sentencia select
SELECT *
FROM TABLA
 
-- Apertura del cursor
OPEN NOMBRE_CURSOR 
 
-- Lectura de la primera fila del cursor
FETCH NEXT FROM NOMBRE_CURSOR INTO @campo1, @campo2,  @campo3
 
WHILE (@@FETCH_STATUS = 0) 
    BEGIN 
    -- Acciones a realizar para cada registro

    -- Lectura de la siguiente fila del cursor 
    FETCH NEXT FROM NOMBRE_CURSOR INTO @campo1, @campo2,  @campo3 
END
 
-- Cierra el cursor
CLOSE NOMBRE_CURSOR 
 
-- Libera los recursos del cursor (Memoria)
DEALLOCATE NOMBRE_CURSOR 

-- -----------------------------------------------------------------------------
--  PLANTILLA CURSOR RECURSIVO
-- -----------------------------------------------------------------------------

DECLARE @cont INT = 1 -- ! OJO: Si utilizamos cursor recursuvo empiezan en UNO.
DECLARE @max INT
DECLARE @codCliente INT, @nombre_cliente VARCHAR(50)

-- Obtenemos el máximo en función del número de elementos de la tabla
SET @max = (SELECT COUNT(1) FROM CLIENTES)

WHILE @cont < @max -- ! OJO: Hay que poner "menor que"
BEGIN
    SELECT TOP(1) @codCliente = codCliente,
                  @nombre_cliente = nombre_cliente
      FROM CLIENTES
     WHERE codProducto > @codProducto
	 ORDER BY codCliente ASC

	PRINT CONCAT(@codCliente, ': ', @nombre_cliente)
	SET @cont += 1
END

-- -----------------------------------------------------------------------------
--  CURSOR CON OFFSET/FETCH
-- -----------------------------------------------------------------------------

DECLARE @cont INT = 0 -- ! OJO: Si utilizamos OFFSET empiezan en CERO.
DECLARE @max INT
DECLARE @codCliente INT, @nombre_cliente VARCHAR(50)

-- Obtenemos el máximo en función del número de elementos de la tabla
SET @max = (SELECT COUNT(1) FROM CLIENTES)

WHILE @cont <= @max
BEGIN
	SELECT @codCliente = codCliente,
	       @nombre_cliente = nombre_cliente
	  FROM CLIENTES
	 ORDER BY codCliente ASC
	OFFSET @cont ROWS
	FETCH NEXT 1 ROWS ONLY

	PRINT CONCAT(@codCliente, ': ', @nombre_cliente)
	SET @cont += 1
END
